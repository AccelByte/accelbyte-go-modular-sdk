//go:build compat || compat_achievement

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	achievement "github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var achievementClientInstance *achievementclient.JusticeAchievementService

// NewAchievementClient
// Deprecated: 2023-03-30 - please use NewAchievementClient from "github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg"
func NewAchievementClient(configRepository repository.ConfigRepository) *achievementclient.JusticeAchievementService {
	if achievementClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &achievementclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: achievement.GetUserAgent,
			}
			achievementClientInstance = achievementclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			achievementClientInstance = achievementclient.NewHTTPClient(nil)
		}
	}

	return achievementClientInstance
}
