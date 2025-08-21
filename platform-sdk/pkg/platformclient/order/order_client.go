// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new order API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for order API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryOrdersShort(params *QueryOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryOrdersResponse, error)
	GetOrderStatisticsShort(params *GetOrderStatisticsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderStatisticsResponse, error)
	GetOrderShort(params *GetOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderResponse, error)
	RefundOrderShort(params *RefundOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundOrderResponse, error)
	QueryUserOrdersShort(params *QueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserOrdersResponse, error)
	AdminCreateUserOrderShort(params *AdminCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserOrderResponse, error)
	CountOfPurchasedItemShort(params *CountOfPurchasedItemParams, authInfo runtime.ClientAuthInfoWriter) (*CountOfPurchasedItemResponse, error)
	GetUserOrderShort(params *GetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderResponse, error)
	UpdateUserOrderStatusShort(params *UpdateUserOrderStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOrderStatusResponse, error)
	FulfillUserOrderShort(params *FulfillUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillUserOrderResponse, error)
	GetUserOrderGrantShort(params *GetUserOrderGrantParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderGrantResponse, error)
	GetUserOrderHistoriesShort(params *GetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderHistoriesResponse, error)
	ProcessUserOrderNotificationShort(params *ProcessUserOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*ProcessUserOrderNotificationResponse, error)
	DownloadUserOrderReceiptShort(params *DownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadUserOrderReceiptResponse, error)
	PublicQueryUserOrdersShort(params *PublicQueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserOrdersResponse, error)
	PublicCreateUserOrderShort(params *PublicCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserOrderResponse, error)
	PublicPreviewOrderPriceShort(params *PublicPreviewOrderPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPreviewOrderPriceResponse, error)
	PublicGetUserOrderShort(params *PublicGetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderResponse, error)
	PublicCancelUserOrderShort(params *PublicCancelUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserOrderResponse, error)
	PublicGetUserOrderHistoriesShort(params *PublicGetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderHistoriesResponse, error)
	PublicDownloadUserOrderReceiptShort(params *PublicDownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadUserOrderReceiptResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryOrdersShort query orders
Query orders.
Other detail info:
  - Returns : query orders
*/
func (a *Client) QueryOrdersShort(params *QueryOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryOrdersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryOrdersParams()
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
		ID:                 "queryOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryOrdersOK:
		response := &QueryOrdersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryOrdersUnprocessableEntity:
		response := &QueryOrdersResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOrderStatisticsShort get order statistics
Get Order Statistics.
Other detail info:
  - Returns : order statistics
*/
func (a *Client) GetOrderStatisticsShort(params *GetOrderStatisticsParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderStatisticsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOrderStatisticsParams()
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
		ID:                 "getOrderStatistics",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOrderStatisticsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOrderStatisticsOK:
		response := &GetOrderStatisticsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOrderShort get order
Get order by orderNo.
Other detail info:
  - Returns : order instance
*/
func (a *Client) GetOrderShort(params *GetOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOrderParams()
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
		ID:                 "getOrder",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOrderOK:
		response := &GetOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetOrderNotFound:
		response := &GetOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RefundOrderShort refund order
Refund order by orderNo.
*/
func (a *Client) RefundOrderShort(params *RefundOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefundOrderParams()
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
		ID:                 "refundOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/orders/{orderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefundOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RefundOrderOK:
		response := &RefundOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RefundOrderNotFound:
		response := &RefundOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RefundOrderConflict:
		response := &RefundOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RefundOrderUnprocessableEntity:
		response := &RefundOrderResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserOrdersShort query user orders
Query user orders.
Other detail info:
  - Returns : get order
*/
func (a *Client) QueryUserOrdersShort(params *QueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserOrdersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserOrdersParams()
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
		ID:                 "queryUserOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserOrdersOK:
		response := &QueryUserOrdersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateUserOrderShort admin create an order
Admin Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
Other detail info:
  - It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
  - sandbox default value is false
  - platform default value is Other
  - Returns : created order

## Restrictions for ext field

1. Cannot use "." as the key name
-

	{ "data.2": "value" }

2. Cannot use "$" as the prefix in key names
-

	{ "$data": "value" }
*/
func (a *Client) AdminCreateUserOrderShort(params *AdminCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateUserOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateUserOrderParams()
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
		ID:                 "adminCreateUserOrder",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateUserOrderCreated:
		response := &AdminCreateUserOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateUserOrderBadRequest:
		response := &AdminCreateUserOrderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserOrderForbidden:
		response := &AdminCreateUserOrderResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserOrderNotFound:
		response := &AdminCreateUserOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserOrderConflict:
		response := &AdminCreateUserOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateUserOrderUnprocessableEntity:
		response := &AdminCreateUserOrderResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CountOfPurchasedItemShort get the count of purchased item
This API is used to get the count of purchased item which is the order target.
Other detail info:
  - Returns : Item purchased count
*/
func (a *Client) CountOfPurchasedItemShort(params *CountOfPurchasedItemParams, authInfo runtime.ClientAuthInfoWriter) (*CountOfPurchasedItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountOfPurchasedItemParams()
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
		ID:                 "countOfPurchasedItem",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/countOfItem",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountOfPurchasedItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountOfPurchasedItemOK:
		response := &CountOfPurchasedItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOrderShort get an order
Get an order.
Other detail info:
  - Returns : get order
*/
func (a *Client) GetUserOrderShort(params *GetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOrderParams()
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
		ID:                 "getUserOrder",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOrderOK:
		response := &GetUserOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserOrderNotFound:
		response := &GetUserOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserOrderStatusShort update order status
Update order status.
Other detail info:
  - Returns : updated order
*/
func (a *Client) UpdateUserOrderStatusShort(params *UpdateUserOrderStatusParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserOrderStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserOrderStatusParams()
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
		ID:                 "updateUserOrderStatus",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserOrderStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserOrderStatusOK:
		response := &UpdateUserOrderStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserOrderStatusNotFound:
		response := &UpdateUserOrderStatusResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserOrderStatusConflict:
		response := &UpdateUserOrderStatusResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserOrderStatusUnprocessableEntity:
		response := &UpdateUserOrderStatusResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillUserOrderShort fulfill an order
Fulfill an order if the order is charged but fulfill failed.
Other detail info:
  - Returns : fulfilled order
*/
func (a *Client) FulfillUserOrderShort(params *FulfillUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillUserOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillUserOrderParams()
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
		ID:                 "fulfillUserOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/fulfill",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillUserOrderOK:
		response := &FulfillUserOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FulfillUserOrderBadRequest:
		response := &FulfillUserOrderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillUserOrderNotFound:
		response := &FulfillUserOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillUserOrderConflict:
		response := &FulfillUserOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOrderGrantShort get user order grant
Get user order grant that fulfilled by this order.
Other detail info:
  - Returns : get order grant
*/
func (a *Client) GetUserOrderGrantShort(params *GetUserOrderGrantParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderGrantResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOrderGrantParams()
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
		ID:                 "getUserOrderGrant",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/grant",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOrderGrantReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOrderGrantOK:
		response := &GetUserOrderGrantResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserOrderHistoriesShort get user order histories
Get user order history.
Other detail info:
  - Returns : get order history
*/
func (a *Client) GetUserOrderHistoriesShort(params *GetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserOrderHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserOrderHistoriesParams()
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
		ID:                 "getUserOrderHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserOrderHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserOrderHistoriesOK:
		response := &GetUserOrderHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ProcessUserOrderNotificationShort web hook for payment notification

	[SERVICE COMMUNICATION ONLY] This API is used as a web hook for payment notification from justice payment service.

Other detail info:
  - Returns : Process result
*/
func (a *Client) ProcessUserOrderNotificationShort(params *ProcessUserOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*ProcessUserOrderNotificationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProcessUserOrderNotificationParams()
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
		ID:                 "processUserOrderNotification",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/notifications",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProcessUserOrderNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ProcessUserOrderNotificationNoContent:
		response := &ProcessUserOrderNotificationResponse{}

		response.IsSuccess = true

		return response, nil
	case *ProcessUserOrderNotificationBadRequest:
		response := &ProcessUserOrderNotificationResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadUserOrderReceiptShort download user order receipt
Download user order receipt by orderNo.
Other detail info:
  - Returns : order receipt pdf
*/
func (a *Client) DownloadUserOrderReceiptShort(params *DownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadUserOrderReceiptResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadUserOrderReceiptParams()
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
		ID:                 "downloadUserOrderReceipt",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf",
		ProducesMediaTypes: []string{"application/pdf"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadUserOrderReceiptReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadUserOrderReceiptOK:
		response := &DownloadUserOrderReceiptResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DownloadUserOrderReceiptNotFound:
		response := &DownloadUserOrderReceiptResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DownloadUserOrderReceiptConflict:
		response := &DownloadUserOrderReceiptResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserOrdersShort query user orders
Query user orders.
Other detail info:
  - Returns : get order
*/
func (a *Client) PublicQueryUserOrdersShort(params *PublicQueryUserOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserOrdersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserOrdersParams()
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
		ID:                 "publicQueryUserOrders",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserOrdersOK:
		response := &PublicQueryUserOrdersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreateUserOrderShort create an order
Create an order. The result contains the checkout link and payment token. User with permission SANDBOX will create sandbox order that not real paid for xsolla/alipay and not validate price for wxpay.
Other detail info:
  - Optional permission(user with this permission will create sandbox order) : resource="SANDBOX", action=1 (CREATE)
  - It will be forbidden while the user is banned: ORDER_INITIATE or ORDER_AND_PAYMENT
  - Returns : created order

## Restrictions for ext field

1. Cannot use "." as the key name
-

	{ "data.2": "value" }

2. Cannot use "$" as the prefix in key names
-

	{ "$data": "value" }
*/
func (a *Client) PublicCreateUserOrderShort(params *PublicCreateUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreateUserOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreateUserOrderParams()
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
		ID:                 "publicCreateUserOrder",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreateUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreateUserOrderCreated:
		response := &PublicCreateUserOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreateUserOrderBadRequest:
		response := &PublicCreateUserOrderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserOrderForbidden:
		response := &PublicCreateUserOrderResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserOrderNotFound:
		response := &PublicCreateUserOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserOrderConflict:
		response := &PublicCreateUserOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreateUserOrderUnprocessableEntity:
		response := &PublicCreateUserOrderResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPreviewOrderPriceShort preview order price with discount code.
Preview order price with discount code, this api is used to auto calc order price with discount code.Notes: this api don't do full order validation, only check discount code and calc final order price.Other detail info:
  - Returns : previewed order
*/
func (a *Client) PublicPreviewOrderPriceShort(params *PublicPreviewOrderPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPreviewOrderPriceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPreviewOrderPriceParams()
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
		ID:                 "publicPreviewOrderPrice",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/discount/preview",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPreviewOrderPriceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPreviewOrderPriceOK:
		response := &PublicPreviewOrderPriceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicPreviewOrderPriceBadRequest:
		response := &PublicPreviewOrderPriceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPreviewOrderPriceForbidden:
		response := &PublicPreviewOrderPriceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPreviewOrderPriceNotFound:
		response := &PublicPreviewOrderPriceResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPreviewOrderPriceConflict:
		response := &PublicPreviewOrderPriceResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPreviewOrderPriceUnprocessableEntity:
		response := &PublicPreviewOrderPriceResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserOrderShort get user order
Get user order.
Other detail info:
  - Returns : get order
*/
func (a *Client) PublicGetUserOrderShort(params *PublicGetUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserOrderParams()
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
		ID:                 "publicGetUserOrder",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserOrderOK:
		response := &PublicGetUserOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserOrderNotFound:
		response := &PublicGetUserOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCancelUserOrderShort cancel user order
Cancel user order.
Other detail info:
  - Returns : cancelled order
*/
func (a *Client) PublicCancelUserOrderShort(params *PublicCancelUserOrderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCancelUserOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCancelUserOrderParams()
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
		ID:                 "publicCancelUserOrder",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCancelUserOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCancelUserOrderOK:
		response := &PublicCancelUserOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCancelUserOrderNotFound:
		response := &PublicCancelUserOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCancelUserOrderConflict:
		response := &PublicCancelUserOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserOrderHistoriesShort get user order histories
Get user order histories.
Other detail info:
  - Returns : get order history
*/
func (a *Client) PublicGetUserOrderHistoriesShort(params *PublicGetUserOrderHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserOrderHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserOrderHistoriesParams()
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
		ID:                 "publicGetUserOrderHistories",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserOrderHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserOrderHistoriesOK:
		response := &PublicGetUserOrderHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDownloadUserOrderReceiptShort download user order receipt
Download user order receipt by orderNo.
Other detail info:
  - Returns : order receipt pdf
*/
func (a *Client) PublicDownloadUserOrderReceiptShort(params *PublicDownloadUserOrderReceiptParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*PublicDownloadUserOrderReceiptResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDownloadUserOrderReceiptParams()
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
		ID:                 "publicDownloadUserOrderReceipt",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf",
		ProducesMediaTypes: []string{"application/pdf"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDownloadUserOrderReceiptReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDownloadUserOrderReceiptOK:
		response := &PublicDownloadUserOrderReceiptResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicDownloadUserOrderReceiptNotFound:
		response := &PublicDownloadUserOrderReceiptResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDownloadUserOrderReceiptConflict:
		response := &PublicDownloadUserOrderReceiptResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
