// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package seasonpass

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type SeasonpassClient struct {
	Export    *ExportService
	Season    *SeasonService
	Utilities *UtilitiesService
	Pass      *PassService
	Reward    *RewardService
	Tier      *TierService
}

func NewSeasonpassClient(session repository.Session) *SeasonpassClient {
	httpClient := NewSeasonpassHttpClient(session.ConfigRepository)
	return &SeasonpassClient{
		Export:    &ExportService{Client: httpClient, Session: session},
		Season:    &SeasonService{Client: httpClient, Session: session},
		Utilities: &UtilitiesService{Client: httpClient, Session: session},
		Pass:      &PassService{Client: httpClient, Session: session},
		Reward:    &RewardService{Client: httpClient, Session: session},
		Tier:      &TierService{Client: httpClient, Session: session},
	}
}

func NewSeasonpassHttpClient(configRepository repository.ConfigRepository) *seasonpassclient.JusticeSeasonpassService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/seasonpass")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &seasonpassclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return seasonpassclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return seasonpassclient.NewHTTPClient(nil)
	}
}
