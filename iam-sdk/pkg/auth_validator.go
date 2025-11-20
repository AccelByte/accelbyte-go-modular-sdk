// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"bytes"
	"crypto/rsa"
	"encoding/base64"
	"encoding/binary"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"math/big"
	"net/http"
	"strings"
	"sync"
	"time"

	"github.com/AccelByte/bloom"
	"github.com/AccelByte/go-jose/jwt"
	"github.com/patrickmn/go-cache"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient/override_role_config_v3"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
)

type AuthTokenValidator interface {
	Initialize() error
	Validate(token string, permission *Permission, namespace *string, userId *string) error
}

type TokenValidator struct {
	sync.RWMutex

	AuthService     OAuth20Service
	RefreshInterval time.Duration

	Filter                *bloom.Filter
	JwkSet                *iamclientmodels.OauthcommonJWKSet
	JwtClaims             JWTClaims
	JwtEncoding           base64.Encoding
	LocalValidationActive bool
	PublicKeys            map[string]*rsa.PublicKey
	RevokedUsers          map[string]time.Time
	Roles                 map[string]*iamclientmodels.ModelRolePermissionResponseV3
	NamespaceContexts     map[string]*NamespaceContext

	rolePermissionCache    *cache.Cache
	namespaceContextsCache *cache.Cache
}

func (v *TokenValidator) Initialize() error {
	if err := v.fetchAll(); err != nil {
		return fmt.Errorf("error initializing validator: %v", err)
	}
	go func() {
		for {
			time.Sleep(v.RefreshInterval)
			if err := v.fetchClientToken(); err != nil {
				fmt.Println(fmt.Errorf("error fetching client token: %v", err).Error())
			}
		}
	}()

	go func() {
		for {
			time.Sleep(v.RefreshInterval)
			if err := v.fetchJWKSet(); err != nil {
				fmt.Println(fmt.Errorf("error fetching JWK set: %v", err).Error())
			}
		}
	}()

	go func() {
		for {
			time.Sleep(v.RefreshInterval)
			if err := v.fetchRevocationList(); err != nil {
				fmt.Println(fmt.Errorf("error fetching revocation list: %v", err))
			}
		}
	}()

	return nil
}

func (v *TokenValidator) Validate(token string, permission *Permission, namespace *string, userId *string) error {
	jsonWebToken, err := jwt.ParseSigned(token)
	if err != nil {
		return err
	}

	if len(jsonWebToken.Headers) == 0 {
		return errors.New("no headers found")
	}

	kid := jsonWebToken.Headers[0].KeyID
	if kid == "" {
		return errors.New("'kid' header not found")
	}

	v.RWMutex.RLock()
	defer v.RWMutex.RUnlock()
	publicKey := v.PublicKeys[kid]
	if publicKey == nil {
		return errors.New("public key not found")
	}

	err = jsonWebToken.Claims(publicKey, &v.JwtClaims)
	if err != nil {
		return err
	}

	if !v.LocalValidationActive {
		input := &o_auth2_0.VerifyTokenV3Params{
			Token: token,
		}
		_, errVerify := v.AuthService.VerifyTokenV3Short(input)
		if errVerify != nil {
			return errVerify
		}
		fmt.Println("token verified")

		if errNamespace := v.hasValidNamespace(v.JwtClaims, namespace); errNamespace != nil {
			return errNamespace
		}

		hasValidPermission, errPermission := v.hasValidPermissions(v.JwtClaims, permission, namespace, userId)
		if !hasValidPermission {
			return fmt.Errorf("insufficient permissions, %v", errPermission)
		}

		return nil
	}

	err = v.JwtClaims.Validate()
	if err != nil {
		return err
	}

	if v.isTokenRevoked(token) {
		return errors.New("token was revoked")
	}

	if v.isUserRevoked(v.JwtClaims.Subject, int64(v.JwtClaims.IssuedAt)) {
		return errors.New("user was revoked")
	}

	if errNamespace := v.hasValidNamespace(v.JwtClaims, namespace); errNamespace != nil {
		return errNamespace
	}

	hasValidPermission, errPermission := v.hasValidPermissions(v.JwtClaims, permission, namespace, userId)
	if !hasValidPermission {
		return fmt.Errorf("insufficient permissions in local validation. %v", errPermission)
	}

	return nil
}

func (v *TokenValidator) convertExponent(e string) (int, error) {
	decodedE, err := v.JwtEncoding.DecodeString(e)
	if err != nil {
		return 0, err
	}

	var bytesE []byte
	if len(bytesE) < 8 { //nolint:mnd
		bytesE = make([]byte, 8-len(decodedE), 8) //nolint:mnd
		bytesE = append(bytesE, decodedE...)
	} else {
		bytesE = decodedE
	}

	readerE := bytes.NewReader(bytesE)

	var uint64E uint64
	err = binary.Read(readerE, binary.BigEndian, &uint64E)
	if err != nil {
		return 0, err
	}

	return int(uint64E), nil
}

func (v *TokenValidator) convertModulus(n string) (*big.Int, error) {
	decodedN, err := v.JwtEncoding.DecodeString(n)
	if err != nil {
		return nil, err
	}

	bigN := big.NewInt(0)
	bigN.SetBytes(decodedN)

	return bigN, nil
}

func (v *TokenValidator) convertToPermission(permission iamclientmodels.AccountcommonPermission) Permission {
	resource := ""
	action := 0

	if permission.Resource != nil {
		resource = *permission.Resource
	}
	if permission.Action != nil {
		action = int(*permission.Action)
	}

	return Permission{
		Resource: resource,
		Action:   action,
	}
}

func (v *TokenValidator) convertToPublicKey(jwkKey *iamclientmodels.OauthcommonJWKKey) (*rsa.PublicKey, error) {
	n, err := v.convertModulus(jwkKey.N)
	if err != nil {
		return nil, err
	}

	e, err := v.convertExponent(jwkKey.E)
	if err != nil {
		return nil, err
	}

	return &rsa.PublicKey{N: n, E: e}, nil
}

func (v *TokenValidator) fetchAll() error {
	err := v.fetchClientToken()
	if err != nil {
		return err
	}

	err = v.fetchJWKSet()
	if err != nil {
		return err
	}

	err = v.fetchRevocationList()
	if err != nil {
		return err
	}

	return nil
}

func (v *TokenValidator) fetchClientToken() error {
	clientId := v.AuthService.ConfigRepository.GetClientId()
	clientSecret := v.AuthService.ConfigRepository.GetClientSecret()

	return v.AuthService.LoginClient(&clientId, &clientSecret)
}

func (v *TokenValidator) fetchJWKSet() error {
	jwkSet, err := v.AuthService.GetJWKSV3Short(&o_auth2_0.GetJWKSV3Params{})
	if err != nil {
		return err
	}

	v.JwkSet = jwkSet.Data
	for _, key := range jwkSet.Data.Keys {
		publicKey, err := v.convertToPublicKey(key)
		if err != nil {
			return err
		}

		v.RWMutex.Lock()
		v.PublicKeys[key.Kid] = publicKey
		v.RWMutex.Unlock()
	}

	return nil
}

func (v *TokenValidator) fetchRevocationList() error {
	revocationList, err := v.AuthService.GetRevocationListV3Short(&o_auth2_0.GetRevocationListV3Params{})
	if err != nil {
		return err
	}

	v.Filter = bloom.From(revocationList.Data.RevokedTokens.Bits, uint(*revocationList.Data.RevokedTokens.K))

	for _, revokedUser := range revocationList.Data.RevokedUsers {
		v.RWMutex.Lock()
		v.RevokedUsers[*revokedUser.ID] = time.Time(revokedUser.RevokedAt)
		v.RWMutex.Unlock()
	}

	return nil
}

func (v *TokenValidator) getRole(roleId string, forceFetch bool) (*iamclientmodels.ModelRolePermissionResponseV3, error) {
	if !forceFetch {
		v.RWMutex.RLock()
		defer v.RWMutex.RUnlock()

		if role, found := v.Roles[roleId]; found {
			return role, nil
		}
	}

	overrideRoleService := OverrideRoleConfigv3Service{
		Client:           v.AuthService.Client,
		ConfigRepository: v.AuthService.ConfigRepository,
		TokenRepository:  v.AuthService.TokenRepository,
	}
	role, err := overrideRoleService.AdminGetRoleNamespacePermissionV3Short(&override_role_config_v3.AdminGetRoleNamespacePermissionV3Params{
		RoleID: roleId,
	})
	if err != nil {
		return nil, err
	}

	v.RWMutex.Lock()
	defer v.RWMutex.Unlock()

	v.Roles[roleId] = role.Data

	return role.Data, nil
}

func (v *TokenValidator) getRolePermissions(roleId string, forceFetch bool) ([]Permission, error) {
	role, err := v.getRole(roleId, forceFetch)
	if err != nil {
		return nil, err
	}

	permissions := make([]Permission, len(role.Permissions))
	for index, permission := range role.Permissions {
		permissions[index] = v.convertToPermission(*permission)
	}

	return permissions, nil
}

func (v *TokenValidator) getRolePermissions2(roleId string, namespace string, userId *string, forceFetch bool) ([]Permission, error) {
	permissions, err := v.getRolePermissions(roleId, forceFetch)
	if err != nil {
		return nil, err
	}

	modifiedPermissions := make([]Permission, len(permissions))
	for index, permission := range permissions {
		modifiedResource := v.replaceResource(permission.Resource, &namespace, userId)
		modifiedPermissions[index] = Permission{
			Action:   permission.Action,
			Resource: modifiedResource,
		}
	}

	return modifiedPermissions, nil
}

func (v *TokenValidator) getRolePermissions3(namespaceRole NamespaceRole, userId *string, forceFetch bool) ([]Permission, error) {
	return v.getRolePermissions2(namespaceRole.RoleID, namespaceRole.Namespace, userId, forceFetch)
}

func (v *TokenValidator) hasValidPermissions(claims JWTClaims, permission *Permission, namespace *string, userId *string) (bool, error) {
	if permission == nil || permission.Resource == "" {
		return true, nil
	}

	tokenNamespace := claims.Namespace
	if tokenNamespace == "" {
		errPermissions := errors.New("claims namespace is empty")

		return false, errPermissions
	}

	modifiedResource := v.replaceResource(
		permission.Resource,
		namespace,
		userId,
	)

	err := v.fetchNamespaceContextFromCache(claims.Namespace)
	if err != nil {
		errPermissions := fmt.Errorf("failed to fetch namespace context. %+v", err)

		return false, errPermissions
	}

	var aggregatedErrors []string

	originPermissions := claims.Permissions
	if len(originPermissions) > 0 &&
		v.validatePermissions(originPermissions, modifiedResource, permission.Action) {
		return true, nil
	}

	if !v.validatePermissions(originPermissions, modifiedResource, permission.Action) {
		return false, fmt.Errorf("permission [%s] with action [%v] is required", modifiedResource, permission.Action)
	}

	claimsUserId := claims.Subject
	namespaceRoles := claims.NamespaceRoles
	if claimsUserId != "" && len(namespaceRoles) > 0 {
		allRoleNamespacePermissions := make([]Permission, 0)
		for _, namespaceRole := range namespaceRoles {
			roleNamespacePermissions, errRoleNamespacePermissions := v.getRolePermissions3(namespaceRole, &claimsUserId, false)
			if errRoleNamespacePermissions != nil {
				errPermissions := fmt.Errorf("error while fetching role namespace permission. %s", errRoleNamespacePermissions)
				aggregatedErrors = append(aggregatedErrors, errPermissions.Error())
			}

			allRoleNamespacePermissions = append(allRoleNamespacePermissions, roleNamespacePermissions...)
		}
		if len(allRoleNamespacePermissions) > 0 &&
			v.validatePermissions(allRoleNamespacePermissions, modifiedResource, permission.Action) {
			return true, nil
		}
	}

	claimsRoles := claims.Roles
	if len(claimsRoles) > 0 {
		allRolePermissions := make([]Permission, 0)
		for _, roleId := range claimsRoles {
			rolePermissions, errRolePermissions := v.getRolePermissions2(roleId, tokenNamespace, userId, false)
			if errRolePermissions != nil {
				errPermissions := fmt.Errorf("error while fetching role permission. %+v", errRolePermissions)
				aggregatedErrors = append(aggregatedErrors, errPermissions.Error())
			}

			allRolePermissions = append(allRolePermissions, rolePermissions...)
		}
		if len(allRolePermissions) > 0 &&
			v.validatePermissions(allRolePermissions, modifiedResource, permission.Action) {
			return true, nil
		}
	}

	additionalErrorInfo := ""
	if len(aggregatedErrors) > 0 {
		additionalErrorInfo = "\nerrors:\n -" + strings.Join(aggregatedErrors, "\n -")
	}

	return false, fmt.Errorf("failed to validate permission [%v][%v]%s", modifiedResource, permission.Action, additionalErrorInfo)
}

func (v *TokenValidator) hasValidNamespace(claims JWTClaims, namespace *string) error {
	if namespace == nil {
		return errors.New("trying to validate access token against a namepace, but have an empty namespace")
	}

	if claims.ExtendNamespace != "" {
		if claims.ExtendNamespace != *namespace {
			return errors.New("extend namespace from token has different a namespace with grpc server")
		}
	}

	return nil
}

func (v *TokenValidator) isTokenRevoked(token string) bool {
	if v.Filter == nil {
		return false
	}

	return v.Filter.MightContain([]byte(token))
}

func (v *TokenValidator) isUserRevoked(userId string, issuedAt int64) bool {
	v.RWMutex.RLock()
	defer v.RWMutex.RUnlock()

	if revokedAt, found := v.RevokedUsers[userId]; found {
		return revokedAt.Unix() >= issuedAt
	}

	return false
}

func (v *TokenValidator) replaceResource(resource string, namespace, userId *string) string {
	modifiedResource := resource

	if namespace != nil {
		modifiedResource = strings.Replace(modifiedResource, "{namespace}", *namespace, -1)
	}

	if userId != nil {
		modifiedResource = strings.Replace(modifiedResource, "{userId}", *userId, -1)
	}

	return modifiedResource
}

func (v *TokenValidator) fetchNamespaceContextFromCache(keyNamespace string) error {
	if v.namespaceContextsCache == nil {
		v.namespaceContextsCache = cache.New(utils.GetRolesExpirationTime(), 2*utils.GetRolesExpirationTime()) //nolint:mnd // default time is one hour
	}

	if nsContext, found := v.namespaceContextsCache.Get(keyNamespace); found {
		v.RWMutex.Lock()
		defer v.RWMutex.Unlock()

		v.NamespaceContexts = map[string]*NamespaceContext{keyNamespace: nsContext.(*NamespaceContext)}

		return nil
	}

	err := v.fetchNamespaceContext(keyNamespace)
	if err != nil {
		return err
	}

	return nil
}

func (v *TokenValidator) fetchNamespaceContext(keyNamespace string) error {
	var token string
	if v.AuthService.TokenRepository != nil {
		t, errT := v.AuthService.TokenRepository.GetToken()
		if errT != nil {
			return errors.New("empty token")
		}
		token = *t.AccessToken
	}
	url := fmt.Sprintf("%s/basic/v1/admin/namespaces/%s/context", v.AuthService.ConfigRepository.GetJusticeBaseUrl(), keyNamespace)
	if token != "" {
		resp, errResp := utils.SimpleHTTPCall(utils.GetClient(), url, "GET", "Bearer "+token, "", nil)
		if errResp != nil {
			return errResp
		}
		respBody, errRespBody := io.ReadAll(resp.Body)
		if errRespBody != nil {
			return errRespBody
		}
		if resp.StatusCode == http.StatusOK {
			nResp := &NamespaceContext{}
			err := json.Unmarshal(respBody, nResp)
			if err != nil {
				return err
			}

			v.namespaceContextsCache.Set(keyNamespace, &NamespaceContext{
				Namespace:          nResp.Namespace,
				Type:               nResp.Type,
				PublisherNamespace: nResp.PublisherNamespace,
				StudioNamespace:    nResp.StudioNamespace,
			}, utils.GetNamespaceContextExpirationTime())

			return nil
		} else {
			return nil
		}
	}

	return errors.New("requesting namespace context but token is empty")
}

func (v *TokenValidator) validatePermissions(permissions []Permission, resource string, action int) bool {
	if len(permissions) > 0 {
		requiredResourceItems := strings.Split(resource, ":")
		for _, permission := range permissions {
			hasResourceItems := strings.Split(permission.Resource, ":")

			hasResourceItemsLen := len(hasResourceItems)
			requiredResourceItemsLen := len(requiredResourceItems)
			minLen := minInt(hasResourceItemsLen, requiredResourceItemsLen)

			matches := true
			for i := range minLen {
				s1 := hasResourceItems[i]
				s2 := requiredResourceItems[i]
				if s1 != s2 && s1 != "*" {
					if strings.HasSuffix(s1, "-") && i > 0 {
						prevS1 := hasResourceItems[i-1]
						if prevS1 == "NAMESPACE" {
							if strings.Contains(s2, "-") {
								s2Parts := strings.Split(s2, "-")
								if len(s2Parts) == 2 && strings.HasPrefix(s2, s1) {
									continue
								}
							}

							s2Prefixed := s2 + "-"
							if s1 == s2Prefixed {
								continue
							}

							var shouldContinue bool
							v.RWMutex.RLock()

							if context, found := v.NamespaceContexts[s2]; found {
								shouldContinue = context.Type == TypeGame && strings.HasPrefix(s1, context.StudioNamespace)
							}
							v.RWMutex.RUnlock()

							if shouldContinue {
								continue
							}
						}
					}

					matches = false

					break
				}
			}

			if matches {
				if hasResourceItemsLen < requiredResourceItemsLen {
					if hasResourceItems[hasResourceItemsLen-1] == "*" {
						if hasResourceItemsLen < 2 { //nolint:mnd
							return true
						} else {
							segment := hasResourceItems[hasResourceItemsLen-2]
							if segment == "NAMESPACE" || segment == "USER" {
								matches = false
							} else {
								matches = true
							}
						}
					} else {
						matches = false
					}
					if !matches {
						continue
					}
				} else if hasResourceItemsLen > requiredResourceItemsLen {
					for i := requiredResourceItemsLen; i < hasResourceItemsLen; i++ {
						if hasResourceItems[i] != "*" {
							matches = false

							break
						}
					}
					if !matches {
						continue
					}
				}

				if (permission.Action & action) > 0 {
					return true
				}
			}
		}
	}

	return false
}

func NewTokenValidator(authService OAuth20Service, refreshInterval time.Duration) AuthTokenValidator {
	return &TokenValidator{
		AuthService:     authService,
		RefreshInterval: refreshInterval,

		Filter:                nil,
		JwkSet:                nil,
		JwtClaims:             JWTClaims{},
		JwtEncoding:           *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys:            make(map[string]*rsa.PublicKey),
		LocalValidationActive: false,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRolePermissionResponseV3),
		NamespaceContexts:     make(map[string]*NamespaceContext),

		rolePermissionCache: cache.New(
			utils.GetRolesExpirationTime(),
			2*utils.GetRolesExpirationTime(), //nolint:mnd
		),

		namespaceContextsCache: cache.New(
			utils.GetNamespaceContextExpirationTime(),
			2*utils.GetNamespaceContextExpirationTime(), //nolint:mnd
		),
	}
}

func minInt(a, b int) int {
	if a < b {
		return a
	}

	return b
}

type NamespaceContext struct {
	Namespace          string `json:"namespace"` // studio namespace + game namespace
	Type               string `json:"type"`      // enum: Publisher, Studio, Game
	PublisherNamespace string `json:"publisherNamespace"`
	StudioNamespace    string `json:"studioNamespace"` // it will be empty when input namespace is publisher namespace
}

const (
	TypePublisher string = "Publisher"
	TypeStudio    string = "Studio"
	TypeGame      string = "Game"
)
