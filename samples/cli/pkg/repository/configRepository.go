// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package repository

import (
	"fmt"
	"os"
	"strings"

	"github.com/AccelByte/sample-apps/pkg/models"
)

type ConfigRepositoryImpl struct {
}

func (configRepository *ConfigRepositoryImpl) GetClientId() string {
	return models.ClientId
}

func (configRepository *ConfigRepositoryImpl) GetClientSecret() string {
	return models.ClientSecret
}

// Empty string will use default base URL provided by SDK
func (configRepository *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return models.JusticeBaseURL
}

func (configRepository *ConfigRepositoryImpl) GetCustomBasePath(servicePath string) string {
	baseUrl := os.Getenv(fmt.Sprintf("AB_%s_BASE_URL", strings.ToUpper(servicePath)))

	customBasePath := os.Getenv(fmt.Sprintf("AB_%s_BASE_PATH", strings.ToUpper(servicePath)))

	if baseUrl == "" && customBasePath == "" {
		return configRepository.GetJusticeBaseUrl()
	}

	if strings.HasPrefix(customBasePath, "/") {
		return baseUrl + customBasePath
	}

	return customBasePath
}
