// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var legalClientInstance *legalclient.JusticeLegalService

func NewLegalClient(configRepository repository.ConfigRepository) *legalclient.JusticeLegalService {
	if legalClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &legalclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: GetUserAgent,
			}
			legalClientInstance = legalclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			legalClientInstance = legalclient.NewHTTPClient(nil)
		}
	}

	return legalClientInstance
}
