// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_tags

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public tags API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public tags API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicListTagsShort(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicListTagsShort to list tags

This endpoint will list all tags in a namespace.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListTagsShort(params *PublicListTagsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsParams()
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
		ID:                 "PublicListTags",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsOK:
		response := &PublicListTagsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListTagsBadRequest:
		response := &PublicListTagsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicListTagsInternalServerError:
		response := &PublicListTagsResponse{}
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
