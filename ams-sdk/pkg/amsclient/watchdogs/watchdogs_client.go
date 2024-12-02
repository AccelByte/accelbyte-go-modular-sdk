// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package watchdogs

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new watchdogs API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for watchdogs API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	LocalWatchdogConnectShort(params *LocalWatchdogConnectParams, authInfo runtime.ClientAuthInfoWriter) (*LocalWatchdogConnectResponse, error)
	WatchdogConnectShort(params *WatchdogConnectParams, authInfo runtime.ClientAuthInfoWriter) (*WatchdogConnectResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
LocalWatchdogConnectShort connect a local watchdog
This is to support local ds development scenarios

Required Permission: NAMESPACE:{namespace}:AMS:LOCALDS [CREATE]
*/
func (a *Client) LocalWatchdogConnectShort(params *LocalWatchdogConnectParams, authInfo runtime.ClientAuthInfoWriter) (*LocalWatchdogConnectResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLocalWatchdogConnectParams()
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
		ID:                 "LocalWatchdogConnect",
		Method:             "GET",
		PathPattern:        "/ams/v1/namespaces/{namespace}/local/{watchdogID}/connect",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LocalWatchdogConnectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LocalWatchdogConnectOK:
		response := &LocalWatchdogConnectResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
WatchdogConnectShort connect a watchdog
Required Permission: NAMESPACE:{namespace}:ARMADA:WATCHDOG [CREATE]
*/
func (a *Client) WatchdogConnectShort(params *WatchdogConnectParams, authInfo runtime.ClientAuthInfoWriter) (*WatchdogConnectResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewWatchdogConnectParams()
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
		ID:                 "WatchdogConnect",
		Method:             "GET",
		PathPattern:        "/ams/v1/namespaces/{namespace}/watchdogs/{watchdogID}/connect",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &WatchdogConnectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *WatchdogConnectOK:
		response := &WatchdogConnectResponse{}

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
