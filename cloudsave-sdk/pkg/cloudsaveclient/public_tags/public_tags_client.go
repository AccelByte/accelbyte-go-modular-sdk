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
	PublicListTagsHandlerV1Short(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicListTagsHandlerV1Short list tags
## Description

Retrieve list of available tags by namespace
*/
func (a *Client) PublicListTagsHandlerV1Short(params *PublicListTagsHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicListTagsHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListTagsHandlerV1Params()
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
		ID:                 "publicListTagsHandlerV1",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/namespaces/{namespace}/tags",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListTagsHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListTagsHandlerV1OK:
		response := &PublicListTagsHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListTagsHandlerV1BadRequest:
		response := &PublicListTagsHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicListTagsHandlerV1Unauthorized:
		response := &PublicListTagsHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicListTagsHandlerV1Forbidden:
		response := &PublicListTagsHandlerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicListTagsHandlerV1InternalServerError:
		response := &PublicListTagsHandlerV1Response{}
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
