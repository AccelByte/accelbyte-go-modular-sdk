// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/group-sdk/pkg/groupclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var groupClientInstance *groupclient.JusticeGroupService

func NewGroupClient(configRepository repository.ConfigRepository) *groupclient.JusticeGroupService {
	if groupClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &groupclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: GetUserAgent,
			}
			groupClientInstance = groupclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			groupClientInstance = groupclient.NewHTTPClient(nil)
		}
	}

	return groupClientInstance
}
