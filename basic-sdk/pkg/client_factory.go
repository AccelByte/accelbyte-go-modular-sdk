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

type BasicClient struct {
	Namespace     *NamespaceService
	Config        *ConfigService
	FileUpload    *FileUploadService
	Misc          *MiscService
	UserProfile   *UserProfileService
	Anonymization *AnonymizationService
}

func NewBasicClient(session repository.Session) *BasicClient {
	httpClient := NewBasicHttpClient(session.ConfigRepository)
	return &BasicClient{
		Namespace:     &NamespaceService{Client: httpClient, Session: session},
		Config:        &ConfigService{Client: httpClient, Session: session},
		FileUpload:    &FileUploadService{Client: httpClient, Session: session},
		Misc:          &MiscService{Client: httpClient, Session: session},
		UserProfile:   &UserProfileService{Client: httpClient, Session: session},
		Anonymization: &AnonymizationService{Client: httpClient, Session: session},
	}
}

func NewBasicHttpClient(configRepository repository.ConfigRepository) *basicclient.JusticeBasicService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/basic")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

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
