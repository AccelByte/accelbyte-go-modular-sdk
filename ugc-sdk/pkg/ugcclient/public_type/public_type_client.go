// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_type

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public type API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public type API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetTypeShort(params *GetTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetTypeResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetTypeShort get types
Get available types paginated
*/
func (a *Client) GetTypeShort(params *GetTypeParams, authInfo runtime.ClientAuthInfoWriter) (*GetTypeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTypeParams()
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
		ID:                 "GetType",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTypeOK:
		response := &GetTypeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTypeBadRequest:
		response := &GetTypeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTypeUnauthorized:
		response := &GetTypeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTypeInternalServerError:
		response := &GetTypeResponse{}
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
