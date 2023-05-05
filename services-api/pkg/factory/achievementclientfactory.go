//go:build all || achievement

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	achievement "github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var achievementClientInstance *achievementclient.JusticeAchievementService

// NewAchievementClient
// Deprecated: please use NewAchievementClient from "github.com/AccelByte/accelbyte-go-sdk/Achievement-sdk/pkg"
func NewAchievementClient(configRepository repository.ConfigRepository) *achievementclient.JusticeAchievementService {
	if achievementClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
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
