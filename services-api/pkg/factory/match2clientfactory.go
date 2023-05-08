//go:build all || match2

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	match2 "github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2client"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var match2ClientInstance *match2client.JusticeMatch2Service

// NewMatch2Client
// Deprecated: please use NewMatch2Client from "github.com/AccelByte/accelbyte-go-modular-sdk/Match2-sdk/pkg"
func NewMatch2Client(configRepository repository.ConfigRepository) *match2client.JusticeMatch2Service {
	if match2ClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &match2client.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: match2.GetUserAgent,
			}
			match2ClientInstance = match2client.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			match2ClientInstance = match2client.NewHTTPClient(nil)
		}
	}

	return match2ClientInstance
}
