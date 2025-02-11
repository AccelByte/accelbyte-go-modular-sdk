// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListServerPerNamespaceShort(params *ListServerPerNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerPerNamespaceResponse, error)
	ListServerShort(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListServerPerNamespaceShort get list of qos services per region
```
This endpoint lists all QoS services available in all regions.

This endpoint is intended to be called by game client to find out all available regions.
After getting a list of QoS on each region, game client is expected to ping each one with UDP
connection as described below:

1. Make UDP connection to each QoS's IP:Port
2. Send string "PING" after connection established
3. Wait for string "PONG" response
4. Note the request-response latency for each QoS in each region

The game then can use ping latency information to either:
1. Inform the player on these latencies and let player choose preferred region
2. Send the latency list to Matchmaking Service so that player can be matched with other players
in nearby regions
```
*/
func (a *Client) ListServerPerNamespaceShort(params *ListServerPerNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerPerNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListServerPerNamespaceParams()
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
		ID:                 "ListServerPerNamespace",
		Method:             "GET",
		PathPattern:        "/qosm/public/namespaces/{namespace}/qos",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListServerPerNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListServerPerNamespaceOK:
		response := &ListServerPerNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListServerPerNamespaceInternalServerError:
		response := &ListServerPerNamespaceResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListServerShort get list of qos services
```
This endpoint lists all QoS services available in all regions.

This endpoint is intended to be called by game client to find out all available regions.
After getting a list of QoS on each region, game client is expected to ping each one with UDP
connection as described below:

1. Make UDP connection to each QoS's IP:Port
2. Send string "PING" after connection established
3. Wait for string "PONG" response
4. Note the request-response latency for each QoS in each region

The game then can use ping latency information to either:
1. Inform the player on these latencies and let player choose preferred region
2. Send the latency list to Matchmaking Service so that player can be matched with other players
in nearby regions
```
*/
func (a *Client) ListServerShort(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListServerParams()
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
		ID:                 "ListServer",
		Method:             "GET",
		PathPattern:        "/qosm/public/qos",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListServerOK:
		response := &ListServerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListServerInternalServerError:
		response := &ListServerResponse{}
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
