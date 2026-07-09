//go:build compat || compat_challenge

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	challenge "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg/challengeclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var challengeClientInstance *challengeclient.JusticeChallengeService

// NewChallengeClient
// Deprecated: 2023-03-30 - please use NewChallengeClient from "github.com/AccelByte/accelbyte-go-modular-sdk/challenge-sdk/pkg"
func NewChallengeClient(configRepository repository.ConfigRepository) *challengeclient.JusticeChallengeService {
	if challengeClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &challengeclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: challenge.GetUserAgent,
			}
			challengeClientInstance = challengeclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			challengeClientInstance = challengeclient.NewHTTPClient(nil)
		}
	}

	return challengeClientInstance
}
