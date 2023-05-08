// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdpr

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var gdprClientInstance *gdprclient.JusticeGdprService

func NewGdprClient(configRepository repository.ConfigRepository) *gdprclient.JusticeGdprService {
	if gdprClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &gdprclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: GetUserAgent,
			}
			gdprClientInstance = gdprclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			gdprClientInstance = gdprclient.NewHTTPClient(nil)
		}
	}

	return gdprClientInstance
}
