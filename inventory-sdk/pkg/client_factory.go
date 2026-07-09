// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inventory

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type InventoryClient struct {
	AdminChainingOperations        *AdminChainingOperationsService
	AdminIntegrationConfigurations *AdminIntegrationConfigurationsService
	AdminInventories               *AdminInventoriesService
	AdminItems                     *AdminItemsService
	AdminInventoryConfigurations   *AdminInventoryConfigurationsService
	AdminItemTypes                 *AdminItemTypesService
	AdminTags                      *AdminTagsService
	PublicInventoryConfigurations  *PublicInventoryConfigurationsService
	PublicItemTypes                *PublicItemTypesService
	PublicTags                     *PublicTagsService
	PublicInventories              *PublicInventoriesService
	PublicItems                    *PublicItemsService
}

func NewInventoryClient(session repository.Session) *InventoryClient {
	httpClient := NewInventoryHttpClient(session.ConfigRepository)
	return &InventoryClient{
		AdminChainingOperations:        &AdminChainingOperationsService{Client: httpClient, Session: session},
		AdminIntegrationConfigurations: &AdminIntegrationConfigurationsService{Client: httpClient, Session: session},
		AdminInventories:               &AdminInventoriesService{Client: httpClient, Session: session},
		AdminItems:                     &AdminItemsService{Client: httpClient, Session: session},
		AdminInventoryConfigurations:   &AdminInventoryConfigurationsService{Client: httpClient, Session: session},
		AdminItemTypes:                 &AdminItemTypesService{Client: httpClient, Session: session},
		AdminTags:                      &AdminTagsService{Client: httpClient, Session: session},
		PublicInventoryConfigurations:  &PublicInventoryConfigurationsService{Client: httpClient, Session: session},
		PublicItemTypes:                &PublicItemTypesService{Client: httpClient, Session: session},
		PublicTags:                     &PublicTagsService{Client: httpClient, Session: session},
		PublicInventories:              &PublicInventoriesService{Client: httpClient, Session: session},
		PublicItems:                    &PublicItemsService{Client: httpClient, Session: session},
	}
}

func NewInventoryHttpClient(configRepository repository.ConfigRepository) *inventoryclient.JusticeInventoryService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/inventory")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &inventoryclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return inventoryclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return inventoryclient.NewHTTPClient(nil)
	}
}
