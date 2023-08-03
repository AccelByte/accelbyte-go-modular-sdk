//go:build compat || compat_lobby

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	lobby "github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var lobbyClientInstance *lobbyclient.JusticeLobbyService

// NewLobbyClient
// Deprecated: 2023-03-30 - please use NewLobbyClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Lobby-sdk/pkg"
func NewLobbyClient(configRepository repository.ConfigRepository) *lobbyclient.JusticeLobbyService {
	if lobbyClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &lobbyclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: lobby.GetUserAgent,
			}
			lobbyClientInstance = lobbyclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			lobbyClientInstance = lobbyclient.NewHTTPClient(nil)
		}
	}

	return lobbyClientInstance
}
