// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclient"
)

var ugcClientInstance *ugcclient.JusticeUgcService

func NewUgcClient(configRepository repository.ConfigRepository) *ugcclient.JusticeUgcService {
	if ugcClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &ugcclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: GetUserAgent,
			}
			ugcClientInstance = ugcclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			ugcClientInstance = ugcclient.NewHTTPClient(nil)
		}
	}

	return ugcClientInstance
}
