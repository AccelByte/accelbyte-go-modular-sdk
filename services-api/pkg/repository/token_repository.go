// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

import (
	"encoding/base64"
	"encoding/json"
	"errors"
	"strings"
	"time"

	"github.com/golang-jwt/jwt"

	"github.com/go-openapi/strfmt"
)

type (
	// Token
	// this is created to remove dependency to 'iam-sdk'
	// references:
	// iam-sdk/pkg/iamclientmodels.OauthmodelTokenResponseV3
	// iam-sdk/pkg/iamclientmodels/.OauthmodelTokenWithDeviceCookieResponseV3
	Token struct {
		AccessToken      *string                       `json:"access_token,omitempty"`
		AuthTrustID      string                        `json:"auth_trust_id,omitempty"`
		Bans             []*AccountCommonJWTBanV3      `json:"bans"`
		DisplayName      string                        `json:"display_name,omitempty"`
		ExpiresIn        *int32                        `json:"expires_in,omitempty"`
		IsComply         bool                          `json:"is_comply"`
		Jflgs            int32                         `json:"jflgs,omitempty"`
		Namespace        *string                       `json:"namespace"`
		NamespaceRoles   []*AccountCommonNamespaceRole `json:"namespace_roles"`
		Permissions      []*AccountCommonPermissionV3  `json:"permissions"`
		PlatformID       string                        `json:"platform_id,omitempty"`
		PlatformUserID   string                        `json:"platform_user_id,omitempty"`
		RefreshExpiresIn int32                         `json:"refresh_expires_in,omitempty"`
		RefreshToken     string                        `json:"refresh_token,omitempty"`
		Roles            []string                      `json:"roles"`
		Scope            *string                       `json:"scope"`
		TokenType        *string                       `json:"token_type"`
		UserID           string                        `json:"user_id,omitempty"`
		Xuid             string                        `json:"xuid,omitempty"`
	}

	AccountCommonJWTBanV3 struct {
		Ban               *string          `json:"ban"`
		DisabledDate      *strfmt.DateTime `json:"disabledDate,omitempty"`
		Enabled           *bool            `json:"enabled"`
		EndDate           strfmt.DateTime  `json:"endDate"`
		TargetedNamespace *string          `json:"targetedNamespace"`
	}

	AccountCommonNamespaceRole struct {
		Namespace *string `json:"namespace"`
		RoleID    *string `json:"roleId"`
	}

	AccountCommonPermissionV3 struct {
		Action      *int32   `json:"action"`
		Resource    *string  `json:"resource"`
		SchedAction int32    `json:"schedAction,omitempty"`
		SchedCron   string   `json:"schedCron,omitempty"`
		SchedRange  []string `json:"schedRange"`
	}
)

type TokenRepository interface {
	// Store token model with type iamclientmodels.OauthmodelTokenResponseV3 or any type that compatible with its json serialized data
	Store(token interface{}) error
	GetToken() (*Token, error)
	RemoveToken() error
	TokenIssuedTimeUTC() time.Time
}

func GetRefreshExpiresIn(repository TokenRepository) (int32, error) {
	getToken, errGet := repository.GetToken()
	if errGet != nil {
		return 0, errGet
	}

	return getToken.RefreshExpiresIn, nil
}

func GetExpiresIn(repository TokenRepository) (*int32, error) {
	getToken, errGet := repository.GetToken()
	if errGet != nil {
		return nil, errGet
	}

	return getToken.ExpiresIn, nil
}

func GetRefreshToken(repository TokenRepository) (string, error) {
	getToken, errGet := repository.GetToken()
	if errGet != nil {
		return "", errGet
	}

	return getToken.RefreshToken, nil
}

func GetSecondsTillExpiry(repository TokenRepository, refreshRate float64) time.Duration {
	if !HasToken(repository) {
		return 0
	}
	get, err := GetExpiresIn(repository)
	if err != nil {
		return 0
	}
	withRefreshRate := float64(*get) * refreshRate
	expiresAt := repository.TokenIssuedTimeUTC().Add(time.Duration(withRefreshRate) * time.Second)
	timeNow := time.Now().UTC()
	secondsTillExpiry := expiresAt.Sub(timeNow) // in seconds ex 1m6.995968173s

	return secondsTillExpiry
}

func HasToken(repository TokenRepository) bool {
	_, err := repository.GetToken()

	return err == nil
}

func HasTokenExpired(repository TokenRepository, refreshRate float64) bool {
	x := GetSecondsTillExpiry(repository, refreshRate) <= 0

	return x
}

func GetSecondsTillExpiryRefresh(repository TokenRepository, refreshRate float64) time.Duration {
	if !HasToken(repository) {
		return 0
	}
	get, err := GetRefreshExpiresIn(repository)
	if err != nil {
		return 0
	}
	withRefreshRate := float64(get) * refreshRate
	expiresAt := repository.TokenIssuedTimeUTC().Add(time.Duration(withRefreshRate) * time.Second)
	secondsTillExpiry := expiresAt.Sub(time.Now().UTC()) // in seconds ex 1m6.995968173s

	return secondsTillExpiry
}

func HasRefreshTokenExpired(repository TokenRepository, refreshRate float64) bool {
	return GetSecondsTillExpiryRefresh(repository, refreshRate) <= 0
}

func ConvertInterfaceToModel(tokenInterface interface{}) (*Token, error) {
	tmpToken, errMarshal := json.Marshal(tokenInterface)
	if errMarshal != nil {
		return nil, errMarshal
	}

	token := &Token{}
	errUnmarshal := json.Unmarshal(tmpToken, &token)
	if errUnmarshal != nil {
		return nil, errUnmarshal
	}

	return token, nil
}

// ConvertStringToModelToken converts access token string to Token struct used by iam Token Grant V3 endpoint
func ConvertStringToModelToken(accessToken string) (*Token, error) {
	tokenResponseV3 := &Token{}
	parsedToken, err := jwt.Parse(accessToken, func(token *jwt.Token) (interface{}, error) {
		return accessToken, nil
	})

	if parsedToken != nil {
		jsonPayload, errMarshal := json.Marshal(parsedToken.Claims)
		if errMarshal != nil {
			return nil, errMarshal
		}
		err = json.Unmarshal(jsonPayload, tokenResponseV3)
		if err != nil {
			return nil, err
		}
		tokenResponseV3.AccessToken = &accessToken

		return tokenResponseV3, nil
	}

	return nil, err
}

// CheckJWT checks if the token is a valid JWT
func CheckJWT(token string) error {
	parts := strings.Split(token, ".")
	if len(parts) != 3 { //nolint:mnd
		return errors.New("token does not have 3 parts")
	}

	_, err := base64.RawURLEncoding.DecodeString(parts[0])
	if err != nil {
		return errors.New("header is not valid base64")
	}

	_, err = base64.RawURLEncoding.DecodeString(parts[1])
	if err != nil {
		return errors.New("payload is not valid base64")
	}

	return nil
}
