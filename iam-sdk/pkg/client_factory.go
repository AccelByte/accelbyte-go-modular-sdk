// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iam

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type IamClient struct {
	OAuth20               *OAuth20Service
	Bans                  *BansService
	Clients               *ClientsService
	Users                 *UsersService
	OAuth                 *OAuthService
	Roles                 *RolesService
	ClientsConfigV3       *ClientsConfigV3Service
	InputValidations      *InputValidationsService
	Config                *ConfigService
	Country               *CountryService
	LoginAllowlist        *LoginAllowlistService
	ThirdPartyCredential  *ThirdPartyCredentialService
	SSOCredential         *SSOCredentialService
	ProfileUpdateStrategy *ProfileUpdateStrategyService
	OverrideRoleConfigv3  *OverrideRoleConfigv3Service
	AccountIdentifierTag  *AccountIdentifierTagService
	OAuth20Extension      *OAuth20ExtensionService
	SSOSAML20             *SSOSAML20Service
	SSO                   *SSOService
	UsersV4               *UsersV4Service
	DevicesV4             *DevicesV4Service
	OAuth20v4             *OAuth20v4Service
}

func NewIamClient(session repository.Session) *IamClient {
	httpClient := NewIamHttpClient(session.ConfigRepository)
	return &IamClient{
		OAuth20:               &OAuth20Service{Client: httpClient, Session: session},
		Bans:                  &BansService{Client: httpClient, Session: session},
		Clients:               &ClientsService{Client: httpClient, Session: session},
		Users:                 &UsersService{Client: httpClient, Session: session},
		OAuth:                 &OAuthService{Client: httpClient, Session: session},
		Roles:                 &RolesService{Client: httpClient, Session: session},
		ClientsConfigV3:       &ClientsConfigV3Service{Client: httpClient, Session: session},
		InputValidations:      &InputValidationsService{Client: httpClient, Session: session},
		Config:                &ConfigService{Client: httpClient, Session: session},
		Country:               &CountryService{Client: httpClient, Session: session},
		LoginAllowlist:        &LoginAllowlistService{Client: httpClient, Session: session},
		ThirdPartyCredential:  &ThirdPartyCredentialService{Client: httpClient, Session: session},
		SSOCredential:         &SSOCredentialService{Client: httpClient, Session: session},
		ProfileUpdateStrategy: &ProfileUpdateStrategyService{Client: httpClient, Session: session},
		OverrideRoleConfigv3:  &OverrideRoleConfigv3Service{Client: httpClient, Session: session},
		AccountIdentifierTag:  &AccountIdentifierTagService{Client: httpClient, Session: session},
		OAuth20Extension:      &OAuth20ExtensionService{Client: httpClient, Session: session},
		SSOSAML20:             &SSOSAML20Service{Client: httpClient, Session: session},
		SSO:                   &SSOService{Client: httpClient, Session: session},
		UsersV4:               &UsersV4Service{Client: httpClient, Session: session},
		DevicesV4:             &DevicesV4Service{Client: httpClient, Session: session},
		OAuth20v4:             &OAuth20v4Service{Client: httpClient, Session: session},
	}
}

func NewIamHttpClient(configRepository repository.ConfigRepository) *iamclient.JusticeIamService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/iam")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &iamclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return iamclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return iamclient.NewHTTPClient(nil)
	}
}
