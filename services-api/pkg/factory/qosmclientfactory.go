//go:build all || qosm

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	qosm "github.com/AccelByte/accelbyte-go-modular-sdk/qosm-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/qosm-sdk/pkg/qosmclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var qosmClientInstance *qosmclient.JusticeQosmService

// NewQosmClient
// Deprecated: please use NewQosmClient from "github.com/AccelByte/accelbyte-go-modular-sdk/Qosm-sdk/pkg"
func NewQosmClient(configRepository repository.ConfigRepository) *qosmclient.JusticeQosmService {
	if qosmClientInstance == nil {
		baseURL := configRepository.GetJusticeBaseUrl()
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &qosmclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: qosm.GetUserAgent,
			}
			qosmClientInstance = qosmclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			qosmClientInstance = qosmclient.NewHTTPClient(nil)
		}
	}

	return qosmClientInstance
}
