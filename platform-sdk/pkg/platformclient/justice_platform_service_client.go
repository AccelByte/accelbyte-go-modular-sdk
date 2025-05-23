// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformclient

import (
	"net/http"
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/achievement_platform"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/anonymization"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/campaign"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/catalog_changes"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/category"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/clawback"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/currency"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/entitlement"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/fulfillment_script"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap_notification"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/iap_subscription"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/invoice"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/item"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/order"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/order_dedicated"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_account"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_callback_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_dedicated"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/payment_station"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/platform"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/platform_account_closure"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/revocation"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/section"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/service_plugin_config"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/session_platform"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/store"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/subscription"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/ticket"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/trade_action"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/view"
	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclient/wallet"
	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
)

// Default justice platform service HTTP client.
var Default = NewHTTPClient(nil)

const (
	// DefaultHost is the default Host
	// found in Meta (info) section of spec file
	DefaultHost string = "demo.accelbyte.io"
	// DefaultBasePath is the default BasePath
	// found in Meta (info) section of spec file
	DefaultBasePath string = "/"
)

type userAgentRoundTripper struct {
	userAgentFunc func() string
}

func (r *userAgentRoundTripper) RoundTrip(req *http.Request) (*http.Response, error) {
	req.Header.Set("User-Agent", r.userAgentFunc())
	return http.DefaultTransport.RoundTrip(req)
}

// DefaultSchemes are the default schemes found in Meta (info) section of spec file
var DefaultSchemes = []string{"https"}

// NewHTTPClient creates a new justice platform service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticePlatformService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice platform service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticePlatformService {
	// ensure nullable parameters have default
	if cfg == nil {
		cfg = DefaultTransportConfig()
	}

	// create transport and client
	transport := httptransport.New(cfg.Host, cfg.BasePath, cfg.Schemes)
	if cfg.UserAgentFunc != nil {
		transport.Transport = &userAgentRoundTripper{
			userAgentFunc: cfg.UserAgentFunc,
		}
	}

	// custom transport runtime
	utils.CustomTransportRuntime(transport)

	return New(transport, transport, formats)
}

// New creates a new justice platform service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticePlatformService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticePlatformService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.AchievementPlatform = achievement_platform.New(transport, formats)
	cli.Anonymization = anonymization.New(transport, formats)
	cli.Campaign = campaign.New(transport, formats)
	cli.CatalogChanges = catalog_changes.New(transport, formats)
	cli.Category = category.New(transport, formats)
	cli.Clawback = clawback.New(transport, formats)
	cli.Currency = currency.New(transport, formats)
	cli.DLC = dlc.New(transport, formats)
	cli.Entitlement = entitlement.New(transport, formats)
	cli.Fulfillment = fulfillment.New(transport, formats)
	cli.FulfillmentScript = fulfillment_script.New(transport, formats)
	cli.IAP = iap.New(transport, formats)
	cli.IAPNotification = iap_notification.New(transport, formats)
	cli.IAPSubscription = iap_subscription.New(transport, formats)
	cli.Invoice = invoice.New(transport, formats)
	cli.Item = item.New(transport, formats)
	cli.KeyGroup = key_group.New(transport, formats)
	cli.Order = order.New(transport, formats)
	cli.OrderDedicated = order_dedicated.New(transport, formats)
	cli.Payment = payment.New(transport, formats)
	cli.PaymentDedicated = payment_dedicated.New(transport, formats)
	cli.PaymentAccount = payment_account.New(transport, formats)
	cli.PaymentCallbackConfig = payment_callback_config.New(transport, formats)
	cli.PaymentConfig = payment_config.New(transport, formats)
	cli.PaymentStation = payment_station.New(transport, formats)
	cli.Platform = platform.New(transport, formats)
	cli.PlatformAccountClosure = platform_account_closure.New(transport, formats)
	cli.Revocation = revocation.New(transport, formats)
	cli.Reward = reward.New(transport, formats)
	cli.Section = section.New(transport, formats)
	cli.ServicePluginConfig = service_plugin_config.New(transport, formats)
	cli.SessionPlatform = session_platform.New(transport, formats)
	cli.Store = store.New(transport, formats)
	cli.Subscription = subscription.New(transport, formats)
	cli.Ticket = ticket.New(transport, formats)
	cli.TradeAction = trade_action.New(transport, formats)
	cli.View = view.New(transport, formats)
	cli.Wallet = wallet.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticePlatformService {
	schemes := []string{"http"}
	if strings.HasSuffix(url, ":443") {
		schemes = []string{"https"}
	}

	transport := httptransport.New(url, endpoint, schemes)

	return New(transport, transport, strfmt.Default)
}

// DefaultTransportConfig creates a TransportConfig with the
// default settings taken from the meta section of the spec file.
func DefaultTransportConfig() *TransportConfig {
	return &TransportConfig{
		Host:     DefaultHost,
		BasePath: DefaultBasePath,
		Schemes:  DefaultSchemes,
	}
}

// TransportConfig contains the transport related info,
// found in the meta section of the spec file.
type TransportConfig struct {
	Host          string
	BasePath      string
	Schemes       []string
	UserAgentFunc func() string
}

// WithHost overrides the default host,
// provided by the meta section of the spec file.
func (cfg *TransportConfig) WithHost(host string) *TransportConfig {
	cfg.Host = host
	return cfg
}

// WithBasePath overrides the default basePath,
// provided by the meta section of the spec file.
func (cfg *TransportConfig) WithBasePath(basePath string) *TransportConfig {
	cfg.BasePath = basePath
	return cfg
}

// WithSchemes overrides the default schemes,
// provided by the meta section of the spec file.
func (cfg *TransportConfig) WithSchemes(schemes []string) *TransportConfig {
	cfg.Schemes = schemes
	return cfg
}

// JusticePlatformService is a client for justice platform service
type JusticePlatformService struct {
	AchievementPlatform achievement_platform.ClientService

	Anonymization anonymization.ClientService

	Campaign campaign.ClientService

	CatalogChanges catalog_changes.ClientService

	Category category.ClientService

	Clawback clawback.ClientService

	Currency currency.ClientService

	DLC dlc.ClientService

	Entitlement entitlement.ClientService

	Fulfillment fulfillment.ClientService

	FulfillmentScript fulfillment_script.ClientService

	IAP iap.ClientService

	IAPNotification iap_notification.ClientService

	IAPSubscription iap_subscription.ClientService

	Invoice invoice.ClientService

	Item item.ClientService

	KeyGroup key_group.ClientService

	Order order.ClientService

	OrderDedicated order_dedicated.ClientService

	Payment payment.ClientService

	PaymentDedicated payment_dedicated.ClientService

	PaymentAccount payment_account.ClientService

	PaymentCallbackConfig payment_callback_config.ClientService

	PaymentConfig payment_config.ClientService

	PaymentStation payment_station.ClientService

	Platform platform.ClientService

	PlatformAccountClosure platform_account_closure.ClientService

	Revocation revocation.ClientService

	Reward reward.ClientService

	Section section.ClientService

	ServicePluginConfig service_plugin_config.ClientService

	SessionPlatform session_platform.ClientService

	Store store.ClientService

	Subscription subscription.ClientService

	Ticket ticket.ClientService

	TradeAction trade_action.ClientService

	View view.ClientService

	Wallet wallet.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticePlatformService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.AchievementPlatform.SetTransport(transport)
	c.Anonymization.SetTransport(transport)
	c.Campaign.SetTransport(transport)
	c.CatalogChanges.SetTransport(transport)
	c.Category.SetTransport(transport)
	c.Clawback.SetTransport(transport)
	c.Currency.SetTransport(transport)
	c.DLC.SetTransport(transport)
	c.Entitlement.SetTransport(transport)
	c.Fulfillment.SetTransport(transport)
	c.FulfillmentScript.SetTransport(transport)
	c.IAP.SetTransport(transport)
	c.IAPNotification.SetTransport(transport)
	c.IAPSubscription.SetTransport(transport)
	c.Invoice.SetTransport(transport)
	c.Item.SetTransport(transport)
	c.KeyGroup.SetTransport(transport)
	c.Order.SetTransport(transport)
	c.OrderDedicated.SetTransport(transport)
	c.Payment.SetTransport(transport)
	c.PaymentDedicated.SetTransport(transport)
	c.PaymentAccount.SetTransport(transport)
	c.PaymentCallbackConfig.SetTransport(transport)
	c.PaymentConfig.SetTransport(transport)
	c.PaymentStation.SetTransport(transport)
	c.Platform.SetTransport(transport)
	c.PlatformAccountClosure.SetTransport(transport)
	c.Revocation.SetTransport(transport)
	c.Reward.SetTransport(transport)
	c.Section.SetTransport(transport)
	c.ServicePluginConfig.SetTransport(transport)
	c.SessionPlatform.SetTransport(transport)
	c.Store.SetTransport(transport)
	c.Subscription.SetTransport(transport)
	c.Ticket.SetTransport(transport)
	c.TradeAction.SetTransport(transport)
	c.View.SetTransport(transport)
	c.Wallet.SetTransport(transport)
}
