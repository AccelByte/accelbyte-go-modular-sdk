//go:build compat || compat_sessionhistory

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	sessionhistory "github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg/sessionhistoryclient"
)

var sessionhistoryClientInstance *sessionhistoryclient.JusticeSessionhistoryService

// NewSessionhistoryClient
// Deprecated: 2023-03-30 - please use NewSessionhistoryClient from "github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg"
func NewSessionhistoryClient(configRepository repository.ConfigRepository) *sessionhistoryclient.JusticeSessionhistoryService {
	if sessionhistoryClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &sessionhistoryclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: sessionhistory.GetUserAgent,
			}
			sessionhistoryClientInstance = sessionhistoryclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			sessionhistoryClientInstance = sessionhistoryclient.NewHTTPClient(nil)
		}
	}

	return sessionhistoryClientInstance
}
