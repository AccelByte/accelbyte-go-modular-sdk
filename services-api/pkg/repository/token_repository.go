// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

import (
	"encoding/json"
	"time"

	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
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
	GetToken() (*iamclientmodels.OauthmodelTokenResponseV3, error)
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

func ConvertInterfaceToModel(tokenInterface interface{}) (*iamclientmodels.OauthmodelTokenResponseV3, error) {
	tmpToken, errMarshal := json.Marshal(tokenInterface)
	if errMarshal != nil {
		return nil, errMarshal
	}

	token := &iamclientmodels.OauthmodelTokenResponseV3{}
	errUnmarshal := json.Unmarshal(tmpToken, &token)
	if errUnmarshal != nil {
		return nil, errUnmarshal
	}

	return token, nil
}
