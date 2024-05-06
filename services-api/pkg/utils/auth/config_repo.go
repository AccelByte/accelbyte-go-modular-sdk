// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"fmt"
	"os"
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/constant"
)

type ConfigRepositoryImpl struct {
	ClientId     string
	ClientSecret string
	BaseUrl      string
}

func DefaultConfigRepositoryImpl() *ConfigRepositoryImpl {
	return &ConfigRepositoryImpl{
		ClientId:     os.Getenv(constant.EnvClientID),
		ClientSecret: os.Getenv(constant.EnvClientSecret),
		BaseUrl:      os.Getenv(constant.EnvBaseURL),
	}
}

func (c *ConfigRepositoryImpl) GetClientId() string {
	return c.ClientId
}

func (c *ConfigRepositoryImpl) GetClientSecret() string {
	return c.ClientSecret
}

func (c *ConfigRepositoryImpl) GetJusticeBaseUrl() string {
	return c.BaseUrl
}

type ExtendedDefaultConfigRepositoryImpl struct {
	ConfigRepositoryImpl
	listBaseURL  map[string]string
	listBasePath map[string]string
}

func ExtendedDefaultConfigRepository() *ExtendedDefaultConfigRepositoryImpl {

	defaultConfigRepository := DefaultConfigRepositoryImpl()

	return &ExtendedDefaultConfigRepositoryImpl{
		ConfigRepositoryImpl: *defaultConfigRepository,
		listBaseURL:          map[string]string{},
		listBasePath:         map[string]string{},
	}
}

func (c *ExtendedDefaultConfigRepositoryImpl) GetCustomBasePath(servicePath string) string {
	servicePathTrimmed := strings.TrimPrefix(servicePath, "/")
	baseURL := strings.TrimSuffix(c.GetBaseURL(servicePathTrimmed), "/")
	if baseURL == "" {
		baseURL = c.GetJusticeBaseUrl()
	}

	if strings.HasPrefix(servicePath, "/") {
		return fmt.Sprintf("%s/%s", baseURL, servicePathTrimmed)
	}

	return c.GetBasePath(servicePathTrimmed)
}

func (c *ExtendedDefaultConfigRepositoryImpl) GetBaseURL(servicePath string) string {
	if _, ok := c.listBaseURL[servicePath]; !ok {
		c.listBaseURL[servicePath] = os.Getenv(fmt.Sprintf("AB_%s_BASE_URL", strings.ToUpper(servicePath)))
	}

	return c.listBaseURL[servicePath]
}

func (c *ExtendedDefaultConfigRepositoryImpl) GetBasePath(servicePath string) string {
	if _, ok := c.listBasePath[servicePath]; !ok {
		c.listBasePath[servicePath] = os.Getenv(fmt.Sprintf("AB_%s_BASE_PATH", strings.ToUpper(servicePath)))
	}

	return c.listBasePath[servicePath]
}
