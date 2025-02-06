// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package loginqueue

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg/loginqueueclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

func NewLoginqueueClient(configRepository repository.ConfigRepository) *loginqueueclient.JusticeLoginqueueService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/loginqueue")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &loginqueueclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return loginqueueclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return loginqueueclient.NewHTTPClient(nil)
	}
}
