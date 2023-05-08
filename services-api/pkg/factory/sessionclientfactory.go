//go:build all || session

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	session "github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclient"
)

var sessionClientInstance *sessionclient.JusticeSessionService

// NewSessionClient
// Deprecated: please use NewSessionClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Session-sdk/pkg"
func NewSessionClient(configRepository repository.ConfigRepository) *sessionclient.JusticeSessionService {
	if sessionClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &sessionclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: session.GetUserAgent,
			}
			sessionClientInstance = sessionclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			sessionClientInstance = sessionclient.NewHTTPClient(nil)
		}
	}

	return sessionClientInstance
}
