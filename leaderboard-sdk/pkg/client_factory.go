// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type LeaderboardClient struct {
	LeaderboardConfiguration   *LeaderboardConfigurationService
	LeaderboardData            *LeaderboardDataService
	Anonymization              *AnonymizationService
	UserData                   *UserDataService
	UserVisibility             *UserVisibilityService
	LeaderboardConfigurationV3 *LeaderboardConfigurationV3Service
	LeaderboardDataV3          *LeaderboardDataV3Service
	UserVisibilityV3           *UserVisibilityV3Service
	UserDataV3                 *UserDataV3Service
}

func NewLeaderboardClient(session repository.Session) *LeaderboardClient {
	httpClient := NewLeaderboardHttpClient(session.ConfigRepository)
	return &LeaderboardClient{
		LeaderboardConfiguration:   &LeaderboardConfigurationService{Client: httpClient, Session: session},
		LeaderboardData:            &LeaderboardDataService{Client: httpClient, Session: session},
		Anonymization:              &AnonymizationService{Client: httpClient, Session: session},
		UserData:                   &UserDataService{Client: httpClient, Session: session},
		UserVisibility:             &UserVisibilityService{Client: httpClient, Session: session},
		LeaderboardConfigurationV3: &LeaderboardConfigurationV3Service{Client: httpClient, Session: session},
		LeaderboardDataV3:          &LeaderboardDataV3Service{Client: httpClient, Session: session},
		UserVisibilityV3:           &UserVisibilityV3Service{Client: httpClient, Session: session},
		UserDataV3:                 &UserDataV3Service{Client: httpClient, Session: session},
	}
}

func NewLeaderboardHttpClient(configRepository repository.ConfigRepository) *leaderboardclient.JusticeLeaderboardService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/leaderboard")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &leaderboardclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return leaderboardclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return leaderboardclient.NewHTTPClient(nil)
	}
}
