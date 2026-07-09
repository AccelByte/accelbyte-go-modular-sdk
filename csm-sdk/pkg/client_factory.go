// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type CsmClient struct {
	AppUI                      *AppUIService
	App                        *AppService
	Deployment                 *DeploymentService
	Image                      *ImageService
	Configuration              *ConfigurationService
	ExtendFiles                *ExtendFilesService
	Messages                   *MessagesService
	AppV2                      *AppV2Service
	AsyncMessaging             *AsyncMessagingService
	DeploymentV2               *DeploymentV2Service
	ImageV2                    *ImageV2Service
	ManagedResourcesKeyValue   *ManagedResourcesKeyValueService
	ManagedResources           *ManagedResourcesService
	ConfigurationV2            *ConfigurationV2Service
	ManagedResourcesSQL        *ManagedResourcesSQLService
	NotificationSubscription   *NotificationSubscriptionService
	ResourcesLimits            *ResourcesLimitsService
	NotificationSubscriptionV3 *NotificationSubscriptionV3Service
	AppV4                      *AppV4Service
	AppStatusProgressV4        *AppStatusProgressV4Service
	AppV5                      *AppV5Service
}

func NewCsmClient(session repository.Session) *CsmClient {
	httpClient := NewCsmHttpClient(session.ConfigRepository)
	return &CsmClient{
		AppUI:                      &AppUIService{Client: httpClient, Session: session},
		App:                        &AppService{Client: httpClient, Session: session},
		Deployment:                 &DeploymentService{Client: httpClient, Session: session},
		Image:                      &ImageService{Client: httpClient, Session: session},
		Configuration:              &ConfigurationService{Client: httpClient, Session: session},
		ExtendFiles:                &ExtendFilesService{Client: httpClient, Session: session},
		Messages:                   &MessagesService{Client: httpClient, Session: session},
		AppV2:                      &AppV2Service{Client: httpClient, Session: session},
		AsyncMessaging:             &AsyncMessagingService{Client: httpClient, Session: session},
		DeploymentV2:               &DeploymentV2Service{Client: httpClient, Session: session},
		ImageV2:                    &ImageV2Service{Client: httpClient, Session: session},
		ManagedResourcesKeyValue:   &ManagedResourcesKeyValueService{Client: httpClient, Session: session},
		ManagedResources:           &ManagedResourcesService{Client: httpClient, Session: session},
		ConfigurationV2:            &ConfigurationV2Service{Client: httpClient, Session: session},
		ManagedResourcesSQL:        &ManagedResourcesSQLService{Client: httpClient, Session: session},
		NotificationSubscription:   &NotificationSubscriptionService{Client: httpClient, Session: session},
		ResourcesLimits:            &ResourcesLimitsService{Client: httpClient, Session: session},
		NotificationSubscriptionV3: &NotificationSubscriptionV3Service{Client: httpClient, Session: session},
		AppV4:                      &AppV4Service{Client: httpClient, Session: session},
		AppStatusProgressV4:        &AppStatusProgressV4Service{Client: httpClient, Session: session},
		AppV5:                      &AppV5Service{Client: httpClient, Session: session},
	}
}

func NewCsmHttpClient(configRepository repository.ConfigRepository) *csmclient.JusticeCsmService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/csm")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &csmclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return csmclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return csmclient.NewHTTPClient(nil)
	}
}
