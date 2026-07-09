// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdpr

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/gdpr-sdk/pkg/gdprclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type GdprClient struct {
	DataDeletion                  *DataDeletionService
	Configuration                 *ConfigurationService
	PlatformAccountClosureClient  *PlatformAccountClosureClientService
	DataRetrieval                 *DataRetrievalService
	PlatformAccountClosureHistory *PlatformAccountClosureHistoryService
	DataDeletionHeadless          *DataDeletionHeadlessService
	DataRetrievalHeadless         *DataRetrievalHeadlessService
	DataDeletionS2S               *DataDeletionS2SService
	DataRetrievalS2S              *DataRetrievalS2SService
}

func NewGdprClient(session repository.Session) *GdprClient {
	httpClient := NewGdprHttpClient(session.ConfigRepository)
	return &GdprClient{
		DataDeletion:                  &DataDeletionService{Client: httpClient, Session: session},
		Configuration:                 &ConfigurationService{Client: httpClient, Session: session},
		PlatformAccountClosureClient:  &PlatformAccountClosureClientService{Client: httpClient, Session: session},
		DataRetrieval:                 &DataRetrievalService{Client: httpClient, Session: session},
		PlatformAccountClosureHistory: &PlatformAccountClosureHistoryService{Client: httpClient, Session: session},
		DataDeletionHeadless:          &DataDeletionHeadlessService{Client: httpClient, Session: session},
		DataRetrievalHeadless:         &DataRetrievalHeadlessService{Client: httpClient, Session: session},
		DataDeletionS2S:               &DataDeletionS2SService{Client: httpClient, Session: session},
		DataRetrievalS2S:              &DataRetrievalS2SService{Client: httpClient, Session: session},
	}
}

func NewGdprHttpClient(configRepository repository.ConfigRepository) *gdprclient.JusticeGdprService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/gdpr")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &gdprclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return gdprclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return gdprclient.NewHTTPClient(nil)
	}
}
