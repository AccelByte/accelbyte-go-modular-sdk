//go:build compat || compat_seasonpass

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	seasonpass "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var seasonpassClientInstance *seasonpassclient.JusticeSeasonpassService

// NewSeasonpassClient
// Deprecated: 2023-03-30 - please use NewSeasonpassClient from "github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg"
func NewSeasonpassClient(configRepository repository.ConfigRepository) *seasonpassclient.JusticeSeasonpassService {
	if seasonpassClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &seasonpassclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: seasonpass.GetUserAgent,
			}
			seasonpassClientInstance = seasonpassclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			seasonpassClientInstance = seasonpassclient.NewHTTPClient(nil)
		}
	}

	return seasonpassClientInstance
}
