//go:build compat || compat_dsartifact

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	dsartifact "github.com/AccelByte/accelbyte-go-modular-sdk/dsartifact-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsartifact-sdk/pkg/dsartifactclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var dsartifactClientInstance *dsartifactclient.JusticeDsartifactService

// NewDsartifactClient
// Deprecated: 2023-03-30 - please use NewDsartifactClient from "github.com/AccelByte/accelbyte-go-modular-sdk/dsartifact-sdk/pkg"
func NewDsartifactClient(configRepository repository.ConfigRepository) *dsartifactclient.JusticeDsartifactService {
	if dsartifactClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &dsartifactclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: dsartifact.GetUserAgent,
			}
			dsartifactClientInstance = dsartifactclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			dsartifactClientInstance = dsartifactclient.NewHTTPClient(nil)
		}
	}

	return dsartifactClientInstance
}
