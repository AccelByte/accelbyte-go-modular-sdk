//go:build compat || compat_matchmaking

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	matchmaking "github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var matchmakingClientInstance *matchmakingclient.JusticeMatchmakingService

// NewMatchmakingClient
// Deprecated: 2023-03-30 - please use NewMatchmakingClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Matchmaking-sdk/pkg"
func NewMatchmakingClient(configRepository repository.ConfigRepository) *matchmakingclient.JusticeMatchmakingService {
	if matchmakingClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &matchmakingclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: matchmaking.GetUserAgent,
			}
			matchmakingClientInstance = matchmakingclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			matchmakingClientInstance = matchmakingclient.NewHTTPClient(nil)
		}
	}

	return matchmakingClientInstance
}
