// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package basic

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

func NewBasicClient(configRepository repository.ConfigRepository) *basicclient.JusticeBasicService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &basicclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return basicclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return basicclient.NewHTTPClient(nil)
	}
}
