// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dslogmanager

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

func NewDslogmanagerClient(configRepository repository.ConfigRepository) *dslogmanagerclient.JusticeDslogmanagerService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/dslogmanager")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &dslogmanagerclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return dslogmanagerclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return dslogmanagerclient.NewHTTPClient(nil)
	}
}
