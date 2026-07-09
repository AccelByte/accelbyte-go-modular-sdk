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

type UgcClient struct {
	AdminChannel              *AdminChannelService
	AdminContent              *AdminContentService
	AdminGroup                *AdminGroupService
	AdminTag                  *AdminTagService
	AdminType                 *AdminTypeService
	Anonymization             *AnonymizationService
	PublicContentLegacy       *PublicContentLegacyService
	PublicFollow              *PublicFollowService
	PublicLikeLegacy          *PublicLikeLegacyService
	PublicDownloadCountLegacy *PublicDownloadCountLegacyService
	PublicTag                 *PublicTagService
	PublicType                *PublicTypeService
	PublicCreator             *PublicCreatorService
	PublicChannel             *PublicChannelService
	PublicGroup               *PublicGroupService
	AdminContentV2            *AdminContentV2Service
	AdminConfig               *AdminConfigService
	AdminStagingContent       *AdminStagingContentService
	PublicContentV2           *PublicContentV2Service
	PublicDownloadCountV2     *PublicDownloadCountV2Service
	PublicLikeV2              *PublicLikeV2Service
	PublicStagingContent      *PublicStagingContentService
}

func NewUgcClient(session repository.Session) *UgcClient {
	httpClient := NewUgcHttpClient(session.ConfigRepository)
	return &UgcClient{
		AdminChannel:              &AdminChannelService{Client: httpClient, Session: session},
		AdminContent:              &AdminContentService{Client: httpClient, Session: session},
		AdminGroup:                &AdminGroupService{Client: httpClient, Session: session},
		AdminTag:                  &AdminTagService{Client: httpClient, Session: session},
		AdminType:                 &AdminTypeService{Client: httpClient, Session: session},
		Anonymization:             &AnonymizationService{Client: httpClient, Session: session},
		PublicContentLegacy:       &PublicContentLegacyService{Client: httpClient, Session: session},
		PublicFollow:              &PublicFollowService{Client: httpClient, Session: session},
		PublicLikeLegacy:          &PublicLikeLegacyService{Client: httpClient, Session: session},
		PublicDownloadCountLegacy: &PublicDownloadCountLegacyService{Client: httpClient, Session: session},
		PublicTag:                 &PublicTagService{Client: httpClient, Session: session},
		PublicType:                &PublicTypeService{Client: httpClient, Session: session},
		PublicCreator:             &PublicCreatorService{Client: httpClient, Session: session},
		PublicChannel:             &PublicChannelService{Client: httpClient, Session: session},
		PublicGroup:               &PublicGroupService{Client: httpClient, Session: session},
		AdminContentV2:            &AdminContentV2Service{Client: httpClient, Session: session},
		AdminConfig:               &AdminConfigService{Client: httpClient, Session: session},
		AdminStagingContent:       &AdminStagingContentService{Client: httpClient, Session: session},
		PublicContentV2:           &PublicContentV2Service{Client: httpClient, Session: session},
		PublicDownloadCountV2:     &PublicDownloadCountV2Service{Client: httpClient, Session: session},
		PublicLikeV2:              &PublicLikeV2Service{Client: httpClient, Session: session},
		PublicStagingContent:      &PublicStagingContentService{Client: httpClient, Session: session},
	}
}

func NewUgcHttpClient(configRepository repository.ConfigRepository) *ugcclient.JusticeUgcService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/ugc")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &ugcclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return ugcclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return ugcclient.NewHTTPClient(nil)
	}
}
