// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match2

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type Match2Client struct {
	Operations           *OperationsService
	Config               *ConfigService
	PlayFeatureFlag      *PlayFeatureFlagService
	XRayConfig           *XRayConfigService
	EnvironmentVariables *EnvironmentVariablesService
	Backfill             *BackfillService
	MatchFunctions       *MatchFunctionsService
	MatchPools           *MatchPoolsService
	MatchTickets         *MatchTicketsService
	RuleSets             *RuleSetsService
}

func NewMatch2Client(session repository.Session) *Match2Client {
	httpClient := NewMatch2HttpClient(session.ConfigRepository)
	return &Match2Client{
		Operations:           &OperationsService{Client: httpClient, Session: session},
		Config:               &ConfigService{Client: httpClient, Session: session},
		PlayFeatureFlag:      &PlayFeatureFlagService{Client: httpClient, Session: session},
		XRayConfig:           &XRayConfigService{Client: httpClient, Session: session},
		EnvironmentVariables: &EnvironmentVariablesService{Client: httpClient, Session: session},
		Backfill:             &BackfillService{Client: httpClient, Session: session},
		MatchFunctions:       &MatchFunctionsService{Client: httpClient, Session: session},
		MatchPools:           &MatchPoolsService{Client: httpClient, Session: session},
		MatchTickets:         &MatchTicketsService{Client: httpClient, Session: session},
		RuleSets:             &RuleSetsService{Client: httpClient, Session: session},
	}
}

func NewMatch2HttpClient(configRepository repository.ConfigRepository) *match2client.JusticeMatch2Service {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/match2")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &match2client.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return match2client.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return match2client.NewHTTPClient(nil)
	}
}
