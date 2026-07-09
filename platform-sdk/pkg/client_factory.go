// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform

import (
	"strings"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/repository"
)

type PlatformClient struct {
	FulfillmentScript      *FulfillmentScriptService
	Item                   *ItemService
	Campaign               *CampaignService
	Store                  *StoreService
	ServicePluginConfig    *ServicePluginConfigService
	Category               *CategoryService
	Currency               *CurrencyService
	DLC                    *DLCService
	Entitlement            *EntitlementService
	Fulfillment            *FulfillmentService
	Clawback               *ClawbackService
	IAP                    *IAPService
	IAPSubscription        *IAPSubscriptionService
	IAPNotification        *IAPNotificationService
	Invoice                *InvoiceService
	KeyGroup               *KeyGroupService
	Order                  *OrderService
	PaymentCallbackConfig  *PaymentCallbackConfigService
	PaymentConfig          *PaymentConfigService
	Payment                *PaymentService
	PaymentDedicated       *PaymentDedicatedService
	Platform               *PlatformService
	Wallet                 *WalletService
	Revocation             *RevocationService
	Reward                 *RewardService
	Section                *SectionService
	CatalogChanges         *CatalogChangesService
	Subscription           *SubscriptionService
	Ticket                 *TicketService
	TradeAction            *TradeActionService
	AchievementPlatform    *AchievementPlatformService
	Anonymization          *AnonymizationService
	PlatformAccountClosure *PlatformAccountClosureService
	SessionPlatform        *SessionPlatformService
	View                   *ViewService
	OrderDedicated         *OrderDedicatedService
	PaymentStation         *PaymentStationService
	PaymentAccount         *PaymentAccountService
}

func NewPlatformClient(session repository.Session) *PlatformClient {
	httpClient := NewPlatformHttpClient(session.ConfigRepository)
	return &PlatformClient{
		FulfillmentScript:      &FulfillmentScriptService{Client: httpClient, Session: session},
		Item:                   &ItemService{Client: httpClient, Session: session},
		Campaign:               &CampaignService{Client: httpClient, Session: session},
		Store:                  &StoreService{Client: httpClient, Session: session},
		ServicePluginConfig:    &ServicePluginConfigService{Client: httpClient, Session: session},
		Category:               &CategoryService{Client: httpClient, Session: session},
		Currency:               &CurrencyService{Client: httpClient, Session: session},
		DLC:                    &DLCService{Client: httpClient, Session: session},
		Entitlement:            &EntitlementService{Client: httpClient, Session: session},
		Fulfillment:            &FulfillmentService{Client: httpClient, Session: session},
		Clawback:               &ClawbackService{Client: httpClient, Session: session},
		IAP:                    &IAPService{Client: httpClient, Session: session},
		IAPSubscription:        &IAPSubscriptionService{Client: httpClient, Session: session},
		IAPNotification:        &IAPNotificationService{Client: httpClient, Session: session},
		Invoice:                &InvoiceService{Client: httpClient, Session: session},
		KeyGroup:               &KeyGroupService{Client: httpClient, Session: session},
		Order:                  &OrderService{Client: httpClient, Session: session},
		PaymentCallbackConfig:  &PaymentCallbackConfigService{Client: httpClient, Session: session},
		PaymentConfig:          &PaymentConfigService{Client: httpClient, Session: session},
		Payment:                &PaymentService{Client: httpClient, Session: session},
		PaymentDedicated:       &PaymentDedicatedService{Client: httpClient, Session: session},
		Platform:               &PlatformService{Client: httpClient, Session: session},
		Wallet:                 &WalletService{Client: httpClient, Session: session},
		Revocation:             &RevocationService{Client: httpClient, Session: session},
		Reward:                 &RewardService{Client: httpClient, Session: session},
		Section:                &SectionService{Client: httpClient, Session: session},
		CatalogChanges:         &CatalogChangesService{Client: httpClient, Session: session},
		Subscription:           &SubscriptionService{Client: httpClient, Session: session},
		Ticket:                 &TicketService{Client: httpClient, Session: session},
		TradeAction:            &TradeActionService{Client: httpClient, Session: session},
		AchievementPlatform:    &AchievementPlatformService{Client: httpClient, Session: session},
		Anonymization:          &AnonymizationService{Client: httpClient, Session: session},
		PlatformAccountClosure: &PlatformAccountClosureService{Client: httpClient, Session: session},
		SessionPlatform:        &SessionPlatformService{Client: httpClient, Session: session},
		View:                   &ViewService{Client: httpClient, Session: session},
		OrderDedicated:         &OrderDedicatedService{Client: httpClient, Session: session},
		PaymentStation:         &PaymentStationService{Client: httpClient, Session: session},
		PaymentAccount:         &PaymentAccountService{Client: httpClient, Session: session},
	}
}

func NewPlatformHttpClient(configRepository repository.ConfigRepository) *platformclient.JusticePlatformService {
	baseURL := strings.TrimSuffix(configRepository.GetJusticeBaseUrl(), "/")

	if extendedConfigRepository, ok := configRepository.(repository.ExtendedConfigRepository); ok {
		baseURL = extendedConfigRepository.GetCustomBasePath("/platform")
		baseURL = strings.TrimSuffix(baseURL, "/")
	}

	if len(baseURL) > 0 {
		baseURLSplit := strings.Split(baseURL, "://")
		httpClientConfig := &platformclient.TransportConfig{
			Host:          baseURLSplit[1],
			BasePath:      "",
			Schemes:       []string{baseURLSplit[0]},
			UserAgentFunc: GetUserAgent,
		}
		return platformclient.NewHTTPClientWithConfig(nil, httpClientConfig)
	} else {
		return platformclient.NewHTTPClient(nil)
	}
}
