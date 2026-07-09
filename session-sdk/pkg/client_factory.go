// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient"
)

type SessionClient struct {
	Operations               *OperationsService
	Config                   *ConfigService
	DSMCDefaultConfiguration *DSMCDefaultConfigurationService
	EnvironmentVariable      *EnvironmentVariableService
	GlobalConfiguration      *GlobalConfigurationService
	ConfigurationTemplate    *ConfigurationTemplateService
	Certificate              *CertificateService
	MaxActive                *MaxActiveService
	GameSession              *GameSessionService
	NativeSession            *NativeSessionService
	Party                    *PartyService
	SessionStorage           *SessionStorageService
	PlatformCredential       *PlatformCredentialService
	RecentPlayer             *RecentPlayerService
	Player                   *PlayerService
}

func NewSessionClient(session repository.Session) *SessionClient {
	httpClient := NewSessionHttpClient(session.ConfigRepository)
	return &SessionClient{
		Operations:               &OperationsService{Client: httpClient, Session: session},
		Config:                   &ConfigService{Client: httpClient, Session: session},
		DSMCDefaultConfiguration: &DSMCDefaultConfigurationService{Client: httpClient, Session: session},
		EnvironmentVariable:      &EnvironmentVariableService{Client: httpClient, Session: session},
		GlobalConfiguration:      &GlobalConfigurationService{Client: httpClient, Session: session},
		ConfigurationTemplate:    &ConfigurationTemplateService{Client: httpClient, Session: session},
		Certificate:              &CertificateService{Client: httpClient, Session: session},
		MaxActive:                &MaxActiveService{Client: httpClient, Session: session},
		GameSession:              &GameSessionService{Client: httpClient, Session: session},
		NativeSession:            &NativeSessionService{Client: httpClient, Session: session},
		Party:                    &PartyService{Client: httpClient, Session: session},
		SessionStorage:           &SessionStorageService{Client: httpClient, Session: session},
		PlatformCredential:       &PlatformCredentialService{Client: httpClient, Session: session},
		RecentPlayer:             &RecentPlayerService{Client: httpClient, Session: session},
		Player:                   &PlayerService{Client: httpClient, Session: session},
	}
}

func NewSessionHttpClient(configRepository repository.ConfigRepository) *sessionclient.JusticeSessionService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/session")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &sessionclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return sessionclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return sessionclient.NewHTTPClient(nil)
	}
}
