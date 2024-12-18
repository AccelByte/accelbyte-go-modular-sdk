// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleet_commander

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new fleet commander API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for fleet commander API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PortalHealthCheckShort(params *PortalHealthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*PortalHealthCheckResponse, error)
	Func1Short(params *Func1Params, authInfo runtime.ClientAuthInfoWriter) (*Func1Response, error)
	BasicHealthCheckShort(params *BasicHealthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*BasicHealthCheckResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PortalHealthCheckShort health check
*/
func (a *Client) PortalHealthCheckShort(params *PortalHealthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*PortalHealthCheckResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPortalHealthCheckParams()
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
		ID:                 "PortalHealthCheck",
		Method:             "GET",
		PathPattern:        "/ams/healthz",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PortalHealthCheckReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PortalHealthCheckOK:
		response := &PortalHealthCheckResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Func1Short version info
*/
func (a *Client) Func1Short(params *Func1Params, authInfo runtime.ClientAuthInfoWriter) (*Func1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFunc1Params()
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
		ID:                 "func1",
		Method:             "GET",
		PathPattern:        "/ams/version",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Func1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *Func1OK:
		response := &Func1Response{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BasicHealthCheckShort health check
*/
func (a *Client) BasicHealthCheckShort(params *BasicHealthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*BasicHealthCheckResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBasicHealthCheckParams()
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
		ID:                 "BasicHealthCheck",
		Method:             "GET",
		PathPattern:        "/healthz",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BasicHealthCheckReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BasicHealthCheckOK:
		response := &BasicHealthCheckResponse{}

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
