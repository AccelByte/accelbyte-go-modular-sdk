//go:build compat || compat_inventory

// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package factory

import (
	"strings"

	inventory "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

var inventoryClientInstance *inventoryclient.JusticeInventoryService

// NewInventoryClient
// Deprecated: 2023-03-30 - please use NewInventoryClient from "github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg"
func NewInventoryClient(configRepository repository.ConfigRepository) *inventoryclient.JusticeInventoryService {
	if inventoryClientInstance == nil {
		baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")
		if len(baseURL) > 0 {
			baseURLSplit := strings.Split(baseURL, "://")
			httpClientConfig := &inventoryclient.TransportConfig{
				Host:          baseURLSplit[1],
				BasePath:      "",
				Schemes:       []string{baseURLSplit[0]},
				UserAgentFunc: inventory.GetUserAgent,
			}
			inventoryClientInstance = inventoryclient.NewHTTPClientWithConfig(nil, httpClientConfig)
		} else {
			inventoryClientInstance = inventoryclient.NewHTTPClient(nil)
		}
	}

	return inventoryClientInstance
}
