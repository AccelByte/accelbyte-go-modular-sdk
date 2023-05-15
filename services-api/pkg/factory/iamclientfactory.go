//go:build all || iam

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	iam "github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var iamClientInstance *iamclient.JusticeIamService

// NewIamClient
// Deprecated: 2023-03-30 - please use NewIamClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Iam-sdk/pkg"
func NewIamClient(configRepository repository.ConfigRepository) *iamclient.JusticeIamService {
	if iamClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &iamclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: iam.GetUserAgent,
			}
			iamClientInstance = iamclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			iamClientInstance = iamclient.NewHTTPClient(nil)
		}
	}

	return iamClientInstance
}
