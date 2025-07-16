// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification_subscription_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new notification subscription v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for notification subscription v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetNotificationSubscriberListV3Short(params *GetNotificationSubscriberListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV3Response, error)
	DeleteSubscriptionAppNotificationV3Short(params *DeleteSubscriptionAppNotificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetNotificationSubscriberListV3Short get a list of the app notification subscriber
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [READ]`

Request param:
- notificationType : type of the subscribed app notification
- values:
- all
- app-down
- critical-vulnerability

Get a list of the app notification subscriber
*/
func (a *Client) GetNotificationSubscriberListV3Short(params *GetNotificationSubscriberListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNotificationSubscriberListV3Params()
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
		ID:                 "GetNotificationSubscriberListV3",
		Method:             "GET",
		PathPattern:        "/csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNotificationSubscriberListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNotificationSubscriberListV3OK:
		response := &GetNotificationSubscriberListV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNotificationSubscriberListV3Unauthorized:
		response := &GetNotificationSubscriberListV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNotificationSubscriberListV3Forbidden:
		response := &GetNotificationSubscriberListV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNotificationSubscriberListV3NotFound:
		response := &GetNotificationSubscriberListV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNotificationSubscriberListV3InternalServerError:
		response := &GetNotificationSubscriberListV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSubscriptionAppNotificationV3Short remove other person subscription by user id or email address
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

Remove a user from the notification subscription using either user ID or email address.
Only one of them should be provided.
*/
func (a *Client) DeleteSubscriptionAppNotificationV3Short(params *DeleteSubscriptionAppNotificationV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSubscriptionAppNotificationV3Params()
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
		ID:                 "DeleteSubscriptionAppNotificationV3",
		Method:             "DELETE",
		PathPattern:        "/csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSubscriptionAppNotificationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSubscriptionAppNotificationV3NoContent:
		response := &DeleteSubscriptionAppNotificationV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteSubscriptionAppNotificationV3Unauthorized:
		response := &DeleteSubscriptionAppNotificationV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSubscriptionAppNotificationV3Forbidden:
		response := &DeleteSubscriptionAppNotificationV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSubscriptionAppNotificationV3NotFound:
		response := &DeleteSubscriptionAppNotificationV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSubscriptionAppNotificationV3InternalServerError:
		response := &DeleteSubscriptionAppNotificationV3Response{}
		response.Error500 = v.Payload

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
