// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package event_descriptions

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new event descriptions API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for event descriptions API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AgentTypeDescriptionHandlerShort(params *AgentTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*AgentTypeDescriptionHandlerOK, error)
	SpecificAgentTypeDescriptionHandlerShort(params *SpecificAgentTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificAgentTypeDescriptionHandlerOK, error)
	EventIDDescriptionHandlerShort(params *EventIDDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*EventIDDescriptionHandlerOK, error)
	SpecificEventIDDescriptionHandlerShort(params *SpecificEventIDDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificEventIDDescriptionHandlerOK, error)
	EventLevelDescriptionHandlerShort(params *EventLevelDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*EventLevelDescriptionHandlerOK, error)
	SpecificEventLevelDescriptionHandlerShort(params *SpecificEventLevelDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificEventLevelDescriptionHandlerOK, error)
	EventTypeDescriptionHandlerShort(params *EventTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*EventTypeDescriptionHandlerOK, error)
	SpecificEventTypeDescriptionHandlerShort(params *SpecificEventTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificEventTypeDescriptionHandlerOK, error)
	UXNameDescriptionHandlerShort(params *UXNameDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UXNameDescriptionHandlerOK, error)
	SpecificUXDescriptionHandlerShort(params *SpecificUXDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificUXDescriptionHandlerOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AgentTypeDescriptionHandlerShort get list of agent type and the descriptions
*/
func (a *Client) AgentTypeDescriptionHandlerShort(params *AgentTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*AgentTypeDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAgentTypeDescriptionHandlerParams()
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
		ID:                 "AgentTypeDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/agentType",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AgentTypeDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AgentTypeDescriptionHandlerOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SpecificAgentTypeDescriptionHandlerShort get specific list of agent type and the descriptions by comma separated value of agent types
*/
func (a *Client) SpecificAgentTypeDescriptionHandlerShort(params *SpecificAgentTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificAgentTypeDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSpecificAgentTypeDescriptionHandlerParams()
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
		ID:                 "SpecificAgentTypeDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/agentType/listByAgentTypes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SpecificAgentTypeDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SpecificAgentTypeDescriptionHandlerOK:
		return v, nil
	case *SpecificAgentTypeDescriptionHandlerBadRequest:
		return nil, v
	case *SpecificAgentTypeDescriptionHandlerNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EventIDDescriptionHandlerShort get list of eventid and the descriptions
*/
func (a *Client) EventIDDescriptionHandlerShort(params *EventIDDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*EventIDDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEventIDDescriptionHandlerParams()
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
		ID:                 "EventIDDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/eventId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EventIDDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EventIDDescriptionHandlerOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SpecificEventIDDescriptionHandlerShort get specific list of eventid and the descriptions by comma separated value of eventids
*/
func (a *Client) SpecificEventIDDescriptionHandlerShort(params *SpecificEventIDDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificEventIDDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSpecificEventIDDescriptionHandlerParams()
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
		ID:                 "SpecificEventIDDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/eventId/listByEventIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SpecificEventIDDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SpecificEventIDDescriptionHandlerOK:
		return v, nil
	case *SpecificEventIDDescriptionHandlerBadRequest:
		return nil, v
	case *SpecificEventIDDescriptionHandlerNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EventLevelDescriptionHandlerShort get list of event level and the descriptions
*/
func (a *Client) EventLevelDescriptionHandlerShort(params *EventLevelDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*EventLevelDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEventLevelDescriptionHandlerParams()
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
		ID:                 "EventLevelDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/eventLevel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EventLevelDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EventLevelDescriptionHandlerOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SpecificEventLevelDescriptionHandlerShort get specific list of event level and the descriptions by comma separated value of event levels
*/
func (a *Client) SpecificEventLevelDescriptionHandlerShort(params *SpecificEventLevelDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificEventLevelDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSpecificEventLevelDescriptionHandlerParams()
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
		ID:                 "SpecificEventLevelDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/eventLevel/listByEventLevels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SpecificEventLevelDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SpecificEventLevelDescriptionHandlerOK:
		return v, nil
	case *SpecificEventLevelDescriptionHandlerBadRequest:
		return nil, v
	case *SpecificEventLevelDescriptionHandlerNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EventTypeDescriptionHandlerShort get list of event type and the descriptions
*/
func (a *Client) EventTypeDescriptionHandlerShort(params *EventTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*EventTypeDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEventTypeDescriptionHandlerParams()
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
		ID:                 "EventTypeDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/eventType",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EventTypeDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EventTypeDescriptionHandlerOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SpecificEventTypeDescriptionHandlerShort get specific list of event type and the descriptions by comma separated value of event types
*/
func (a *Client) SpecificEventTypeDescriptionHandlerShort(params *SpecificEventTypeDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificEventTypeDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSpecificEventTypeDescriptionHandlerParams()
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
		ID:                 "SpecificEventTypeDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/eventType/listByEventTypes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SpecificEventTypeDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SpecificEventTypeDescriptionHandlerOK:
		return v, nil
	case *SpecificEventTypeDescriptionHandlerBadRequest:
		return nil, v
	case *SpecificEventTypeDescriptionHandlerNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UXNameDescriptionHandlerShort get list of ux name and the descriptions
*/
func (a *Client) UXNameDescriptionHandlerShort(params *UXNameDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*UXNameDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUXNameDescriptionHandlerParams()
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
		ID:                 "UXNameDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/ux",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UXNameDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UXNameDescriptionHandlerOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SpecificUXDescriptionHandlerShort get specific list of ux and the descriptions by comma separated value of ux
*/
func (a *Client) SpecificUXDescriptionHandlerShort(params *SpecificUXDescriptionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*SpecificUXDescriptionHandlerOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSpecificUXDescriptionHandlerParams()
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
		ID:                 "SpecificUXDescriptionHandler",
		Method:             "GET",
		PathPattern:        "/event/descriptions/ux/listByUx",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SpecificUXDescriptionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SpecificUXDescriptionHandlerOK:
		return v, nil
	case *SpecificUXDescriptionHandlerBadRequest:
		return nil, v
	case *SpecificUXDescriptionHandlerNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
