//go:build all || sessionbrowser

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	sessionbrowser "github.com/AccelByte/accelbyte-go-modular-sdk/sessionbrowser-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionbrowser-sdk/pkg/sessionbrowserclient"
)

var sessionbrowserClientInstance *sessionbrowserclient.JusticeSessionbrowserService

// NewSessionbrowserClient
// Deprecated: 2023-03-30 - please use NewSessionbrowserClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Sessionbrowser-sdk/pkg"
func NewSessionbrowserClient(configRepository repository.ConfigRepository) *sessionbrowserclient.JusticeSessionbrowserService {
	if sessionbrowserClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &sessionbrowserclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: sessionbrowser.GetUserAgent,
			}
			sessionbrowserClientInstance = sessionbrowserclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			sessionbrowserClientInstance = sessionbrowserclient.NewHTTPClient(nil)
		}
	}

	return sessionbrowserClientInstance
}
