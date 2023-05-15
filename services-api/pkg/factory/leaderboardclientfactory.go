//go:build all || leaderboard

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	leaderboard "github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var leaderboardClientInstance *leaderboardclient.JusticeLeaderboardService

// NewLeaderboardClient
// Deprecated: 2023-03-30 - please use NewLeaderboardClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Leaderboard-sdk/pkg"
func NewLeaderboardClient(configRepository repository.ConfigRepository) *leaderboardclient.JusticeLeaderboardService {
	if leaderboardClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &leaderboardclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: leaderboard.GetUserAgent,
			}
			leaderboardClientInstance = leaderboardclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			leaderboardClientInstance = leaderboardclient.NewHTTPClient(nil)
		}
	}

	return leaderboardClientInstance
}
