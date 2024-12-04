// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new payment API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for payment API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryPaymentNotificationsShort(params *QueryPaymentNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentNotificationsResponse, error)
	QueryPaymentOrdersShort(params *QueryPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentOrdersResponse, error)
	ListExtOrderNoByExtTxIDShort(params *ListExtOrderNoByExtTxIDParams, authInfo runtime.ClientAuthInfoWriter) (*ListExtOrderNoByExtTxIDResponse, error)
	GetPaymentOrderShort(params *GetPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderResponse, error)
	ChargePaymentOrderShort(params *ChargePaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*ChargePaymentOrderResponse, error)
	SimulatePaymentOrderNotificationShort(params *SimulatePaymentOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*SimulatePaymentOrderNotificationResponse, error)
	GetPaymentOrderChargeStatusShort(params *GetPaymentOrderChargeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderChargeStatusResponse, error)
	CreateUserPaymentOrderShort(params *CreateUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserPaymentOrderResponse, error)
	RefundUserPaymentOrderShort(params *RefundUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundUserPaymentOrderResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryPaymentNotificationsShort query payment notifications
 [Not supported yet in AGS Shared Cloud] Query payment notifications.
Other detail info:

  * Returns : Payment notifications
*/
func (a *Client) QueryPaymentNotificationsShort(params *QueryPaymentNotificationsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentNotificationsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPaymentNotificationsParams()
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
		ID:                 "queryPaymentNotifications",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/notifications",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPaymentNotificationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPaymentNotificationsOK:
		response := &QueryPaymentNotificationsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryPaymentOrdersShort query payment orders
 [Not supported yet in AGS Shared Cloud] Query payment orders.
Other detail info:

  * Returns : query payment orders
*/
func (a *Client) QueryPaymentOrdersShort(params *QueryPaymentOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryPaymentOrdersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryPaymentOrdersParams()
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
		ID:                 "queryPaymentOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryPaymentOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryPaymentOrdersOK:
		response := &QueryPaymentOrdersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListExtOrderNoByExtTxIDShort list external order no by external transaction id
 [Not supported yet in AGS Shared Cloud] List external order No by external transaction id.
Other detail info:

  * Returns : payment orders
*/
func (a *Client) ListExtOrderNoByExtTxIDShort(params *ListExtOrderNoByExtTxIDParams, authInfo runtime.ClientAuthInfoWriter) (*ListExtOrderNoByExtTxIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListExtOrderNoByExtTxIDParams()
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
		ID:                 "listExtOrderNoByExtTxId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/byExtTxId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListExtOrderNoByExtTxIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListExtOrderNoByExtTxIDOK:
		response := &ListExtOrderNoByExtTxIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentOrderShort get payment order
 [Not supported yet in AGS Shared Cloud] Get payment order by paymentOrderNo.
Other detail info:

  * Returns : payment order instance
*/
func (a *Client) GetPaymentOrderShort(params *GetPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentOrderParams()
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
		ID:                 "getPaymentOrder",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentOrderOK:
		response := &GetPaymentOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPaymentOrderNotFound:
		response := &GetPaymentOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ChargePaymentOrderShort charge payment order without payment flow
 [Not supported yet in AGS Shared Cloud] [TEST FACILITY ONLY] Forbidden in live environment. Charge payment order without payment flow for unpaid payment order, usually for test usage to simulate real currency payment process.
Other detail info:

  * Returns : payment order instance
*/
func (a *Client) ChargePaymentOrderShort(params *ChargePaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*ChargePaymentOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChargePaymentOrderParams()
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
		ID:                 "chargePaymentOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChargePaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ChargePaymentOrderOK:
		response := &ChargePaymentOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ChargePaymentOrderBadRequest:
		response := &ChargePaymentOrderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ChargePaymentOrderNotFound:
		response := &ChargePaymentOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ChargePaymentOrderConflict:
		response := &ChargePaymentOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SimulatePaymentOrderNotificationShort simulate payment notification
 [Not supported yet in AGS Shared Cloud] [TEST FACILITY ONLY] Forbidden in live environment. Simulate payment notification on sandbox payment order, usually for test usage to simulate real currency payment notification.
Other detail info:

  * Returns : notification process result
*/
func (a *Client) SimulatePaymentOrderNotificationShort(params *SimulatePaymentOrderNotificationParams, authInfo runtime.ClientAuthInfoWriter) (*SimulatePaymentOrderNotificationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSimulatePaymentOrderNotificationParams()
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
		ID:                 "simulatePaymentOrderNotification",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SimulatePaymentOrderNotificationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SimulatePaymentOrderNotificationOK:
		response := &SimulatePaymentOrderNotificationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SimulatePaymentOrderNotificationBadRequest:
		response := &SimulatePaymentOrderNotificationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SimulatePaymentOrderNotificationNotFound:
		response := &SimulatePaymentOrderNotificationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPaymentOrderChargeStatusShort get payment order charge status
 [Not supported yet in AGS Shared Cloud] Get payment order charge status.
Other detail info:

  * Returns : payment order charge status
*/
func (a *Client) GetPaymentOrderChargeStatusShort(params *GetPaymentOrderChargeStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetPaymentOrderChargeStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPaymentOrderChargeStatusParams()
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
		ID:                 "getPaymentOrderChargeStatus",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPaymentOrderChargeStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPaymentOrderChargeStatusOK:
		response := &GetPaymentOrderChargeStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPaymentOrderChargeStatusNotFound:
		response := &GetPaymentOrderChargeStatusResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateUserPaymentOrderShort create payment order
 [Not supported yet in AGS Shared Cloud] [SERVICE COMMUNICATION ONLY] This API is used to create payment order from justice service. The result contains the payment station url.
Other detail info:

  * It will be forbidden while the user is banned: PAYMENT_INITIATE or ORDER_AND_PAYMENT
  *  Returns : created order



## Restrictions for custom parameters and meta data


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) CreateUserPaymentOrderShort(params *CreateUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*CreateUserPaymentOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateUserPaymentOrderParams()
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
		ID:                 "createUserPaymentOrder",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/payment/orders",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateUserPaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateUserPaymentOrderCreated:
		response := &CreateUserPaymentOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateUserPaymentOrderBadRequest:
		response := &CreateUserPaymentOrderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserPaymentOrderForbidden:
		response := &CreateUserPaymentOrderResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserPaymentOrderNotFound:
		response := &CreateUserPaymentOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserPaymentOrderConflict:
		response := &CreateUserPaymentOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateUserPaymentOrderUnprocessableEntity:
		response := &CreateUserPaymentOrderResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RefundUserPaymentOrderShort refund payment order
 [Not supported yet in AGS Shared Cloud] [SERVICE COMMUNICATION ONLY] This API is used to refund order by paymentOrderNo from justice service.
*/
func (a *Client) RefundUserPaymentOrderShort(params *RefundUserPaymentOrderParams, authInfo runtime.ClientAuthInfoWriter) (*RefundUserPaymentOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefundUserPaymentOrderParams()
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
		ID:                 "refundUserPaymentOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/payment/orders/{paymentOrderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefundUserPaymentOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RefundUserPaymentOrderOK:
		response := &RefundUserPaymentOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RefundUserPaymentOrderNotFound:
		response := &RefundUserPaymentOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RefundUserPaymentOrderConflict:
		response := &RefundUserPaymentOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RefundUserPaymentOrderUnprocessableEntity:
		response := &RefundUserPaymentOrderResponse{}
		response.Error422 = v.Payload

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
