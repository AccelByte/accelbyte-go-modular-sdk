// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_dedicated

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment dedicated API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment dedicated API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreatePaymentOrderByDedicatedShort(params *CreatePaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentOrderByDedicatedResponse, error)
	RefundPaymentOrderByDedicatedShort(params *RefundPaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*RefundPaymentOrderByDedicatedResponse, error)
	SyncPaymentOrdersShort(params *SyncPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*SyncPaymentOrdersResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreatePaymentOrderByDedicatedShort create payment order by dedicated server
 [Not supported yet in AGS Shared Cloud]

This API is used to create payment order from non justice service. e.g. from dedicated server, the result contains the payment station url.

 Path Parameter:


     Parameter                                                         | Type   | Required | Description
    -------------------------------------------------------------------|--------|----------|-----------------------------------------------------------------------------------------------------------------
    namespace                                                          | String | Yes      | Namespace that payment order resides in, should be publisher namespace if it's a Steam like platform that share
    payment config cross namespaces, otherwise it's the game namespace



     Request Body Parameters:


     Parameter        | Type    | Required | Description
    ------------------|---------|----------|--------------------------------------------------------------------------------------------------
    extOrderNo        | String  | Yes      | External order number, it should be unique in invoker order system
    sku               | String  | No       | Item identity
    targetNamespace   | String  | Yes      | The game namespace
    targetUserId      | String  | Yes      | User id for the order owner in game namespace
    extUserId         | String  | No       | External user id, can be user character id
    price             | int     | Yes      | price which should be greater than 0
    title             | String  | Yes      | Item title
    description       | String  | Yes      | Item description
    currencyCode      | String  | No       | Currency code, default is USD
    currencyNamespace | String  | No       | Currency namespace, default is publisher namespace
    region            | String  | No       | Country of the user, will get from user info if not present
    language          | String  | No       | Language of the user
    sandbox           | Boolean | No       | set to true will create sandbox order that not real paid for xsolla/alipay and will not validate
    price for wxpay.
    returnUrl         | String  | No       | customized return url for redirect once payment finished, leave unset to use configuration in
    namespace
    notifyUrl         | String  | No       | customized notify url for payment web hook, leave unset to use configuration in namespace
    customParameters  | String  | No       | Custom parameters



 Request Body Example:


    {

               "extOrderNo": "123456789",
               "sku": "sku",
               "targetNamespace": "game1",
               "targetUserId": "94451623768940d58416ca33ca767ec3",
               "extUserId": "678",
               "title": "Frostmourne",
               "description": "Here was power. Here was despair",
               "price": 100,
               "region": "CN",
               "language": "zh-CN",
               "currencyCode": "USD",
               "currencyNamespace": "accelbyte"

    }

`

#### Payment Notification:

After user complete the payment, it will send notification to configured web hook, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

 Payment notification parameter:


     Parameter | Type   | Required | Description
    -----------|--------|----------|------------------------------------------------
    payload    | String | Yes      | Payment notification payload in json string
    sign       | String | Yes      | sha1 hex signature for payload and private key



 Payment notification parameter Example:


    {

           "payload": "{
               "type": "payment",
               "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
               "paymentOrderNo": "18081239088",
               "namespace": "accelbyte",
               "targetNamespace": "game1",
               "targetUserId": "94451623768940d58416ca33ca767ec3",
               "extOrderNo": "123456789",
               "sku": "sku",
               "extUserId": "678",
               "price": 100,
               "paymentProvider": "XSOLLA",
               "vat": 0,
               "salesTax": 0,
               "paymentProviderFee": 0,
               "paymentMethodFee": 0,
               "currency": {
                       "currencyCode": "USD",
                       "currencySymbol": "$",
                       "currencyType": "REAL",
                       "namespace": "accelbyte",
                       "decimals": 2
                   },
               "status": "CHARGED",
               "createdTime": "2018-07-28T00:39:16.274Z",
               "chargedTime": "2018-07-28T00:39:16.274Z"
           }",

           "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

    }

`

 Payment notification payload parameter list:


     Parameter         | Type     | Required | Description
    -------------------|----------|----------|--------------------------------------------------------------------------------------
    type               | String   | Yes      | Notification type: 'payment'
    paymentOrderNo     | String   | Yes      | Payment system generated order number
    extOrderNo         | String   | No       | External order number that passed by invoker
    namespace          | String   | Yes      | Namespace that related payment order resides in
    targetNamespace    | String   | Yes      | The game namespace
    targetUserId       | String   | Yes      | The user id in game namespace
    sku                | String   | No       | Item identify, it will return if pass it when create payment
    extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
    price              | int      | Yes      | Price of item
    paymentProvider    | String   | Yes      | Payment provider, allowed values: xsolla/alipay/wxpay/wallet
    vat                | int      | Yes      | Payment order VAT
    salesTax           | int      | Yes      | Payment order sales tax
    paymentProviderFee | int      | Yes      | Payment provider fee
    paymentMethodFee   | int      | Yes      | Payment method fee
    currency           | Map      | Yes      | Payment order currency info
    status             | String   | Yes      | Payment order status
    statusReason       | String   | No       | Payment order status reason
    createdTime        | Datetime | No       | The time of the order created
    chargedTime        | Datetime | No       | The time of the order charged
    customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
    nonceStr           | String   | Yes      | Random string, max length is 32, can be timestamp or uuid



 Currency info parameter list:


     Parameter     | Type   | Required | Description
    ---------------|--------|----------|-----------------------------
    currencyCode   | String | Yes      | Currency Code
    currencySymbol | String | Yes      | Currency Symbol
    currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
    namespace      | String | Yes      | Currency namespace
    decimals       | int    | Yes      | Currency decimals



#### Encryption Rule:

Concat payload json string and private key and then do sha1Hex.

#### Other detail info:

  * Token type : client token
  *  Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
  * It will be forbidden while the target user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
  *  cross namespace allowed
  *  Returns : created payment order info
*/
func (a *Client) CreatePaymentOrderByDedicatedShort(params *CreatePaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePaymentOrderByDedicatedResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePaymentOrderByDedicatedParams()
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
		ID:                 "createPaymentOrderByDedicated",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePaymentOrderByDedicatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePaymentOrderByDedicatedCreated:
		response := &CreatePaymentOrderByDedicatedResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePaymentOrderByDedicatedBadRequest:
		response := &CreatePaymentOrderByDedicatedResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePaymentOrderByDedicatedForbidden:
		response := &CreatePaymentOrderByDedicatedResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePaymentOrderByDedicatedNotFound:
		response := &CreatePaymentOrderByDedicatedResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePaymentOrderByDedicatedConflict:
		response := &CreatePaymentOrderByDedicatedResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePaymentOrderByDedicatedUnprocessableEntity:
		response := &CreatePaymentOrderByDedicatedResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RefundPaymentOrderByDedicatedShort refund payment order by dedicated server
 [Not supported yet in AGS Shared Cloud]

This API is used to refund payment order by paymentOrderNo from non justice service. e.g. dedicated server.

  * if the status field of response json is "REFUNDED", usually wallet paid, it indicates payment order already refunded
  * if the status field of response json is "REFUNDING", usually real money paid, platform will send notification to registered notify url once refund successfully



Path Parameter:


     Parameter     | Type   | Required | Description
    ---------------|--------|----------|-----------------------------------------
    namespace      | String | Yes      | Namespace that payment order resides in
    paymentOrderNo | String | Yes      | Payment order number



 Request Body Parameters:


     Parameter  | Type   | Required | Description
    ------------|--------|----------|--------------------
    description | String | Yes      | Refund description



 Request Body Example:


    {

               "description": "Repeated item."

    }

`

#### Refund Notification:

It will send notification to configured web hook after refund successfully, http status code should return 200 or 204 once you resolve notification successfully, otherwise payment system will retry notification in interval

 Refund notification parameter:


     Parameter | Type   | Required | Description
    -----------|--------|----------|------------------------------------------------
    payload    | String | Yes      | Refund notification payload in json string
    sign       | String | Yes      | sha1 hex signature for payload and private key



 Refund notification Example:


    {

           "payload": "{
               "type": "payment",
               "nonceStr": "34c1dcf3eb58455eb161465bbfc0b590",
               "paymentOrderNo": "18081239088",
               "namespace": "accelbyte",
               "targetNamespace": "game1",
               "targetUserId": "94451623768940d58416ca33ca767ec3",
               "extOrderNo": "123456789",
               "sku": "sku",
               "extUserId": "678",
               "price": 100,
               "paymentProvider": "XSOLLA",
               "vat": 0,
               "salesTax": 0,
               "paymentProviderFee": 0,
               "paymentMethodFee": 0,
               "currency": {
                       "currencyCode": "USD",
                       "currencySymbol": "$",
                       "currencyType": "REAL",
                       "namespace": "accelbyte",
                       "decimals": 2
                   },
               "status": "REFUNDED",
               "createdTime": "2018-07-28T00:39:16.274Z",
               "chargedTime": "2018-07-28T00:39:16.274Z",
               "refundedTime": "2018-07-28T00:39:16.274Z"
           }",

           "sign":"e31fb92516cc9faaf50ad70343e1293acec6f3d5"

    }

`

 Refund notification payload parameter list:


     Parameter         | Type     | Required | Description
    -------------------|----------|----------|--------------------------------------------------------------------------------------
    type               | String   | Yes      | Notification type: 'payment'
    paymentOrderNo     | String   | Yes      | Payment system generated order number
    extOrderNo         | String   | No       | External order number that passed by invoker
    namespace          | String   | Yes      | Namespace that related payment order resides in
    targetNamespace    | String   | Yes      | The game namespace
    targetUserId       | String   | Yes      | The user id in game namespace
    sku                | String   | No       | Item identify, it will return if pass it when create payment
    extUserId          | String   | No       | External user id, can be character id, it will return if pass it when create payment
    price              | int      | Yes      | Price of item
    paymentProvider    | String   | Yes      | Payment provider: xsolla/alipay/wxpay/wallet
    vat                | int      | Yes      | Payment order VAT
    salesTax           | int      | Yes      | Payment order sales tax
    paymentProviderFee | int      | Yes      | Payment provider fee
    paymentMethodFee   | int      | Yes      | Payment method fee
    currency           | Map      | Yes      | Payment order currency info
    status             | String   | Yes      | Payment order status
    statusReason       | String   | No       | Payment order refund status reason
    createdTime        | Datetime | No       | The time of the order created
    chargedTime        | Datetime | No       | The time of the order charged
    refundedTime       | Datetime | No       | The time of the order refunded
    customParameters   | Map      | No       | custom parameters, will return if pass it when create payment
    nonceStr           | String   | Yes      | Random string, max length is 32,



Currency info parameter list:


     Parameter     | Type   | Required | Description
    ---------------|--------|----------|-----------------------------
    currencyCode   | String | Yes      | Currency Code
    currencySymbol | String | Yes      | Currency Symbol
    currencyType   | String | Yes      | Currency type(REAL/VIRTUAL)
    namespace      | String | Yes      | Currency namespace
    decimals       | int    | Yes      | Currency decimals



#### Encryption Rule:

Concat payload json string and private key and then do sha1Hex.

#### Other detail info:

  * Token type : client token
  *  cross namespace allowed
*/
func (a *Client) RefundPaymentOrderByDedicatedShort(params *RefundPaymentOrderByDedicatedParams, authInfo runtime.ClientAuthInfoWriter) (*RefundPaymentOrderByDedicatedResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefundPaymentOrderByDedicatedParams()
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
		ID:                 "refundPaymentOrderByDedicated",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefundPaymentOrderByDedicatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RefundPaymentOrderByDedicatedOK:
		response := &RefundPaymentOrderByDedicatedResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RefundPaymentOrderByDedicatedNoContent:
		response := &RefundPaymentOrderByDedicatedResponse{}

		response.IsSuccess = true

		return response, nil
	case *RefundPaymentOrderByDedicatedNotFound:
		response := &RefundPaymentOrderByDedicatedResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RefundPaymentOrderByDedicatedConflict:
		response := &RefundPaymentOrderByDedicatedResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RefundPaymentOrderByDedicatedUnprocessableEntity:
		response := &RefundPaymentOrderByDedicatedResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncPaymentOrdersShort sync payment orders
 [Not supported yet in AGS Shared Cloud] Sync payment orders. If response contains nextEvaluatedKey, please use it as query param in the next call to fetch the next batch, a batch has 1000 elements or less.
Other detail info:

  * Returns : sync payment orders
*/
func (a *Client) SyncPaymentOrdersShort(params *SyncPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*SyncPaymentOrdersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncPaymentOrdersParams()
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
		ID:                 "syncPaymentOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncPaymentOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncPaymentOrdersOK:
		response := &SyncPaymentOrdersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
