//go:build compat || compat_social

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	social "github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclient"
)

var socialClientInstance *socialclient.JusticeSocialService

// NewSocialClient
// Deprecated: 2023-03-30 - please use NewSocialClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Social-sdk/pkg"
func NewSocialClient(configRepository repository.ConfigRepository) *socialclient.JusticeSocialService {
	if socialClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &socialclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: social.GetUserAgent,
			}
			socialClientInstance = socialclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			socialClientInstance = socialclient.NewHTTPClient(nil)
		}
	}

	return socialClientInstance
}
