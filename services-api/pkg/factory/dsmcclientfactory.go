//go:build all || dsmc

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	dsmc "github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var dsmcClientInstance *dsmcclient.JusticeDsmcService

// NewDsmcClient
// Deprecated: 2023-03-30 - please use NewDsmcClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Dsmc-sdk/pkg"
func NewDsmcClient(configRepository repository.ConfigRepository) *dsmcclient.JusticeDsmcService {
	if dsmcClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &dsmcclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: dsmc.GetUserAgent,
			}
			dsmcClientInstance = dsmcclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			dsmcClientInstance = dsmcclient.NewHTTPClient(nil)
		}
	}

	return dsmcClientInstance
}
