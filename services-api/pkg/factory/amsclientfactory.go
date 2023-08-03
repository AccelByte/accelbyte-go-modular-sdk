//go:build compat || compat_ams

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	ams "github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var amsClientInstance *amsclient.JusticeAmsService

// NewAmsClient
// Deprecated: 2023-03-30 - please use NewAmsClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Ams-sdk/pkg"
func NewAmsClient(configRepository repository.ConfigRepository) *amsclient.JusticeAmsService {
	if amsClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &amsclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: ams.GetUserAgent,
			}
			amsClientInstance = amsclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			amsClientInstance = amsclient.NewHTTPClient(nil)
		}
	}

	return amsClientInstance
}
