//go:build all || legal

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	legal "github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var legalClientInstance *legalclient.JusticeLegalService

// NewLegalClient
// Deprecated: 2023-03-30 - please use NewLegalClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Legal-sdk/pkg"
func NewLegalClient(configRepository repository.ConfigRepository) *legalclient.JusticeLegalService {
	if legalClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &legalclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: legal.GetUserAgent,
			}
			legalClientInstance = legalclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			legalClientInstance = legalclient.NewHTTPClient(nil)
		}
	}

	return legalClientInstance
}
