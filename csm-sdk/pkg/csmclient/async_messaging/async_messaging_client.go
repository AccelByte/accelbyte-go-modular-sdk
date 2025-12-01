// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package async_messaging

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new async messaging API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for async messaging API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateSubscriptionHandlerShort(params *CreateSubscriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSubscriptionHandlerResponse, error)
	UnsubscribeTopicHandlerShort(params *UnsubscribeTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeTopicHandlerResponse, error)
	ListTopicsHandlerShort(params *ListTopicsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*ListTopicsHandlerResponse, error)
	CreateTopicHandlerShort(params *CreateTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicHandlerResponse, error)
	DeleteTopicHandlerShort(params *DeleteTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicHandlerResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateSubscriptionHandlerShort subscribe to topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [CREATE]`

Subscribe App queue to given Topic name list inside a game namespace.
*/
func (a *Client) CreateSubscriptionHandlerShort(params *CreateSubscriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSubscriptionHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSubscriptionHandlerParams()
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
		ID:                 "CreateSubscriptionHandler",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSubscriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSubscriptionHandlerOK:
		response := &CreateSubscriptionHandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateSubscriptionHandlerBadRequest:
		response := &CreateSubscriptionHandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSubscriptionHandlerUnauthorized:
		response := &CreateSubscriptionHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSubscriptionHandlerForbidden:
		response := &CreateSubscriptionHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSubscriptionHandlerNotFound:
		response := &CreateSubscriptionHandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateSubscriptionHandlerInternalServerError:
		response := &CreateSubscriptionHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnsubscribeTopicHandlerShort unsubscribe from topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:SUBSCRIPTIONS [DELETE]`

Unsubscribe App queue from a topic by Topic Name.
*/
func (a *Client) UnsubscribeTopicHandlerShort(params *UnsubscribeTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnsubscribeTopicHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnsubscribeTopicHandlerParams()
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
		ID:                 "UnsubscribeTopicHandler",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnsubscribeTopicHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnsubscribeTopicHandlerOK:
		response := &UnsubscribeTopicHandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UnsubscribeTopicHandlerUnauthorized:
		response := &UnsubscribeTopicHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UnsubscribeTopicHandlerForbidden:
		response := &UnsubscribeTopicHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UnsubscribeTopicHandlerNotFound:
		response := &UnsubscribeTopicHandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UnsubscribeTopicHandlerInternalServerError:
		response := &UnsubscribeTopicHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListTopicsHandlerShort list async messaging topics
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [READ]`

List all Async Messaging Topics inside a game namespace.
*/
func (a *Client) ListTopicsHandlerShort(params *ListTopicsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*ListTopicsHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTopicsHandlerParams()
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
		ID:                 "ListTopicsHandler",
		Method:             "GET",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTopicsHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListTopicsHandlerOK:
		response := &ListTopicsHandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListTopicsHandlerBadRequest:
		response := &ListTopicsHandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListTopicsHandlerUnauthorized:
		response := &ListTopicsHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListTopicsHandlerForbidden:
		response := &ListTopicsHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListTopicsHandlerInternalServerError:
		response := &ListTopicsHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateTopicHandlerShort create async messaging topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [CREATE]`

Create New Async Messaging Topic, the topic name is unique inside a game namespace.
*/
func (a *Client) CreateTopicHandlerShort(params *CreateTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateTopicHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateTopicHandlerParams()
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
		ID:                 "CreateTopicHandler",
		Method:             "POST",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateTopicHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateTopicHandlerOK:
		response := &CreateTopicHandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateTopicHandlerBadRequest:
		response := &CreateTopicHandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateTopicHandlerUnauthorized:
		response := &CreateTopicHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateTopicHandlerForbidden:
		response := &CreateTopicHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateTopicHandlerConflict:
		response := &CreateTopicHandlerResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateTopicHandlerInternalServerError:
		response := &CreateTopicHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTopicHandlerShort delete async messaging topic
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:ASYNCMESSAGING:TOPICS [DELETE]`

Delete Async Messaging Topic inside a game namespace given its topic name.
*/
func (a *Client) DeleteTopicHandlerShort(params *DeleteTopicHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTopicHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTopicHandlerParams()
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
		ID:                 "DeleteTopicHandler",
		Method:             "DELETE",
		PathPattern:        "/csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTopicHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTopicHandlerOK:
		response := &DeleteTopicHandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteTopicHandlerUnauthorized:
		response := &DeleteTopicHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteTopicHandlerForbidden:
		response := &DeleteTopicHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteTopicHandlerNotFound:
		response := &DeleteTopicHandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteTopicHandlerInternalServerError:
		response := &DeleteTopicHandlerResponse{}
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
