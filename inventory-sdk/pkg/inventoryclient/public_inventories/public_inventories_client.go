// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_inventories

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public inventories API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public inventories API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicListInventoriesShort(params *PublicListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListInventoriesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicListInventoriesShort to list all my inventories

Listing all my inventories in a namespace.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListInventoriesShort(params *PublicListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListInventoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListInventoriesParams()
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
		ID:                 "PublicListInventories",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/users/me/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListInventoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListInventoriesOK:
		response := &PublicListInventoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListInventoriesBadRequest:
		response := &PublicListInventoriesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListInventoriesInternalServerError:
		response := &PublicListInventoriesResponse{}
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
