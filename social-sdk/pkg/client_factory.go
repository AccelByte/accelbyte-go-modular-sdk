// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package social

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient"
)

type SocialClient struct {
	SlotConfig             *SlotConfigService
	GameProfile            *GameProfileService
	Slot                   *SlotService
	GlobalStatistic        *GlobalStatisticService
	StatCycleConfiguration *StatCycleConfigurationService
	UserStatistic          *UserStatisticService
	StatConfiguration      *StatConfigurationService
	UserStatisticCycle     *UserStatisticCycleService
}

func NewSocialClient(session repository.Session) *SocialClient {
	httpClient := NewSocialHttpClient(session.ConfigRepository)
	return &SocialClient{
		SlotConfig:             &SlotConfigService{Client: httpClient, Session: session},
		GameProfile:            &GameProfileService{Client: httpClient, Session: session},
		Slot:                   &SlotService{Client: httpClient, Session: session},
		GlobalStatistic:        &GlobalStatisticService{Client: httpClient, Session: session},
		StatCycleConfiguration: &StatCycleConfigurationService{Client: httpClient, Session: session},
		UserStatistic:          &UserStatisticService{Client: httpClient, Session: session},
		StatConfiguration:      &StatConfigurationService{Client: httpClient, Session: session},
		UserStatisticCycle:     &UserStatisticCycleService{Client: httpClient, Session: session},
	}
}

func NewSocialHttpClient(configRepository repository.ConfigRepository) *socialclient.JusticeSocialService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/social")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &socialclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return socialclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return socialclient.NewHTTPClient(nil)
	}
}
