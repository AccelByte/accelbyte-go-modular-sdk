// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package auth

import (
	"os"

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
