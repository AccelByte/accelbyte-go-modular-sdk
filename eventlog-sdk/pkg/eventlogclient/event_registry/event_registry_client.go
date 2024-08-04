// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package event_registry

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new event registry API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for event registry API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetRegisteredEventsHandlerShort(params *GetRegisteredEventsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsHandlerOK, error)
	RegisterEventHandlerShort(params *RegisterEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterEventHandlerCreated, error)
	GetRegisteredEventIDHandlerShort(params *GetRegisteredEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventIDHandlerOK, error)
	UpdateEventRegistryHandlerShort(params *UpdateEventRegistryHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEventRegistryHandlerNoContent, error)
	UnregisterEventIDHandlerShort(params *UnregisterEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnregisterEventIDHandlerNoContent, error)
	GetRegisteredEventsByEventTypeHandlerShort(params *GetRegisteredEventsByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsByEventTypeHandlerOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetRegisteredEventsHandlerShort get registered events in the event registry
Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`
*/
func (a *Client) GetRegisteredEventsHandlerShort(params *GetRegisteredEventsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRegisteredEventsHandlerParams()
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
		ID:                 "GetRegisteredEventsHandler",
		Method:             "GET",
		PathPattern:        "/event/registry/eventIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRegisteredEventsHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRegisteredEventsHandlerOK:
		return v, nil
	case *GetRegisteredEventsHandlerUnauthorized:
		return nil, v
	case *GetRegisteredEventsHandlerForbidden:
		return nil, v
	case *GetRegisteredEventsHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RegisterEventHandlerShort register an eventid to the event registry
Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [CREATE]`and scope `analytics`
*/
func (a *Client) RegisterEventHandlerShort(params *RegisterEventHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterEventHandlerCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterEventHandlerParams()
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
		ID:                 "RegisterEventHandler",
		Method:             "POST",
		PathPattern:        "/event/registry/eventIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterEventHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RegisterEventHandlerCreated:
		return v, nil
	case *RegisterEventHandlerBadRequest:
		return nil, v
	case *RegisterEventHandlerUnauthorized:
		return nil, v
	case *RegisterEventHandlerForbidden:
		return nil, v
	case *RegisterEventHandlerConflict:
		return nil, v
	case *RegisterEventHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRegisteredEventIDHandlerShort get registered eventid data from the event registry
Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`
*/
func (a *Client) GetRegisteredEventIDHandlerShort(params *GetRegisteredEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventIDHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRegisteredEventIDHandlerParams()
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
		ID:                 "GetRegisteredEventIDHandler",
		Method:             "GET",
		PathPattern:        "/event/registry/eventIds/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRegisteredEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRegisteredEventIDHandlerOK:
		return v, nil
	case *GetRegisteredEventIDHandlerBadRequest:
		return nil, v
	case *GetRegisteredEventIDHandlerUnauthorized:
		return nil, v
	case *GetRegisteredEventIDHandlerForbidden:
		return nil, v
	case *GetRegisteredEventIDHandlerNotFound:
		return nil, v
	case *GetRegisteredEventIDHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateEventRegistryHandlerShort update an eventid data in the event registry
Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`
*/
func (a *Client) UpdateEventRegistryHandlerShort(params *UpdateEventRegistryHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEventRegistryHandlerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateEventRegistryHandlerParams()
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
		ID:                 "UpdateEventRegistryHandler",
		Method:             "POST",
		PathPattern:        "/event/registry/eventIds/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateEventRegistryHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateEventRegistryHandlerNoContent:
		return v, nil
	case *UpdateEventRegistryHandlerBadRequest:
		return nil, v
	case *UpdateEventRegistryHandlerUnauthorized:
		return nil, v
	case *UpdateEventRegistryHandlerForbidden:
		return nil, v
	case *UpdateEventRegistryHandlerNotFound:
		return nil, v
	case *UpdateEventRegistryHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnregisterEventIDHandlerShort unregister eventid from the event registry
Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [DELETE]`and scope `analytics`
*/
func (a *Client) UnregisterEventIDHandlerShort(params *UnregisterEventIDHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UnregisterEventIDHandlerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnregisterEventIDHandlerParams()
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
		ID:                 "UnregisterEventIDHandler",
		Method:             "DELETE",
		PathPattern:        "/event/registry/eventIds/{eventId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnregisterEventIDHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnregisterEventIDHandlerNoContent:
		return v, nil
	case *UnregisterEventIDHandlerUnauthorized:
		return nil, v
	case *UnregisterEventIDHandlerForbidden:
		return nil, v
	case *UnregisterEventIDHandlerNotFound:
		return nil, v
	case *UnregisterEventIDHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRegisteredEventsByEventTypeHandlerShort get registered eventid data from the event registry based on the event type
Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`
*/
func (a *Client) GetRegisteredEventsByEventTypeHandlerShort(params *GetRegisteredEventsByEventTypeHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRegisteredEventsByEventTypeHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRegisteredEventsByEventTypeHandlerParams()
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
		ID:                 "GetRegisteredEventsByEventTypeHandler",
		Method:             "GET",
		PathPattern:        "/event/registry/eventTypes/{eventType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRegisteredEventsByEventTypeHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRegisteredEventsByEventTypeHandlerOK:
		return v, nil
	case *GetRegisteredEventsByEventTypeHandlerBadRequest:
		return nil, v
	case *GetRegisteredEventsByEventTypeHandlerUnauthorized:
		return nil, v
	case *GetRegisteredEventsByEventTypeHandlerForbidden:
		return nil, v
	case *GetRegisteredEventsByEventTypeHandlerNotFound:
		return nil, v
	case *GetRegisteredEventsByEventTypeHandlerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
