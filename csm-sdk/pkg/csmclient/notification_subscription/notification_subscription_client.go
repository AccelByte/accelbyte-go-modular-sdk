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
	GetNotificationSubscriberListV2Short(params *GetNotificationSubscriberListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV2OK, error)
	BulkSaveSubscriptionAppNotificationV2Short(params *BulkSaveSubscriptionAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkSaveSubscriptionAppNotificationV2OK, error)
	SubscribeAppNotificationV2Short(params *SubscribeAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*SubscribeAppNotificationV2OK, error)
	GetSubscriptionV2HandlerShort(params *GetSubscriptionV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionV2HandlerOK, error)
	SubscribeV2HandlerShort(params *SubscribeV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SubscribeV2HandlerNoContent, error)
	UnsubscribeV2HandlerShort(params *UnsubscribeV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeV2HandlerNoContent, error)
	DeleteSubscriptionAppNotificationByUserIDV2Short(params *DeleteSubscriptionAppNotificationByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationByUserIDV2OK, error)
	DeleteSubscriptionAppNotificationV2Short(params *DeleteSubscriptionAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV2OK, error)

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
func (a *Client) GetNotificationSubscriberListV2Short(params *GetNotificationSubscriberListV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetNotificationSubscriberListV2OK, error) {
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
		return v, nil
	case *GetNotificationSubscriberListV2Unauthorized:
		return nil, v
	case *GetNotificationSubscriberListV2Forbidden:
		return nil, v
	case *GetNotificationSubscriberListV2NotFound:
		return nil, v
	case *GetNotificationSubscriberListV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkSaveSubscriptionAppNotificationV2Short bulk update the subscription of the users
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [UPDATE]`

Update the subscription the user(s) is an app notification.

Request body:
- notificationType : type of the app notification to be subscribed - Required.
- values:
- "all"
- "app-down"
- "critical-vulnerability"
- subscribers : user(s) notification subscription to be updated - Required.
*/
func (a *Client) BulkSaveSubscriptionAppNotificationV2Short(params *BulkSaveSubscriptionAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*BulkSaveSubscriptionAppNotificationV2OK, error) {
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
		return v, nil
	case *BulkSaveSubscriptionAppNotificationV2Unauthorized:
		return nil, v
	case *BulkSaveSubscriptionAppNotificationV2Forbidden:
		return nil, v
	case *BulkSaveSubscriptionAppNotificationV2NotFound:
		return nil, v
	case *BulkSaveSubscriptionAppNotificationV2InternalServerError:
		return nil, v

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
-"all"
- "app-down"
- "critical-vulnerability"
- subscribers : user(s) to subscribe the app notification - Required.
*/
func (a *Client) SubscribeAppNotificationV2Short(params *SubscribeAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*SubscribeAppNotificationV2OK, error) {
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
		return v, nil
	case *SubscribeAppNotificationV2Unauthorized:
		return nil, v
	case *SubscribeAppNotificationV2Forbidden:
		return nil, v
	case *SubscribeAppNotificationV2NotFound:
		return nil, v
	case *SubscribeAppNotificationV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSubscriptionV2HandlerShort get subscription status of a user
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [READ]`

Get Subscription status of a user
*/
func (a *Client) GetSubscriptionV2HandlerShort(params *GetSubscriptionV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionV2HandlerOK, error) {
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
		return v, nil
	case *GetSubscriptionV2HandlerUnauthorized:
		return nil, v
	case *GetSubscriptionV2HandlerForbidden:
		return nil, v
	case *GetSubscriptionV2HandlerNotFound:
		return nil, v
	case *GetSubscriptionV2HandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SubscribeV2HandlerShort subscribe to app down notification
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [CREATE]`

Subscribe to app down notification
Request body:
- notificationType : type of the app notification to be subscribed - Required.
- values:
- "all"
- "app-down"
- "critical-vulnerability"
*/
func (a *Client) SubscribeV2HandlerShort(params *SubscribeV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SubscribeV2HandlerNoContent, error) {
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
		return v, nil
	case *SubscribeV2HandlerUnauthorized:
		return nil, v
	case *SubscribeV2HandlerForbidden:
		return nil, v
	case *SubscribeV2HandlerNotFound:
		return nil, v
	case *SubscribeV2HandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnsubscribeV2HandlerShort unsubscribe to app down notification
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SELF:SUBSCRIPTION [DELETE]`

Unsubscribe to app down notification
*/
func (a *Client) UnsubscribeV2HandlerShort(params *UnsubscribeV2HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeV2HandlerNoContent, error) {
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
		return v, nil
	case *UnsubscribeV2HandlerUnauthorized:
		return nil, v
	case *UnsubscribeV2HandlerForbidden:
		return nil, v
	case *UnsubscribeV2HandlerNotFound:
		return nil, v
	case *UnsubscribeV2HandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSubscriptionAppNotificationByUserIDV2Short remove other person subscription by user id
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

Remove a user from the notification subscription by user ID.
*/
func (a *Client) DeleteSubscriptionAppNotificationByUserIDV2Short(params *DeleteSubscriptionAppNotificationByUserIDV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationByUserIDV2OK, error) {
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
		return v, nil
	case *DeleteSubscriptionAppNotificationByUserIDV2Unauthorized:
		return nil, v
	case *DeleteSubscriptionAppNotificationByUserIDV2Forbidden:
		return nil, v
	case *DeleteSubscriptionAppNotificationByUserIDV2NotFound:
		return nil, v
	case *DeleteSubscriptionAppNotificationByUserIDV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSubscriptionAppNotificationV2Short remove other person subscription
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP:ALERT:SUBSCRIPTION [DELETE]`

Remove a user from the notification subscription.
*/
func (a *Client) DeleteSubscriptionAppNotificationV2Short(params *DeleteSubscriptionAppNotificationV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSubscriptionAppNotificationV2OK, error) {
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
		return v, nil
	case *DeleteSubscriptionAppNotificationV2Unauthorized:
		return nil, v
	case *DeleteSubscriptionAppNotificationV2Forbidden:
		return nil, v
	case *DeleteSubscriptionAppNotificationV2NotFound:
		return nil, v
	case *DeleteSubscriptionAppNotificationV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
