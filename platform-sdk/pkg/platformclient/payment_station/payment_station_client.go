// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_station

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment station API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment station API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPaymentCustomizationShort(params *GetPaymentCustomizationParams) (*GetPaymentCustomizationResponse, error)
	PublicGetPaymentURLShort(params *PublicGetPaymentURLParams) (*PublicGetPaymentURLResponse, error)
	PublicGetPaymentMethodsShort(params *PublicGetPaymentMethodsParams) (*PublicGetPaymentMethodsResponse, error)
	PublicGetUnpaidPaymentOrderShort(params *PublicGetUnpaidPaymentOrderParams) (*PublicGetUnpaidPaymentOrderResponse, error)
	PayShort(params *PayParams) (*PayResponse, error)
	PublicCheckPaymentOrderPaidStatusShort(params *PublicCheckPaymentOrderPaidStatusParams) (*PublicCheckPaymentOrderPaidStatusResponse, error)
	GetPaymentPublicConfigShort(params *GetPaymentPublicConfigParams) (*GetPaymentPublicConfigResponse, error)
	PublicGetQRCodeShort(params *PublicGetQRCodeParams) (*PublicGetQRCodeResponse, error)
	PublicNormalizePaymentReturnURLShort(params *PublicNormalizePaymentReturnURLParams) (*PublicNormalizePaymentReturnURLResponse, error)
	GetPaymentTaxValueShort(params *GetPaymentTaxValueParams) (*GetPaymentTaxValueResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetPaymentCustomizationShort get payment provider customization
 [Not supported yet in AGS Shared Cloud] Get payment provider customization, at current only Adyen provide customization. This api has been deprecated, pls use /public/namespaces/{namespace}/payment/publicconfig to get adyen config
Other detail info:

  * Returns : customization
*/
func (a *Client) GetPaymentCustomizationShort(params *GetPaymentCustomizationParams) (*GetPaymentCustomizationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentCustomizationParams()
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
		ID:                 "getPaymentCustomization",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/customization",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentCustomizationReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentCustomizationOK:
		response := &GetPaymentCustomizationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPaymentURLShort get payment url
 [Not supported yet in AGS Shared Cloud] Get payment url.
Other detail info:

  * For Neon Pay payment provider, the 'neonPayConfig' field can be used to provide success and cancel URL. If 'neonPayConfig' field is not present, the 'returnUrl' will be used for both success and cancel URL.
  *  Returns : Get payment link
*/
func (a *Client) PublicGetPaymentURLShort(params *PublicGetPaymentURLParams) (*PublicGetPaymentURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPaymentURLParams()
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
		ID:                 "publicGetPaymentUrl",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/link",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPaymentURLReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPaymentURLOK:
		response := &PublicGetPaymentURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPaymentURLBadRequest:
		response := &PublicGetPaymentURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetPaymentURLForbidden:
		response := &PublicGetPaymentURLResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetPaymentURLNotFound:
		response := &PublicGetPaymentURLResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPaymentMethodsShort get payment methods
 [Not supported yet in AGS Shared Cloud] Get payment methods.
Other detail info:

  * Returns : Payment method list
*/
func (a *Client) PublicGetPaymentMethodsShort(params *PublicGetPaymentMethodsParams) (*PublicGetPaymentMethodsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPaymentMethodsParams()
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
		ID:                 "publicGetPaymentMethods",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/methods",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPaymentMethodsReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPaymentMethodsOK:
		response := &PublicGetPaymentMethodsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPaymentMethodsNotFound:
		response := &PublicGetPaymentMethodsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUnpaidPaymentOrderShort get payment order info
 [Not supported yet in AGS Shared Cloud] Get payment order info.
Other detail info:

  * Returns : Payment order details
*/
func (a *Client) PublicGetUnpaidPaymentOrderShort(params *PublicGetUnpaidPaymentOrderParams) (*PublicGetUnpaidPaymentOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUnpaidPaymentOrderParams()
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
		ID:                 "publicGetUnpaidPaymentOrder",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/info",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUnpaidPaymentOrderReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUnpaidPaymentOrderOK:
		response := &PublicGetUnpaidPaymentOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUnpaidPaymentOrderNotFound:
		response := &PublicGetUnpaidPaymentOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetUnpaidPaymentOrderConflict:
		response := &PublicGetUnpaidPaymentOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PayShort do payment
 [Not supported yet in AGS Shared Cloud] Do payment(For now, this only support checkout.com).
Other detail info:

  * Returns : Payment process result
*/
func (a *Client) PayShort(params *PayParams) (*PayResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPayParams()
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
		ID:                 "pay",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/pay",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PayReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PayOK:
		response := &PayResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PayBadRequest:
		response := &PayResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PayNotFound:
		response := &PayResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PayConflict:
		response := &PayResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCheckPaymentOrderPaidStatusShort check payment order paid status
 [Not supported yet in AGS Shared Cloud] Check payment order paid status.
Other detail info:

  * Returns : Payment order paid result
*/
func (a *Client) PublicCheckPaymentOrderPaidStatusShort(params *PublicCheckPaymentOrderPaidStatusParams) (*PublicCheckPaymentOrderPaidStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCheckPaymentOrderPaidStatusParams()
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
		ID:                 "publicCheckPaymentOrderPaidStatus",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCheckPaymentOrderPaidStatusReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCheckPaymentOrderPaidStatusOK:
		response := &PublicCheckPaymentOrderPaidStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCheckPaymentOrderPaidStatusNotFound:
		response := &PublicCheckPaymentOrderPaidStatusResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentPublicConfigShort get payment provider public config
 [Not supported yet in AGS Shared Cloud] Get payment provider public config, at current only Strip provide public config.
Other detail info:

  * Returns : Public config
*/
func (a *Client) GetPaymentPublicConfigShort(params *GetPaymentPublicConfigParams) (*GetPaymentPublicConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentPublicConfigParams()
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
		ID:                 "getPaymentPublicConfig",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/publicconfig",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentPublicConfigReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentPublicConfigOK:
		response := &GetPaymentPublicConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetQRCodeShort get qrcode
 [Not supported yet in AGS Shared Cloud] Get qrcode.
Other detail info:

  * Returns : QRCode image stream
*/
func (a *Client) PublicGetQRCodeShort(params *PublicGetQRCodeParams) (*PublicGetQRCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetQRCodeParams()
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
		ID:                 "publicGetQRCode",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/qrcode",
		ProducesMediaTypes: []string{"image/png"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetQRCodeReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetQRCodeOK:
		response := &PublicGetQRCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicNormalizePaymentReturnURLShort normalize payment return url
 [Not supported yet in AGS Shared Cloud] Normalize payment return url for payment provider
Field                                                                                                                                                        | Type   | Required | Description
-------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|----------|-----------------------
orderNo                                                                                                                                                      | String | Yes      | order no
paymentStatus                                                                                                                                                | String | Yes      |

  * DONE: The payment was successfully completed.
  * CANCELLED: The payment was cancelled by the shopper before completion, or the shopper returned to the merchant's site before completing the transaction.
  * PENDING: Inform the shopper that you've received their order, and are waiting for the payment to be completed.

When the shopper has completed the payment you will receive a successful AUTHORISATION.
  * RECEIVED: Inform the shopper that you've received their order, and are waiting for the payment to clear.
  * UNKNOWN: An error occurred during the payment processing.
  * FAILED: Shopper paid failed because of various reasons.


reason                                                                                                                                                       | String | No       | payment status reason

Other detail info:

  * xsolla : parameters 'user_id', 'foreinginvoice', 'invoice_id' and 'status' will be automatically added to the link
  *  adyen : https://docs.adyen.com/developers/checkout/web-sdk
*/
func (a *Client) PublicNormalizePaymentReturnURLShort(params *PublicNormalizePaymentReturnURLParams) (*PublicNormalizePaymentReturnURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicNormalizePaymentReturnURLParams()
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
		ID:                 "publicNormalizePaymentReturnUrl",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/returnurl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicNormalizePaymentReturnURLReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicNormalizePaymentReturnURLNoContent:
		response := &PublicNormalizePaymentReturnURLResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicNormalizePaymentReturnURLTemporaryRedirect:
		response := &PublicNormalizePaymentReturnURLResponse{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentTaxValueShort get tax result of a payment order
 [Not supported yet in AGS Shared Cloud] Check and get a payment order's should pay tax.
Other detail info:

  * Returns : tax result
*/
func (a *Client) GetPaymentTaxValueShort(params *GetPaymentTaxValueParams) (*GetPaymentTaxValueResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentTaxValueParams()
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
		ID:                 "getPaymentTaxValue",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/payment/tax",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentTaxValueReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentTaxValueOK:
		response := &GetPaymentTaxValueResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPaymentTaxValueBadRequest:
		response := &GetPaymentTaxValueResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPaymentTaxValueNotFound:
		response := &GetPaymentTaxValueResponse{}
		response.Error404 = v.Payload

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
