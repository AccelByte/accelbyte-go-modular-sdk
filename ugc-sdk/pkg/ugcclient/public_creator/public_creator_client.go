// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_creator

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public creator API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public creator API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicSearchCreatorShort(params *PublicSearchCreatorParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchCreatorResponse, error)
	PublicGetCreatorShort(params *PublicGetCreatorParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCreatorResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicSearchCreatorShort search creator
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicSearchCreatorShort(params *PublicSearchCreatorParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchCreatorResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSearchCreatorParams()
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
		ID:                 "PublicSearchCreator",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSearchCreatorReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSearchCreatorOK:
		response := &PublicSearchCreatorResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSearchCreatorBadRequest:
		response := &PublicSearchCreatorResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicSearchCreatorUnauthorized:
		response := &PublicSearchCreatorResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicSearchCreatorInternalServerError:
		response := &PublicSearchCreatorResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetCreatorShort get creator stats: number of total like by other user, number of total following and follower user
Public user can access without token or if token specified, requires valid user token
*/
func (a *Client) PublicGetCreatorShort(params *PublicGetCreatorParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetCreatorResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetCreatorParams()
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
		ID:                 "PublicGetCreator",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetCreatorReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetCreatorOK:
		response := &PublicGetCreatorResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetCreatorUnauthorized:
		response := &PublicGetCreatorResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetCreatorNotFound:
		response := &PublicGetCreatorResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetCreatorInternalServerError:
		response := &PublicGetCreatorResponse{}
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
