// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievement

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/achievement-sdk/pkg/achievementclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type AchievementClient struct {
	Achievements        *AchievementsService
	GlobalAchievements  *GlobalAchievementsService
	PlatformAchievement *PlatformAchievementService
	Tags                *TagsService
	UserAchievements    *UserAchievementsService
	Anonymization       *AnonymizationService
}

func NewAchievementClient(session repository.Session) *AchievementClient {
	httpClient := NewAchievementHttpClient(session.ConfigRepository)
	return &AchievementClient{
		Achievements:        &AchievementsService{Client: httpClient, Session: session},
		GlobalAchievements:  &GlobalAchievementsService{Client: httpClient, Session: session},
		PlatformAchievement: &PlatformAchievementService{Client: httpClient, Session: session},
		Tags:                &TagsService{Client: httpClient, Session: session},
		UserAchievements:    &UserAchievementsService{Client: httpClient, Session: session},
		Anonymization:       &AnonymizationService{Client: httpClient, Session: session},
	}
}

func NewAchievementHttpClient(configRepository repository.ConfigRepository) *achievementclient.JusticeAchievementService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/achievement")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &achievementclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return achievementclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return achievementclient.NewHTTPClient(nil)
	}
}
