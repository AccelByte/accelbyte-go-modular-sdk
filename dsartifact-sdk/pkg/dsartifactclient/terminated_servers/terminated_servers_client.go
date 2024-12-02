// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package terminated_servers

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new terminated servers API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for terminated servers API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListTerminatedServersWithNamespaceShort(params *ListTerminatedServersWithNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersWithNamespaceResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListTerminatedServersWithNamespaceShort retrieve all terminated servers in a namespace
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSAM:SERVER [READ]

This endpoint used to retrieve terminated servers in a namespace
```
*/
func (a *Client) ListTerminatedServersWithNamespaceShort(params *ListTerminatedServersWithNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersWithNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTerminatedServersWithNamespaceParams()
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
		ID:                 "listTerminatedServersWithNamespace",
		Method:             "GET",
		PathPattern:        "/dsartifact/namespaces/{namespace}/servers/search",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTerminatedServersWithNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListTerminatedServersWithNamespaceOK:
		response := &ListTerminatedServersWithNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListTerminatedServersWithNamespaceBadRequest:
		response := &ListTerminatedServersWithNamespaceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListTerminatedServersWithNamespaceUnauthorized:
		response := &ListTerminatedServersWithNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListTerminatedServersWithNamespaceInternalServerError:
		response := &ListTerminatedServersWithNamespaceResponse{}
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
