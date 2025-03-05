// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package utilities

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new utilities API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for utilities API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetItemReferencesShort(params *GetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemReferencesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetItemReferencesShort get season pass ecommerce item references
This API is used to get season pass ecommerce item references.

Other detail info:

  * Returns : item references data
*/
func (a *Client) GetItemReferencesShort(params *GetItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemReferencesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemReferencesParams()
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
		ID:                 "getItemReferences",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/item/references",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemReferencesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemReferencesOK:
		response := &GetItemReferencesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetItemReferencesBadRequest:
		response := &GetItemReferencesResponse{}
		response.Error400 = v.Payload

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
