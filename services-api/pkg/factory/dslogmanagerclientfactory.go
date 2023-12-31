//go:build compat || compat_dslogmanager

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	dslogmanager "github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg/dslogmanagerclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var dslogmanagerClientInstance *dslogmanagerclient.JusticeDslogmanagerService

// NewDslogmanagerClient
// Deprecated: 2023-03-30 - please use NewDslogmanagerClient from "github.com/AccelByte/accelbyte-go-modular-sdk/dslogmanager-sdk/pkg"
func NewDslogmanagerClient(configRepository repository.ConfigRepository) *dslogmanagerclient.JusticeDslogmanagerService {
	if dslogmanagerClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &dslogmanagerclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: dslogmanager.GetUserAgent,
			}
			dslogmanagerClientInstance = dslogmanagerclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			dslogmanagerClientInstance = dslogmanagerclient.NewHTTPClient(nil)
		}
	}

	return dslogmanagerClientInstance
}
