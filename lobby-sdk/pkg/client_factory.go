// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package lobby

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type LobbyClient struct {
	Friends         *FriendsService
	Blocks          *BlocksService
	Config          *ConfigService
	Admin           *AdminService
	Notification    *NotificationService
	Party           *PartyService
	LobbyOperations *LobbyOperationsService
	Player          *PlayerService
	Profanity       *ProfanityService
	ThirdParty      *ThirdPartyService
	Presence        *PresenceService
}

func NewLobbyClient(session repository.Session) *LobbyClient {
	httpClient := NewLobbyHttpClient(session.ConfigRepository)
	return &LobbyClient{
		Friends:         &FriendsService{Client: httpClient, Session: session},
		Blocks:          &BlocksService{Client: httpClient, Session: session},
		Config:          &ConfigService{Client: httpClient, Session: session},
		Admin:           &AdminService{Client: httpClient, Session: session},
		Notification:    &NotificationService{Client: httpClient, Session: session},
		Party:           &PartyService{Client: httpClient, Session: session},
		LobbyOperations: &LobbyOperationsService{Client: httpClient, Session: session},
		Player:          &PlayerService{Client: httpClient, Session: session},
		Profanity:       &ProfanityService{Client: httpClient, Session: session},
		ThirdParty:      &ThirdPartyService{Client: httpClient, Session: session},
		Presence:        &PresenceService{Client: httpClient, Session: session},
	}
}

func NewLobbyHttpClient(configRepository repository.ConfigRepository) *lobbyclient.JusticeLobbyService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/lobby")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &lobbyclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return lobbyclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return lobbyclient.NewHTTPClient(nil)
	}
}
