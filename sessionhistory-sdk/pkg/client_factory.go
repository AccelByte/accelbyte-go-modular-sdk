// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionhistory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionhistory-sdk/pkg/sessionhistoryclient"
)

type SessionhistoryClient struct {
	XRay *XRayService
}

func NewSessionhistoryClient(session repository.Session) *SessionhistoryClient {
	httpClient := NewSessionhistoryHttpClient(session.ConfigRepository)
	return &SessionhistoryClient{
		XRay: &XRayService{Client: httpClient, Session: session},
	}
}

func NewSessionhistoryHttpClient(configRepository repository.ConfigRepository) *sessionhistoryclient.JusticeSessionhistoryService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/sessionhistory")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &sessionhistoryclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return sessionhistoryclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return sessionhistoryclient.NewHTTPClient(nil)
	}
}
