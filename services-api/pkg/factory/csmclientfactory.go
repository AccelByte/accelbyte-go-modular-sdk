//go:build compat || compat_csm

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	csm "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var csmClientInstance *csmclient.JusticeCsmService

// NewCsmClient
// Deprecated: 2023-03-30 - please use NewCsmClient from "github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg"
func NewCsmClient(configRepository repository.ConfigRepository) *csmclient.JusticeCsmService {
	if csmClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &csmclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: csm.GetUserAgent,
			}
			csmClientInstance = csmclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			csmClientInstance = csmclient.NewHTTPClient(nil)
		}
	}

	return csmClientInstance
}
