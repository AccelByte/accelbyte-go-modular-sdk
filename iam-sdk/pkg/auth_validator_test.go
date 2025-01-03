// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iam

import (
	"crypto/rand"
	"crypto/rsa"
	"encoding/base64"
	"fmt"
	"testing"
	"time"

	"github.com/AccelByte/go-jose"
	"github.com/AccelByte/go-jose/jwt"
	"github.com/stretchr/testify/assert"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils/auth"
)

const baseUrl = "https://example.com"

func TestTokenValidator_ValidateToken(t *testing.T) {
	// should be moved and run as integration test, skip for now
	t.Skip()

	// Arrange
	configRepo := auth.DefaultConfigRepositoryImpl()
	tokenRepo := auth.DefaultTokenRepositoryImpl()
	authService := OAuth20Service{
		Client:           NewIamClient(configRepo),
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}

	err := authService.LoginClient(&configRepo.ClientId, &configRepo.ClientSecret)
	if err != nil {
		assert.Fail(t, err.Error())

		return
	}

	accessToken, err := authService.GetToken()
	if err != nil {
		assert.Fail(t, err.Error())

		return
	}

	namespace := "accelbyte"
	resourceName := "MMV2GRPCSERVICE"
	requiredPermission := Permission{
		Action:   2,
		Resource: fmt.Sprintf("NAMESPACE:%s:%s", namespace, resourceName),
	}

	tokenValidator := NewTokenValidator(authService, time.Hour)
	tokenValidator.Initialize()

	// Act
	err = tokenValidator.Validate(accessToken, &requiredPermission, &namespace, nil)

	// Assert
	assert.Nil(t, err)
}

func TestTokenValidator_ValidateNamespaceRevamp(t *testing.T) {
	configRepo := auth.DefaultConfigRepositoryImpl()
	tokenRepo := auth.DefaultTokenRepositoryImpl()
	authService := OAuth20Service{
		Client:           NewIamClient(configRepo),
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}
	configRepo.BaseUrl = baseUrl
	validator := NewTokenValidatorTest(authService, time.Hour)
	jwtClaims := jwt.Claims{
		Subject:  "user1",
		Audience: []string{"client-id-1"},
		Issuer:   "https://example.com",
		IssuedAt: jwt.NewNumericDate(time.Now().UTC()),
		Expiry:   jwt.NewNumericDate(time.Now().UTC().Add(1 * time.Hour)),
	}

	tests := []struct {
		Name               string
		Key                *rsa.PrivateKey
		Claims             JWTClaims
		IsErrorNil         bool
		ExpectedPermission Permission
	}{
		{
			Name:       "assert 1",
			IsErrorNil: true,
			Key:        privateKey,
			Claims: JWTClaims{
				Namespace: "studio1",
				Permissions: []Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
			ExpectedPermission: Permission{
				Resource: "NAMESPACE:{namespace}:CLIENT",
				Action:   2,
			},
		},

		{
			Name:       "assert 2",
			IsErrorNil: false,
			Key:        privateKey,
			Claims: JWTClaims{
				Namespace: "studio2",
				Permissions: []Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
			ExpectedPermission: Permission{
				Resource: "NAMESPACE:studio2-:CLIENT",
				Action:   2,
			},
		},

		{
			Name:       "assert 3",
			IsErrorNil: true,
			Key:        privateKey,
			Claims: JWTClaims{
				Namespace: "studio1-game1",
				Permissions: []Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
			ExpectedPermission: Permission{
				Resource: "NAMESPACE:{namespace}:CLIENT",
				Action:   2,
			},
		},
	}

	for i, tc := range tests {
		signer, err := jose.NewSigner(jose.SigningKey{
			Algorithm: jose.RS256,
			Key: &jose.JSONWebKey{
				KeyID:     "test",
				Algorithm: "RSA",
				Key:       tc.Key,
			}}, nil)
		if err != nil {
			assert.Fail(t, err.Error())
		}

		token, err := jwt.Signed(signer).Claims(tc.Claims).CompactSerialize()
		if err != nil {
			t.Errorf("case %d: failed to create token: %v", i, err)

			continue
		}
		jws, err := jose.ParseSigned(token)
		if err != nil {
			t.Errorf("case %d: parse signed: %v", i, err)

			continue
		}
		gotKeyIDs := make([]string, len(jws.Signatures))
		for j, sig := range jws.Signatures {
			gotKeyIDs[j] = sig.Header.KeyID
		}

		n := authService.TokenRepository.Store(&repository.Token{AccessToken: &token})
		assert.Nil(t, n)

		// Act
		err = validator.Validate(token, &tc.ExpectedPermission, &tc.Claims.Namespace, nil)

		// Assert
		assert.Equal(t, tc.IsErrorNil, err == nil, fmt.Sprintf("Test for: %v", tc.Name))
	}
}

func TestTokenValidator_ValidateNamespaceRevamp2(t *testing.T) {
	configRepo := auth.DefaultConfigRepositoryImpl()
	tokenRepo := auth.DefaultTokenRepositoryImpl()
	authService := OAuth20Service{
		Client:           NewIamClient(configRepo),
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}
	configRepo.BaseUrl = baseUrl
	validator := NewTokenValidatorTest2(authService, time.Hour)
	jwtClaims := jwt.Claims{
		Subject:  "user1",
		Audience: []string{"client-id-1"},
		Issuer:   "https://example.com",
		IssuedAt: jwt.NewNumericDate(time.Now().UTC()),
		Expiry:   jwt.NewNumericDate(time.Now().UTC().Add(1 * time.Hour)),
	}

	expectedPermission := Permission{
		Resource: "NAMESPACE:{namespace}:CLIENT",
		Action:   2,
	}

	tests := []struct {
		Name       string
		Key        *rsa.PrivateKey
		Claims     JWTClaims
		IsErrorNil bool
	}{
		{
			Name:       "assert 4",
			IsErrorNil: true,
			Key:        privateKey,
			Claims: JWTClaims{
				Namespace: "studio1", // game1 in the NewTokenValidatorTest2
				Permissions: []Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
		},

		{
			Name:       "assert 5",
			IsErrorNil: false,
			Key:        privateKey,
			Claims: JWTClaims{
				Namespace: "game2",
				Permissions: []Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
		},
	}

	for i, tc := range tests {
		signer, err := jose.NewSigner(jose.SigningKey{
			Algorithm: jose.RS256,
			Key: &jose.JSONWebKey{
				KeyID:     "test",
				Algorithm: "RSA",
				Key:       tc.Key,
			}}, nil)
		if err != nil {
			assert.Fail(t, err.Error())
		}

		token, err := jwt.Signed(signer).Claims(tc.Claims).CompactSerialize()
		if err != nil {
			t.Errorf("case %d: failed to create token: %v", i, err)

			continue
		}
		jws, err := jose.ParseSigned(token)
		if err != nil {
			t.Errorf("case %d: parse signed: %v", i, err)

			continue
		}
		gotKeyIDs := make([]string, len(jws.Signatures))
		for j, sig := range jws.Signatures {
			gotKeyIDs[j] = sig.Header.KeyID
		}

		n := authService.TokenRepository.Store(&repository.Token{AccessToken: &token})
		assert.Nil(t, n)

		// Act
		err = validator.Validate(token, &expectedPermission, &tc.Claims.Namespace, nil)

		// Assert
		assert.Equal(t, tc.IsErrorNil, err == nil, fmt.Sprintf("Test for: %v", tc.Name))
	}
}

func TestTokenValidator_ValidateNamespaceRevamp3(t *testing.T) {
	configRepo := auth.DefaultConfigRepositoryImpl()
	tokenRepo := auth.DefaultTokenRepositoryImpl()
	authService := OAuth20Service{
		Client:           NewIamClient(configRepo),
		ConfigRepository: configRepo,
		TokenRepository:  tokenRepo,
	}
	configRepo.BaseUrl = baseUrl
	validator := NewTokenValidatorTest3(authService, time.Hour)
	jwtClaims := jwt.Claims{
		Subject:  "user1",
		Audience: []string{"client-id-1"},
		Issuer:   "https://example.com",
		IssuedAt: jwt.NewNumericDate(time.Now().UTC()),
		Expiry:   jwt.NewNumericDate(time.Now().UTC().Add(1 * time.Hour)),
	}

	expectedPermission := Permission{
		Resource: "NAMESPACE:{namespace}:CLIENT",
		Action:   2,
	}

	tests := []struct {
		Name       string
		Key        *rsa.PrivateKey
		Claims     JWTClaims
		IsErrorNil bool
	}{

		{
			Name:       "assert 5",
			IsErrorNil: false,
			Key:        privateKey,
			Claims: JWTClaims{
				Namespace: "game2", // the NewTokenValidatorTest3 is using game1 as namespace
				Permissions: []Permission{{
					Resource: "NAMESPACE:studio1-:CLIENT",
					Action:   2,
				}},
				Claims: jwtClaims,
			},
		},
	}

	for i, tc := range tests {
		signer, err := jose.NewSigner(jose.SigningKey{
			Algorithm: jose.RS256,
			Key: &jose.JSONWebKey{
				KeyID:     "test",
				Algorithm: "RSA",
				Key:       tc.Key,
			}}, nil)
		if err != nil {
			assert.Fail(t, err.Error())
		}

		token, err := jwt.Signed(signer).Claims(tc.Claims).CompactSerialize()
		if err != nil {
			t.Errorf("case %d: failed to create token: %v", i, err)

			continue
		}
		jws, err := jose.ParseSigned(token)
		if err != nil {
			t.Errorf("case %d: parse signed: %v", i, err)

			continue
		}
		gotKeyIDs := make([]string, len(jws.Signatures))
		for j, sig := range jws.Signatures {
			gotKeyIDs[j] = sig.Header.KeyID
		}
		n := authService.TokenRepository.Store(&repository.Token{AccessToken: &token})
		assert.Nil(t, n)

		// Act
		err = validator.Validate(token, &expectedPermission, &tc.Claims.Namespace, nil)

		// Assert
		assert.Equal(t, tc.IsErrorNil, err == nil, fmt.Sprintf("Test for: %v", tc.Name))
	}
}

func getKey() (*rsa.PublicKey, *rsa.PrivateKey) {
	pr, err := rsa.GenerateKey(rand.Reader, 1024)
	if err != nil {
		return nil, nil
	}

	return &pr.PublicKey, pr
}

var privateKey *rsa.PrivateKey

func NewTokenValidatorTest(authService OAuth20Service, refreshInterval time.Duration) AuthTokenValidator {
	pubKey, privKey := getKey()

	privateKey = privKey

	return &TokenValidator{
		AuthService:     authService,
		RefreshInterval: refreshInterval,

		Filter:      nil,
		JwkSet:      nil,
		JwtClaims:   JWTClaims{},
		JwtEncoding: *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys: map[string]*rsa.PublicKey{
			"test": pubKey,
		},
		LocalValidationActive: true,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRolePermissionResponseV3),
		NamespaceContexts:     make(map[string]*NamespaceContext),
	}
}

func NewTokenValidatorTest2(authService OAuth20Service, refreshInterval time.Duration) AuthTokenValidator {
	pubKey, privKey := getKey()

	privateKey = privKey

	return &TokenValidator{
		AuthService:     authService,
		RefreshInterval: refreshInterval,

		Filter:      nil,
		JwkSet:      nil,
		JwtClaims:   JWTClaims{},
		JwtEncoding: *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys: map[string]*rsa.PublicKey{
			"test": pubKey,
		},
		LocalValidationActive: true,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRolePermissionResponseV3),
		NamespaceContexts: map[string]*NamespaceContext{
			"studio1": {
				Namespace:          "game1",
				Type:               TypeGame,
				PublisherNamespace: "accelbyte",
				StudioNamespace:    "studio1",
			},
		},
	}
}

func NewTokenValidatorTest3(authService OAuth20Service, refreshInterval time.Duration) AuthTokenValidator {
	pubKey, privKey := getKey()

	privateKey = privKey

	return &TokenValidator{
		AuthService:     authService,
		RefreshInterval: refreshInterval,

		Filter:      nil,
		JwkSet:      nil,
		JwtClaims:   JWTClaims{},
		JwtEncoding: *base64.URLEncoding.WithPadding(base64.NoPadding),
		PublicKeys: map[string]*rsa.PublicKey{
			"test": pubKey,
		},
		LocalValidationActive: true,
		RevokedUsers:          make(map[string]time.Time),
		Roles:                 make(map[string]*iamclientmodels.ModelRolePermissionResponseV3),
		NamespaceContexts: map[string]*NamespaceContext{
			"game1": {
				Namespace:          "game1",
				Type:               TypeGame,
				PublisherNamespace: "accelbyte",
				StudioNamespace:    "studio1",
			},
		},
	}
}
