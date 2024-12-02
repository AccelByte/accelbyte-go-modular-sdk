// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPaymentMerchantConfigShort(params *GetPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentMerchantConfigResponse, error)
	UpdatePaymentDomainWhitelistConfigShort(params *UpdatePaymentDomainWhitelistConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentDomainWhitelistConfigResponse, error)
	TestAdyenConfigShort(params *TestAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigResponse, error)
	TestAliPayConfigShort(params *TestAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigResponse, error)
	TestCheckoutConfigShort(params *TestCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigResponse, error)
	DebugMatchedPaymentMerchantConfigShort(params *DebugMatchedPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentMerchantConfigResponse, error)
	TestNeonPayConfigShort(params *TestNeonPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestNeonPayConfigResponse, error)
	TestPayPalConfigShort(params *TestPayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigResponse, error)
	TestStripeConfigShort(params *TestStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigResponse, error)
	TestWxPayConfigShort(params *TestWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigResponse, error)
	TestXsollaConfigShort(params *TestXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigResponse, error)
	GetPaymentMerchantConfig1Short(params *GetPaymentMerchantConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentMerchantConfig1Response, error)
	UpdateAdyenConfigShort(params *UpdateAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdyenConfigResponse, error)
	TestAdyenConfigByIDShort(params *TestAdyenConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigByIDResponse, error)
	UpdateAliPayConfigShort(params *UpdateAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAliPayConfigResponse, error)
	TestAliPayConfigByIDShort(params *TestAliPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigByIDResponse, error)
	UpdateCheckoutConfigShort(params *UpdateCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCheckoutConfigResponse, error)
	TestCheckoutConfigByIDShort(params *TestCheckoutConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigByIDResponse, error)
	UpdateNeonPayConfigShort(params *UpdateNeonPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNeonPayConfigResponse, error)
	TestNeonPayConfigByIDShort(params *TestNeonPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestNeonPayConfigByIDResponse, error)
	UpdatePayPalConfigShort(params *UpdatePayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePayPalConfigResponse, error)
	TestPayPalConfigByIDShort(params *TestPayPalConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigByIDResponse, error)
	UpdateStripeConfigShort(params *UpdateStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStripeConfigResponse, error)
	TestStripeConfigByIDShort(params *TestStripeConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigByIDResponse, error)
	UpdateWxPayConfigShort(params *UpdateWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigResponse, error)
	UpdateWxPayConfigCertShort(params *UpdateWxPayConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigCertResponse, error)
	TestWxPayConfigByIDShort(params *TestWxPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigByIDResponse, error)
	UpdateXsollaConfigShort(params *UpdateXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaConfigResponse, error)
	TestXsollaConfigByIDShort(params *TestXsollaConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigByIDResponse, error)
	UpdateXsollaUIConfigShort(params *UpdateXsollaUIConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaUIConfigResponse, error)
	QueryPaymentProviderConfigShort(params *QueryPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentProviderConfigResponse, error)
	CreatePaymentProviderConfigShort(params *CreatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentProviderConfigResponse, error)
	GetAggregatePaymentProvidersShort(params *GetAggregatePaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetAggregatePaymentProvidersResponse, error)
	DebugMatchedPaymentProviderConfigShort(params *DebugMatchedPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentProviderConfigResponse, error)
	GetSpecialPaymentProvidersShort(params *GetSpecialPaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetSpecialPaymentProvidersResponse, error)
	UpdatePaymentProviderConfigShort(params *UpdatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentProviderConfigResponse, error)
	DeletePaymentProviderConfigShort(params *DeletePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePaymentProviderConfigResponse, error)
	GetPaymentTaxConfigShort(params *GetPaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentTaxConfigResponse, error)
	UpdatePaymentTaxConfigShort(params *UpdatePaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentTaxConfigResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetPaymentMerchantConfigShort get payment domain whitelist config
 [Not supported yet in AGS Shared Cloud] Get payment domain whitelist config by namespace.
Other detail info:

  * Returns : payment domain whitelist config info
*/
func (a *Client) GetPaymentMerchantConfigShort(params *GetPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentMerchantConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentMerchantConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentMerchantConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/config/domains",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentMerchantConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentMerchantConfigOK:
		response := &GetPaymentMerchantConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePaymentDomainWhitelistConfigShort update payment domain whitelist config
 [Not supported yet in AGS Shared Cloud] Update payment provider config by namespace.



     Request Body Parameters:


     Parameter | Type   | Required | Description
    -----------|--------|----------|--------------------------------------------------
    domains    | String | Yes      | list of domains to whitelist for the return URL.



Other detail info:

  * Validation : the domain should include the protocol (http/https), but the whitelist check will only compare the host part (www.example.com)
  *  Returns : payment domain whitelist config
*/
func (a *Client) UpdatePaymentDomainWhitelistConfigShort(params *UpdatePaymentDomainWhitelistConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentDomainWhitelistConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePaymentDomainWhitelistConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePaymentDomainWhitelistConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/config/domains",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePaymentDomainWhitelistConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePaymentDomainWhitelistConfigOK:
		response := &UpdatePaymentDomainWhitelistConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePaymentDomainWhitelistConfigUnprocessableEntity:
		response := &UpdatePaymentDomainWhitelistConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestAdyenConfigShort test adyen configuration
 [Not supported yet in AGS Shared Cloud] Test adyen configuration.

#### Check List:

  * apiKey
  * merchantAccount



#### Non-check list:

  * notificationHmacKey
  * notificationUsername
  * notificationPassword
  * liveEndpointUrlPrefix
  * allowedPaymentMethods
  * blockedPaymentMethods
  * settings

Other detail info:
  * Returns : test adyen config
*/
func (a *Client) TestAdyenConfigShort(params *TestAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAdyenConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAdyenConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/adyenconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAdyenConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAdyenConfigOK:
		response := &TestAdyenConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestAliPayConfigShort test alipay configuration
 [Not supported yet in AGS Shared Cloud] Test AliPay configuration.Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
Other detail info:

  * Returns : test result
*/
func (a *Client) TestAliPayConfigShort(params *TestAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAliPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAliPayConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/alipayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAliPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAliPayConfigOK:
		response := &TestAliPayConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestCheckoutConfigShort test checkout.com configuration
 [Not supported yet in AGS Shared Cloud] Test checkout.com configuration.

#### Check List:

  * publicKey
  * secretKey

Other detail info:
  * Returns : test result
*/
func (a *Client) TestCheckoutConfigShort(params *TestCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestCheckoutConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testCheckoutConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/checkoutconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestCheckoutConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestCheckoutConfigOK:
		response := &TestCheckoutConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebugMatchedPaymentMerchantConfigShort debug matched payment merchant config(internal)
 [Not supported yet in AGS Shared Cloud] Debug matched payment merchant config.
Other detail info:

  * Returns : payment merchant config info
*/
func (a *Client) DebugMatchedPaymentMerchantConfigShort(params *DebugMatchedPaymentMerchantConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentMerchantConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebugMatchedPaymentMerchantConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debugMatchedPaymentMerchantConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/matched",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebugMatchedPaymentMerchantConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebugMatchedPaymentMerchantConfigOK:
		response := &DebugMatchedPaymentMerchantConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DebugMatchedPaymentMerchantConfigNotFound:
		response := &DebugMatchedPaymentMerchantConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestNeonPayConfigShort test neon pay configuration
 [Not supported yet in AGS Shared Cloud] Check Neon Pay configuration, Reference: [Neon Pay Document](https://docs.neonpay.com/docs/checkout).

#### Check List:

  * apiKey
  * webhookSecretKey

Other detail info:
  * Returns : test result
*/
func (a *Client) TestNeonPayConfigShort(params *TestNeonPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestNeonPayConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestNeonPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testNeonPayConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/neonpayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestNeonPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestNeonPayConfigOK:
		response := &TestNeonPayConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestPayPalConfigShort test paypal configuration
 [Not supported yet in AGS Shared Cloud] Test PayPal configuration.

#### Check List:

  * clientID
  * clientSecret



#### Non-check list:

  * webHookId

Other detail info:
  * Returns : test result
*/
func (a *Client) TestPayPalConfigShort(params *TestPayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestPayPalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testPayPalConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/paypalconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestPayPalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestPayPalConfigOK:
		response := &TestPayPalConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestStripeConfigShort test stripe configuration
 [Not supported yet in AGS Shared Cloud] Test stripe configuration.

#### Check List:

  * secretKey
  * allowedPaymentMethodTypes



#### Non-check list:

  * publishableKey
  * webhookSecret

Other detail info:
  * Returns : test adyen config
*/
func (a *Client) TestStripeConfigShort(params *TestStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestStripeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testStripeConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/stripeconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestStripeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestStripeConfigOK:
		response := &TestStripeConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestWxPayConfigShort test wxpay configuration
 [Not supported yet in AGS Shared Cloud] Test WxPay configuration. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
Other detail info:

  * Returns : test WxPay config
*/
func (a *Client) TestWxPayConfigShort(params *TestWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestWxPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testWxPayConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/wxpayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestWxPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestWxPayConfigOK:
		response := &TestWxPayConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestXsollaConfigShort test xsolla configuration
 [Not supported yet in AGS Shared Cloud] Check xsolla configuration, Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).

#### Check List:

  * merchantId
  * projectId
  * apiKey



#### Non-check list:

  * projectSecretKey

Other detail info:
  * Returns : test result
*/
func (a *Client) TestXsollaConfigShort(params *TestXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestXsollaConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testXsollaConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/merchant/xsollaconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestXsollaConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestXsollaConfigOK:
		response := &TestXsollaConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentMerchantConfig1Short get payment merchant config
 [Not supported yet in AGS Shared Cloud] Get payment merchant config by id.
Other detail info:

  * Returns : payment merchant config info
*/
func (a *Client) GetPaymentMerchantConfig1Short(params *GetPaymentMerchantConfig1Params, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentMerchantConfig1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentMerchantConfig1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentMerchantConfig_1",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentMerchantConfig1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentMerchantConfig1OK:
		response := &GetPaymentMerchantConfig1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPaymentMerchantConfig1NotFound:
		response := &GetPaymentMerchantConfig1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAdyenConfigShort update adyen config
 [Not supported yet in AGS Shared Cloud] Update adyen config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateAdyenConfigShort(params *UpdateAdyenConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAdyenConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAdyenConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateAdyenConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/adyenconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAdyenConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAdyenConfigOK:
		response := &UpdateAdyenConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateAdyenConfigNotFound:
		response := &UpdateAdyenConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestAdyenConfigByIDShort test adyen configuration by id
 [Not supported yet in AGS Shared Cloud] Test adyen configuration in payment merchant config. Other detail info:

  * Returns : test adyen config
*/
func (a *Client) TestAdyenConfigByIDShort(params *TestAdyenConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAdyenConfigByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAdyenConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAdyenConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/adyenconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAdyenConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAdyenConfigByIDOK:
		response := &TestAdyenConfigByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TestAdyenConfigByIDNotFound:
		response := &TestAdyenConfigByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAliPayConfigShort update alipay configuration
 [Not supported yet in AGS Shared Cloud] Update alipay configuration.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateAliPayConfigShort(params *UpdateAliPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAliPayConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAliPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateAliPayConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/alipayconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAliPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAliPayConfigOK:
		response := &UpdateAliPayConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateAliPayConfigNotFound:
		response := &UpdateAliPayConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestAliPayConfigByIDShort test alipay configuration by id
 [Not supported yet in AGS Shared Cloud] Test AliPay configuration in payment merchant config. Reference: [Alipay Document](https://docs.open.alipay.com/270/alipay.trade.page.pay).
Other detail info:

  * Returns : test alipay config
*/
func (a *Client) TestAliPayConfigByIDShort(params *TestAliPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestAliPayConfigByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestAliPayConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testAliPayConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/alipayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestAliPayConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestAliPayConfigByIDOK:
		response := &TestAliPayConfigByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TestAliPayConfigByIDNotFound:
		response := &TestAliPayConfigByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateCheckoutConfigShort update checkout.com config
 [Not supported yet in AGS Shared Cloud] Update checkout.com config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateCheckoutConfigShort(params *UpdateCheckoutConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateCheckoutConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateCheckoutConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateCheckoutConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/checkoutconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateCheckoutConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateCheckoutConfigOK:
		response := &UpdateCheckoutConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateCheckoutConfigNotFound:
		response := &UpdateCheckoutConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestCheckoutConfigByIDShort test checkout.com configuration by id
 [Not supported yet in AGS Shared Cloud] Test checkout.com configuration in payment merchant config. Other detail info:

  * Returns : test result
*/
func (a *Client) TestCheckoutConfigByIDShort(params *TestCheckoutConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestCheckoutConfigByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestCheckoutConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testCheckoutConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/checkoutconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestCheckoutConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestCheckoutConfigByIDOK:
		response := &TestCheckoutConfigByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TestCheckoutConfigByIDNotFound:
		response := &TestCheckoutConfigByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateNeonPayConfigShort update neon pay config
 [Not supported yet in AGS Shared Cloud] Update Neon Pay config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateNeonPayConfigShort(params *UpdateNeonPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNeonPayConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNeonPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateNeonPayConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/neonpayconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNeonPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNeonPayConfigOK:
		response := &UpdateNeonPayConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateNeonPayConfigNotFound:
		response := &UpdateNeonPayConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestNeonPayConfigByIDShort test neon pay configuration by id
 [Not supported yet in AGS Shared Cloud] Test Neon Pay configuration in payment merchant config. Other detail info:

  * Returns : test result
*/
func (a *Client) TestNeonPayConfigByIDShort(params *TestNeonPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestNeonPayConfigByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestNeonPayConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testNeonPayConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/neonpayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestNeonPayConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestNeonPayConfigByIDOK:
		response := &TestNeonPayConfigByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TestNeonPayConfigByIDNotFound:
		response := &TestNeonPayConfigByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePayPalConfigShort update paypal config
 [Not supported yet in AGS Shared Cloud] Update PayPal config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdatePayPalConfigShort(params *UpdatePayPalConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePayPalConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePayPalConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePayPalConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/paypalconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePayPalConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePayPalConfigOK:
		response := &UpdatePayPalConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePayPalConfigNotFound:
		response := &UpdatePayPalConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestPayPalConfigByIDShort test paypal configuration by id
 [Not supported yet in AGS Shared Cloud] Test PayPal configuration in payment merchant config. Other detail info:

  * Returns : test result
*/
func (a *Client) TestPayPalConfigByIDShort(params *TestPayPalConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestPayPalConfigByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestPayPalConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testPayPalConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/paypalconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestPayPalConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestPayPalConfigByIDOK:
		response := &TestPayPalConfigByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TestPayPalConfigByIDNotFound:
		response := &TestPayPalConfigByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateStripeConfigShort update stripe config
 [Not supported yet in AGS Shared Cloud] Update stripe config.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateStripeConfigShort(params *UpdateStripeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateStripeConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateStripeConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateStripeConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/stripeconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateStripeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateStripeConfigOK:
		response := &UpdateStripeConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateStripeConfigNotFound:
		response := &UpdateStripeConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestStripeConfigByIDShort test stripe configuration by id
 [Not supported yet in AGS Shared Cloud] Test stripe configuration in payment merchant config. Other detail info:

  * Returns : test adyen config
*/
func (a *Client) TestStripeConfigByIDShort(params *TestStripeConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestStripeConfigByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestStripeConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testStripeConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/stripeconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestStripeConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestStripeConfigByIDOK:
		response := &TestStripeConfigByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TestStripeConfigByIDNotFound:
		response := &TestStripeConfigByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateWxPayConfigShort update wxpay configuration
 [Not supported yet in AGS Shared Cloud] Update wxpay configuration.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateWxPayConfigShort(params *UpdateWxPayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateWxPayConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateWxPayConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/wxpayconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateWxPayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateWxPayConfigOK:
		response := &UpdateWxPayConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateWxPayConfigNotFound:
		response := &UpdateWxPayConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateWxPayConfigCertShort upload wxpay cert file
 [Not supported yet in AGS Shared Cloud] Upload wxpay cert file.
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateWxPayConfigCertShort(params *UpdateWxPayConfigCertParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateWxPayConfigCertResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateWxPayConfigCertParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateWxPayConfigCert",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/wxpayconfig/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateWxPayConfigCertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateWxPayConfigCertOK:
		response := &UpdateWxPayConfigCertResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateWxPayConfigCertNotFound:
		response := &UpdateWxPayConfigCertResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestWxPayConfigByIDShort test wxpay configuration by id
 [Not supported yet in AGS Shared Cloud] Test WxPay configuration in payment merchant config. Reference: [WxPay Document](https://pay.weixin.qq.com/wiki/doc/api/native.php?chapter=9_1).
Other detail info:

  * Returns : test WxPay config
*/
func (a *Client) TestWxPayConfigByIDShort(params *TestWxPayConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestWxPayConfigByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestWxPayConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testWxPayConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/wxpayconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestWxPayConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestWxPayConfigByIDOK:
		response := &TestWxPayConfigByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TestWxPayConfigByIDNotFound:
		response := &TestWxPayConfigByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXsollaConfigShort update xsolla configuration
 [Not supported yet in AGS Shared Cloud] Update xsolla configuration. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateXsollaConfigShort(params *UpdateXsollaConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXsollaConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXsollaConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/xsollaconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXsollaConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXsollaConfigOK:
		response := &UpdateXsollaConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateXsollaConfigNotFound:
		response := &UpdateXsollaConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TestXsollaConfigByIDShort test xsolla configuration by id
 [Not supported yet in AGS Shared Cloud] Test xsolla configuration in payment merchant config. Reference: [Xsolla Document](https://developers.xsolla.com/?#simple-checkout).
Other detail info:

  * Returns : test xsolla config
*/
func (a *Client) TestXsollaConfigByIDShort(params *TestXsollaConfigByIDParams, authInfo runtime.ClientAuthInfoWriter) (*TestXsollaConfigByIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTestXsollaConfigByIDParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "testXsollaConfigById",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/xsollaconfig/test",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TestXsollaConfigByIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TestXsollaConfigByIDOK:
		response := &TestXsollaConfigByIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TestXsollaConfigByIDNotFound:
		response := &TestXsollaConfigByIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXsollaUIConfigShort update xsolla ui configuration
 [Not supported yet in AGS Shared Cloud] Update xsolla UI configuration.Reference: [Xsolla Document](https://developers.xsolla.com/api.html#ui-integrations).
Other detail info:

  * Returns : updated payment merchant config
*/
func (a *Client) UpdateXsollaUIConfigShort(params *UpdateXsollaUIConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXsollaUIConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXsollaUIConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateXsollaUIConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/merchant/{id}/xsollauiconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXsollaUIConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXsollaUIConfigOK:
		response := &UpdateXsollaUIConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateXsollaUIConfigNotFound:
		response := &UpdateXsollaUIConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryPaymentProviderConfigShort query payment provider config
 [Not supported yet in AGS Shared Cloud] Query payment provider config.
Other detail info:

  * Returns : payment provider config list
*/
func (a *Client) QueryPaymentProviderConfigShort(params *QueryPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentProviderConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "queryPaymentProviderConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPaymentProviderConfigOK:
		response := &QueryPaymentProviderConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePaymentProviderConfigShort create payment provider config
 [Not supported yet in AGS Shared Cloud] Create payment provider config.



     Request Body Parameters:


     Parameter | Type   | Required | Description
    -----------|--------|----------|-----------------------------------------------------------
    namespace  | String | Yes      | namespace, * indicates all namespace
    region     | String | Yes      | region, * indicates all regions
    aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
    specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



payment provider applied has priority:

  1. namespace and region match
  2. namespace matches and region is *
  3. region matches and namespace is *
  4. namespace and region are *

Other detail info:
  * Returns : payment provider config
*/
func (a *Client) CreatePaymentProviderConfigShort(params *CreatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentProviderConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createPaymentProviderConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/payment/config/provider",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePaymentProviderConfigOK:
		response := &CreatePaymentProviderConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePaymentProviderConfigBadRequest:
		response := &CreatePaymentProviderConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreatePaymentProviderConfigConflict:
		response := &CreatePaymentProviderConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreatePaymentProviderConfigUnprocessableEntity:
		response := &CreatePaymentProviderConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAggregatePaymentProvidersShort get aggregate payment providers
 [Not supported yet in AGS Shared Cloud] Get aggregate payment providers, such as XSOLLA, ADYEN.
Other detail info:

  * Returns : payment provider list
*/
func (a *Client) GetAggregatePaymentProvidersShort(params *GetAggregatePaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetAggregatePaymentProvidersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAggregatePaymentProvidersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getAggregatePaymentProviders",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider/aggregate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAggregatePaymentProvidersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAggregatePaymentProvidersOK:
		response := &GetAggregatePaymentProvidersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DebugMatchedPaymentProviderConfigShort debug matched payment provider config(internal)
 [Not supported yet in AGS Shared Cloud] Debug matched payment provider config.
Other detail info:

  * Returns : payment provider config
*/
func (a *Client) DebugMatchedPaymentProviderConfigShort(params *DebugMatchedPaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DebugMatchedPaymentProviderConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDebugMatchedPaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "debugMatchedPaymentProviderConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider/matched",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DebugMatchedPaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DebugMatchedPaymentProviderConfigOK:
		response := &DebugMatchedPaymentProviderConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DebugMatchedPaymentProviderConfigNotFound:
		response := &DebugMatchedPaymentProviderConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSpecialPaymentProvidersShort get special payment providers
 [Not supported yet in AGS Shared Cloud] Get special payment providers, such as ALIPAY, WXPAY.
Other detail info:

  * Returns : payment provider list
*/
func (a *Client) GetSpecialPaymentProvidersShort(params *GetSpecialPaymentProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*GetSpecialPaymentProvidersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSpecialPaymentProvidersParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getSpecialPaymentProviders",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/provider/special",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSpecialPaymentProvidersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSpecialPaymentProvidersOK:
		response := &GetSpecialPaymentProvidersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePaymentProviderConfigShort update payment provider config
 [Not supported yet in AGS Shared Cloud] Update payment provider config.



     Request Body Parameters:


     Parameter | Type   | Required | Description
    -----------|--------|----------|-----------------------------------------------------------
    namespace  | String | Yes      | namespace, * indicates all namespace
    region     | String | Yes      | region, * indicates all regions
    aggregate  | String | No       | aggregate payment provider, such as XSOLLA, ADYEN, STRIPE
    specials   | List   | No       | special payment provider, such as ALIPAY, WXPAY



payment provider applied has priority:

  1. namespace and region match
  2. namespace matches and region is *
  3. region matches and namespace is *
  4. namespace and region are *

Other detail info:
  * Returns : payment provider config
*/
func (a *Client) UpdatePaymentProviderConfigShort(params *UpdatePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentProviderConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePaymentProviderConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/provider/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePaymentProviderConfigOK:
		response := &UpdatePaymentProviderConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePaymentProviderConfigBadRequest:
		response := &UpdatePaymentProviderConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePaymentProviderConfigNotFound:
		response := &UpdatePaymentProviderConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePaymentProviderConfigConflict:
		response := &UpdatePaymentProviderConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePaymentProviderConfigUnprocessableEntity:
		response := &UpdatePaymentProviderConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePaymentProviderConfigShort delete payment provider config
 [Not supported yet in AGS Shared Cloud] Delete payment provider config.
Other detail info:

  * Returns : payment provider config
*/
func (a *Client) DeletePaymentProviderConfigShort(params *DeletePaymentProviderConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePaymentProviderConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePaymentProviderConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deletePaymentProviderConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/payment/config/provider/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePaymentProviderConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePaymentProviderConfigNoContent:
		response := &DeletePaymentProviderConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeletePaymentProviderConfigNotFound:
		response := &DeletePaymentProviderConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentTaxConfigShort get payment global tax config
 [Not supported yet in AGS Shared Cloud] Get payment global tax config.
Other detail info:

  * Returns : payment provider list
*/
func (a *Client) GetPaymentTaxConfigShort(params *GetPaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentTaxConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentTaxConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getPaymentTaxConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/config/tax",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentTaxConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentTaxConfigOK:
		response := &GetPaymentTaxConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePaymentTaxConfigShort update payment global tax config
 [Not supported yet in AGS Shared Cloud] Update payment tax config.



     Request Body Parameters:


     Parameter                | Type    | Required | Description
    --------------------------|---------|----------|---------------------------------------------------------------------
    taxJarEnabled             | Boolean | false
    taxJarApiToken            | String  | false    | required, when taxJarEnabled is true and there is no existing token
    sandboxTaxJarApiToken     | String  | false    | optional
    taxJarProductCodesMapping | Map     | No       | key is item type(APP                                                |COINS |INGAMEITEM |BUNDLE |CODE |SUBSCRIPTION) and value is product tax code: https://developers.taxjar.com/api/reference/?ruby#get-list-tax-categories



Other detail info:
  * Returns : payment global tax config
*/
func (a *Client) UpdatePaymentTaxConfigShort(params *UpdatePaymentTaxConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePaymentTaxConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePaymentTaxConfigParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updatePaymentTaxConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/payment/config/tax",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePaymentTaxConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePaymentTaxConfigOK:
		response := &UpdatePaymentTaxConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePaymentTaxConfigBadRequest:
		response := &UpdatePaymentTaxConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePaymentTaxConfigUnprocessableEntity:
		response := &UpdatePaymentTaxConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
