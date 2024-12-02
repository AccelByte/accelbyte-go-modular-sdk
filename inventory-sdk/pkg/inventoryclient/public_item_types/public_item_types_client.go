// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_item_types

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public item types API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public item types API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicListItemTypesShort(params *PublicListItemTypesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListItemTypesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicListItemTypesShort to list item types

This endpoint will list all item types in a namespace.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListItemTypesShort(params *PublicListItemTypesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListItemTypesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListItemTypesParams()
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
		ID:                 "PublicListItemTypes",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/itemtypes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListItemTypesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListItemTypesOK:
		response := &PublicListItemTypesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListItemTypesBadRequest:
		response := &PublicListItemTypesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicListItemTypesInternalServerError:
		response := &PublicListItemTypesResponse{}
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
