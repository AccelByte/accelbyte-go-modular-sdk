// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challenge

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type ChallengeClient struct {
	ChallengeConfiguration *ChallengeConfigurationService
	Utilities              *UtilitiesService
	GoalConfiguration      *GoalConfigurationService
	Schedules              *SchedulesService
	Plugins                *PluginsService
	ChallengeProgression   *ChallengeProgressionService
	PlayerReward           *PlayerRewardService
	ChallengeList          *ChallengeListService
}

func NewChallengeClient(session repository.Session) *ChallengeClient {
	httpClient := NewChallengeHttpClient(session.ConfigRepository)
	return &ChallengeClient{
		ChallengeConfiguration: &ChallengeConfigurationService{Client: httpClient, Session: session},
		Utilities:              &UtilitiesService{Client: httpClient, Session: session},
		GoalConfiguration:      &GoalConfigurationService{Client: httpClient, Session: session},
		Schedules:              &SchedulesService{Client: httpClient, Session: session},
		Plugins:                &PluginsService{Client: httpClient, Session: session},
		ChallengeProgression:   &ChallengeProgressionService{Client: httpClient, Session: session},
		PlayerReward:           &PlayerRewardService{Client: httpClient, Session: session},
		ChallengeList:          &ChallengeListService{Client: httpClient, Session: session},
	}
}

func NewChallengeHttpClient(configRepository repository.ConfigRepository) *challengeclient.JusticeChallengeService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/challenge")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &challengeclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return challengeclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return challengeclient.NewHTTPClient(nil)
	}
}
