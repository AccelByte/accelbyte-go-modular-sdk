//go:build all || platform

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	platform "github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var platformClientInstance *platformclient.JusticePlatformService

// NewPlatformClient
// Deprecated: 2023-03-30 - please use NewPlatformClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Platform-sdk/pkg"
func NewPlatformClient(configRepository repository.ConfigRepository) *platformclient.JusticePlatformService {
	if platformClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &platformclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: platform.GetUserAgent,
			}
			platformClientInstance = platformclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			platformClientInstance = platformclient.NewHTTPClient(nil)
		}
	}

	return platformClientInstance
}
