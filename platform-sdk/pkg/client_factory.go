// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
)

var platformClientInstance *platformclient.JusticePlatformService

func NewPlatformClient(configRepository repository.ConfigRepository) *platformclient.JusticePlatformService {
	if platformClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &platformclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: GetUserAgent,
			}
			platformClientInstance = platformclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			platformClientInstance = platformclient.NewHTTPClient(nil)
		}
	}

	return platformClientInstance
}
