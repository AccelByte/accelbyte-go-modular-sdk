//go:build all || gametelemetry

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	gametelemetry "github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg/gametelemetryclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var gametelemetryClientInstance *gametelemetryclient.JusticeGametelemetryService

// NewGametelemetryClient
// Deprecated: please use NewGametelemetryClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Gametelemetry-sdk/pkg"
func NewGametelemetryClient(configRepository repository.ConfigRepository) *gametelemetryclient.JusticeGametelemetryService {
	if gametelemetryClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &gametelemetryclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: gametelemetry.GetUserAgent,
			}
			gametelemetryClientInstance = gametelemetryclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			gametelemetryClientInstance = gametelemetryclient.NewHTTPClient(nil)
		}
	}

	return gametelemetryClientInstance
}
