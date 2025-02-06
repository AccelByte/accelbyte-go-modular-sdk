//go:build compat || compat_loginqueue

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	loginqueue "github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg/loginqueueclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var loginqueueClientInstance *loginqueueclient.JusticeLoginqueueService

// NewLoginqueueClient
// Deprecated: 2023-03-30 - please use NewLoginqueueClient from "github.com/AccelByte/accelbyte-go-modular-sdk/loginqueue-sdk/pkg"
func NewLoginqueueClient(configRepository repository.ConfigRepository) *loginqueueclient.JusticeLoginqueueService {
	if loginqueueClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &loginqueueclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: loginqueue.GetUserAgent,
			}
			loginqueueClientInstance = loginqueueclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			loginqueueClientInstance = loginqueueclient.NewHTTPClient(nil)
		}
	}

	return loginqueueClientInstance
}
