//go:build compat || compat_reporting

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	reporting "github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var reportingClientInstance *reportingclient.JusticeReportingService

// NewReportingClient
// Deprecated: 2023-03-30 - please use NewReportingClient from "github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg"
func NewReportingClient(configRepository repository.ConfigRepository) *reportingclient.JusticeReportingService {
	if reportingClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &reportingclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: reporting.GetUserAgent,
			}
			reportingClientInstance = reportingclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			reportingClientInstance = reportingclient.NewHTTPClient(nil)
		}
	}

	return reportingClientInstance
}
