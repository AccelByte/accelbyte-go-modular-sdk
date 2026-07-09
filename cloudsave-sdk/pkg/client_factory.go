// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type CloudsaveClient struct {
	AdminRecord              *AdminRecordService
	TTLConfig                *TTLConfigService
	AdminGameBinaryRecord    *AdminGameBinaryRecordService
	AdminConcurrentRecord    *AdminConcurrentRecordService
	PluginConfig             *PluginConfigService
	AdminGameRecord          *AdminGameRecordService
	AdminTags                *AdminTagsService
	AdminPlayerRecord        *AdminPlayerRecordService
	AdminPlayerBinaryRecord  *AdminPlayerBinaryRecordService
	PublicGameBinaryRecord   *PublicGameBinaryRecordService
	ConcurrentRecord         *ConcurrentRecordService
	PublicGameRecord         *PublicGameRecordService
	PublicTags               *PublicTagsService
	PublicPlayerBinaryRecord *PublicPlayerBinaryRecordService
	PublicPlayerRecord       *PublicPlayerRecordService
}

func NewCloudsaveClient(session repository.Session) *CloudsaveClient {
	httpClient := NewCloudsaveHttpClient(session.ConfigRepository)
	return &CloudsaveClient{
		AdminRecord:              &AdminRecordService{Client: httpClient, Session: session},
		TTLConfig:                &TTLConfigService{Client: httpClient, Session: session},
		AdminGameBinaryRecord:    &AdminGameBinaryRecordService{Client: httpClient, Session: session},
		AdminConcurrentRecord:    &AdminConcurrentRecordService{Client: httpClient, Session: session},
		PluginConfig:             &PluginConfigService{Client: httpClient, Session: session},
		AdminGameRecord:          &AdminGameRecordService{Client: httpClient, Session: session},
		AdminTags:                &AdminTagsService{Client: httpClient, Session: session},
		AdminPlayerRecord:        &AdminPlayerRecordService{Client: httpClient, Session: session},
		AdminPlayerBinaryRecord:  &AdminPlayerBinaryRecordService{Client: httpClient, Session: session},
		PublicGameBinaryRecord:   &PublicGameBinaryRecordService{Client: httpClient, Session: session},
		ConcurrentRecord:         &ConcurrentRecordService{Client: httpClient, Session: session},
		PublicGameRecord:         &PublicGameRecordService{Client: httpClient, Session: session},
		PublicTags:               &PublicTagsService{Client: httpClient, Session: session},
		PublicPlayerBinaryRecord: &PublicPlayerBinaryRecordService{Client: httpClient, Session: session},
		PublicPlayerRecord:       &PublicPlayerRecordService{Client: httpClient, Session: session},
	}
}

func NewCloudsaveHttpClient(configRepository repository.ConfigRepository) *cloudsaveclient.JusticeCloudsaveService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/cloudsave")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &cloudsaveclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return cloudsaveclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return cloudsaveclient.NewHTTPClient(nil)
	}
}
