// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package public

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	ListServer(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerOK, *ListServerInternalServerError, error)
	ListServerShort(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerOK, error)
	ListServerPerNamespace(params *ListServerPerNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerPerNamespaceOK, *ListServerPerNamespaceInternalServerError, error)
	ListServerPerNamespaceShort(params *ListServerPerNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerPerNamespaceOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: Use ListServerShort instead.

	ListServer gets list of qo s services

	```

This endpoint lists all QoS services available in all regions.

This endpoint is intended to be called by game client to find out all available regions.
After getting a list of QoS on each region, game client is expected to ping each one with UDP
connection as described below:

1. Make UDP connection to each QoS&#39;s IP:Port
2. Send string &#34;PING&#34; after connection established
3. Wait for string &#34;PONG&#34; response
4. Note the request-response latency for each QoS in each region

The game then can use ping latency information to either:
 1. Inform the player on these latencies and let player choose preferred region
 2. Send the latency list to Matchmaking Service so that player can be matched with other players
    in nearby regions

```
*/
func (a *Client) ListServer(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerOK, *ListServerInternalServerError, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ListServerOK:
		return v, nil, nil

	case *ListServerInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
	ListServerShort gets list of qo s services

	```

This endpoint lists all QoS services available in all regions.

This endpoint is intended to be called by game client to find out all available regions.
After getting a list of QoS on each region, game client is expected to ping each one with UDP
connection as described below:

1. Make UDP connection to each QoS&#39;s IP:Port
2. Send string &#34;PING&#34; after connection established
3. Wait for string &#34;PONG&#34; response
4. Note the request-response latency for each QoS in each region

The game then can use ping latency information to either:
 1. Inform the player on these latencies and let player choose preferred region
 2. Send the latency list to Matchmaking Service so that player can be matched with other players
    in nearby regions

```
*/
func (a *Client) ListServerShort(params *ListServerParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerOK, error) {
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
		return v, nil
	case *ListServerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: Use ListServerPerNamespaceShort instead.

	ListServerPerNamespace gets list of qo s services per region

	```

This endpoint lists all QoS services available in all regions.

This endpoint is intended to be called by game client to find out all available regions.
After getting a list of QoS on each region, game client is expected to ping each one with UDP
connection as described below:

1. Make UDP connection to each QoS&#39;s IP:Port
2. Send string &#34;PING&#34; after connection established
3. Wait for string &#34;PONG&#34; response
4. Note the request-response latency for each QoS in each region

The game then can use ping latency information to either:
 1. Inform the player on these latencies and let player choose preferred region
 2. Send the latency list to Matchmaking Service so that player can be matched with other players
    in nearby regions

```
*/
func (a *Client) ListServerPerNamespace(params *ListServerPerNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerPerNamespaceOK, *ListServerPerNamespaceInternalServerError, error) {
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
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ListServerPerNamespaceOK:
		return v, nil, nil

	case *ListServerPerNamespaceInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
	ListServerPerNamespaceShort gets list of qo s services per region

	```

This endpoint lists all QoS services available in all regions.

This endpoint is intended to be called by game client to find out all available regions.
After getting a list of QoS on each region, game client is expected to ping each one with UDP
connection as described below:

1. Make UDP connection to each QoS&#39;s IP:Port
2. Send string &#34;PING&#34; after connection established
3. Wait for string &#34;PONG&#34; response
4. Note the request-response latency for each QoS in each region

The game then can use ping latency information to either:
 1. Inform the player on these latencies and let player choose preferred region
 2. Send the latency list to Matchmaking Service so that player can be matched with other players
    in nearby regions

```
*/
func (a *Client) ListServerPerNamespaceShort(params *ListServerPerNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerPerNamespaceOK, error) {
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
		return v, nil
	case *ListServerPerNamespaceInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
