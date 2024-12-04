// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package telemetry

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new telemetry API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for telemetry API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetNamespacesGameTelemetryV1AdminNamespacesGetShort(params *GetNamespacesGameTelemetryV1AdminNamespacesGetParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesGameTelemetryV1AdminNamespacesGetResponse, error)
	GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort(params *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetNamespacesGameTelemetryV1AdminNamespacesGetShort get namespaces
This endpoint requires valid JWT token and telemetry permission
This endpoint retrieves namespace list
*/
func (a *Client) GetNamespacesGameTelemetryV1AdminNamespacesGetShort(params *GetNamespacesGameTelemetryV1AdminNamespacesGetParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesGameTelemetryV1AdminNamespacesGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespacesGameTelemetryV1AdminNamespacesGetParams()
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
		ID:                 "get_namespaces_game_telemetry_v1_admin_namespaces_get",
		Method:             "GET",
		PathPattern:        "/game-telemetry/v1/admin/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespacesGameTelemetryV1AdminNamespacesGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespacesGameTelemetryV1AdminNamespacesGetOK:
		response := &GetNamespacesGameTelemetryV1AdminNamespacesGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNamespacesGameTelemetryV1AdminNamespacesGetInternalServerError:
		response := &GetNamespacesGameTelemetryV1AdminNamespacesGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort get events
This endpoint requires valid JWT token and telemetry permission
This endpoint retrieves event list
*/
func (a *Client) GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetShort(params *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams, authInfo runtime.ClientAuthInfoWriter) (*GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetParams()
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
		ID:                 "get_events_game_telemetry_v1_admin_namespaces__namespace__events_get",
		Method:             "GET",
		PathPattern:        "/game-telemetry/v1/admin/namespaces/{namespace}/events",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetOK:
		response := &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetBadRequest:
		response := &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetUnprocessableEntity:
		response := &GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGetResponse{}
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
