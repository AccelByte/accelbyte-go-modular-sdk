// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package server

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new server API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for server API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	HeartbeatShort(params *HeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*HeartbeatResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
HeartbeatShort send heartbeat
```
Required permission: QOS:SERVER [CREATE][UPDATE]
Required scope: social

This endpoint is intended to be called by QoS service
to register and periodically let QoS Manager know that it is still alive.
```
*/
func (a *Client) HeartbeatShort(params *HeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*HeartbeatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewHeartbeatParams()
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
		ID:                 "Heartbeat",
		Method:             "POST",
		PathPattern:        "/qosm/servers/heartbeat",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &HeartbeatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *HeartbeatNoContent:
		response := &HeartbeatResponse{}

		response.IsSuccess = true

		return response, nil
	case *HeartbeatBadRequest:
		response := &HeartbeatResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *HeartbeatInternalServerError:
		response := &HeartbeatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
