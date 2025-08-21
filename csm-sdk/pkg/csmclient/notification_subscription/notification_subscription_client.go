// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification_subscription

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new notification subscription API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for notification subscription API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetNotificationSubscriberListV2Short(params *GetNotificationSubscriberListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV2Response, error)
	BulkSaveSubscriptionAppNotificationV2Short(params *BulkSaveSubscriptionAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkSaveSubscriptionAppNotificationV2Response, error)
	SubscribeAppNotificationV2Short(params *SubscribeAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*SubscribeAppNotificationV2Response, error)
	GetSubscriptionV2HandlerShort(params *GetSubscriptionV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionV2HandlerResponse, error)
	SubscribeV2HandlerShort(params *SubscribeV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SubscribeV2HandlerResponse, error)
	UnsubscribeV2HandlerShort(params *UnsubscribeV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeV2HandlerResponse, error)
	DeleteSubscriptionAppNotificationByUserIDV2Short(params *DeleteSubscriptionAppNotificationByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationByUserIDV2Response, error)
	DeleteSubscriptionAppNotificationV2Short(params *DeleteSubscriptionAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetNotificationSubscriberListV2Short get a list of the app notification subscriber
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [READ]`

Request param:
- notificationType : type of the subscribed app notification
- values:
- all
- app-down
- critical-vulnerability

Get a list of the app notification subscriber
*/
func (a *Client) GetNotificationSubscriberListV2Short(params *GetNotificationSubscriberListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNotificationSubscriberListV2Params()
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
		ID:                 "GetNotificationSubscriberListV2",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNotificationSubscriberListV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNotificationSubscriberListV2OK:
		response := &GetNotificationSubscriberListV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNotificationSubscriberListV2Unauthorized:
		response := &GetNotificationSubscriberListV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNotificationSubscriberListV2Forbidden:
		response := &GetNotificationSubscriberListV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNotificationSubscriberListV2NotFound:
		response := &GetNotificationSubscriberListV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNotificationSubscriberListV2InternalServerError:
		response := &GetNotificationSubscriberListV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkSaveSubscriptionAppNotificationV2Short bulk update of users subscribed to an app's notifications
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [UPDATE]`

Bulk update of users subscribed to an app's notifications.

Request body:
- notificationType : type of the app notification to be subscribed - Required.
- values:
- "all"
- "app-down"
- "critical-vulnerability"
- subscribers : user(s) notification subscription to be updated - Required.
*/
func (a *Client) BulkSaveSubscriptionAppNotificationV2Short(params *BulkSaveSubscriptionAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkSaveSubscriptionAppNotificationV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkSaveSubscriptionAppNotificationV2Params()
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
		ID:                 "BulkSaveSubscriptionAppNotificationV2",
		Method:             "PUT",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkSaveSubscriptionAppNotificationV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkSaveSubscriptionAppNotificationV2OK:
		response := &BulkSaveSubscriptionAppNotificationV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkSaveSubscriptionAppNotificationV2Unauthorized:
		response := &BulkSaveSubscriptionAppNotificationV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkSaveSubscriptionAppNotificationV2Forbidden:
		response := &BulkSaveSubscriptionAppNotificationV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkSaveSubscriptionAppNotificationV2NotFound:
		response := &BulkSaveSubscriptionAppNotificationV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkSaveSubscriptionAppNotificationV2InternalServerError:
		response := &BulkSaveSubscriptionAppNotificationV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SubscribeAppNotificationV2Short subscribe the user(s) an app notification
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [CREATE]`

Subscribe the user(s) an app notification.

Request body:
- notificationType : type of the app notification to be subscribed - Required.
- values:
- "all"
- "app-down"
- "critical-vulnerability"
- subscribers : user(s) to subscribe the app notification - Required.
*/
func (a *Client) SubscribeAppNotificationV2Short(params *SubscribeAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*SubscribeAppNotificationV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSubscribeAppNotificationV2Params()
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
		ID:                 "SubscribeAppNotificationV2",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SubscribeAppNotificationV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SubscribeAppNotificationV2OK:
		response := &SubscribeAppNotificationV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SubscribeAppNotificationV2Unauthorized:
		response := &SubscribeAppNotificationV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SubscribeAppNotificationV2Forbidden:
		response := &SubscribeAppNotificationV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SubscribeAppNotificationV2NotFound:
		response := &SubscribeAppNotificationV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SubscribeAppNotificationV2InternalServerError:
		response := &SubscribeAppNotificationV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSubscriptionV2HandlerShort get subscription status of a user
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [READ]`

Get Subscription status of a user
*/
func (a *Client) GetSubscriptionV2HandlerShort(params *GetSubscriptionV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionV2HandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSubscriptionV2HandlerParams()
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
		ID:                 "GetSubscriptionV2Handler",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSubscriptionV2HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSubscriptionV2HandlerOK:
		response := &GetSubscriptionV2HandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSubscriptionV2HandlerUnauthorized:
		response := &GetSubscriptionV2HandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSubscriptionV2HandlerForbidden:
		response := &GetSubscriptionV2HandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSubscriptionV2HandlerNotFound:
		response := &GetSubscriptionV2HandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSubscriptionV2HandlerInternalServerError:
		response := &GetSubscriptionV2HandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SubscribeV2HandlerShort subscribe to app notification
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [CREATE]`

Subscribe to app notification
Request body:
- notificationType : type of the app notification to be subscribed - Required.
- values:
- "all"
- "app-down"
- "critical-vulnerability"
*/
func (a *Client) SubscribeV2HandlerShort(params *SubscribeV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SubscribeV2HandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSubscribeV2HandlerParams()
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
		ID:                 "SubscribeV2Handler",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SubscribeV2HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SubscribeV2HandlerNoContent:
		response := &SubscribeV2HandlerResponse{}

		response.IsSuccess = true

		return response, nil
	case *SubscribeV2HandlerUnauthorized:
		response := &SubscribeV2HandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SubscribeV2HandlerForbidden:
		response := &SubscribeV2HandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SubscribeV2HandlerNotFound:
		response := &SubscribeV2HandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SubscribeV2HandlerInternalServerError:
		response := &SubscribeV2HandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnsubscribeV2HandlerShort unsubscribe to app notification
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [DELETE]`

Unsubscribe to app notification
*/
func (a *Client) UnsubscribeV2HandlerShort(params *UnsubscribeV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeV2HandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnsubscribeV2HandlerParams()
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
		ID:                 "UnsubscribeV2Handler",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnsubscribeV2HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnsubscribeV2HandlerNoContent:
		response := &UnsubscribeV2HandlerResponse{}

		response.IsSuccess = true

		return response, nil
	case *UnsubscribeV2HandlerUnauthorized:
		response := &UnsubscribeV2HandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UnsubscribeV2HandlerForbidden:
		response := &UnsubscribeV2HandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UnsubscribeV2HandlerNotFound:
		response := &UnsubscribeV2HandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UnsubscribeV2HandlerInternalServerError:
		response := &UnsubscribeV2HandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSubscriptionAppNotificationByUserIDV2Short remove other person subscription by user id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

Remove a user from the notification subscription by user ID.
*/
func (a *Client) DeleteSubscriptionAppNotificationByUserIDV2Short(params *DeleteSubscriptionAppNotificationByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationByUserIDV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSubscriptionAppNotificationByUserIDV2Params()
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
		ID:                 "DeleteSubscriptionAppNotificationByUserIDV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSubscriptionAppNotificationByUserIDV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSubscriptionAppNotificationByUserIDV2OK:
		response := &DeleteSubscriptionAppNotificationByUserIDV2Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteSubscriptionAppNotificationByUserIDV2Unauthorized:
		response := &DeleteSubscriptionAppNotificationByUserIDV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSubscriptionAppNotificationByUserIDV2Forbidden:
		response := &DeleteSubscriptionAppNotificationByUserIDV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSubscriptionAppNotificationByUserIDV2NotFound:
		response := &DeleteSubscriptionAppNotificationByUserIDV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSubscriptionAppNotificationByUserIDV2InternalServerError:
		response := &DeleteSubscriptionAppNotificationByUserIDV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSubscriptionAppNotificationV2Short remove other person subscription
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

Remove a user from the notification subscription.
*/
func (a *Client) DeleteSubscriptionAppNotificationV2Short(params *DeleteSubscriptionAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSubscriptionAppNotificationV2Params()
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
		ID:                 "DeleteSubscriptionAppNotificationV2",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSubscriptionAppNotificationV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSubscriptionAppNotificationV2OK:
		response := &DeleteSubscriptionAppNotificationV2Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteSubscriptionAppNotificationV2Unauthorized:
		response := &DeleteSubscriptionAppNotificationV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSubscriptionAppNotificationV2Forbidden:
		response := &DeleteSubscriptionAppNotificationV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSubscriptionAppNotificationV2NotFound:
		response := &DeleteSubscriptionAppNotificationV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSubscriptionAppNotificationV2InternalServerError:
		response := &DeleteSubscriptionAppNotificationV2Response{}
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
