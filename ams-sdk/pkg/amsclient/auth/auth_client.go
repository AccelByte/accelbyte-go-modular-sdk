// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package auth

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new auth API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for auth API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AuthCheckShort(params *AuthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*AuthCheckResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AuthCheckShort checks if fleet commander can auth with ams
Check if fleet commander is authorized to talk to AMS with this IAM
*/
func (a *Client) AuthCheckShort(params *AuthCheckParams, authInfo runtime.ClientAuthInfoWriter) (*AuthCheckResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthCheckParams()
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
		ID:                 "AuthCheck",
		Method:             "GET",
		PathPattern:        "/ams/auth",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthCheckReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthCheckOK:
		response := &AuthCheckResponse{}

		response.IsSuccess = true

		return response, nil
	case *AuthCheckUnauthorized:
		response := &AuthCheckResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AuthCheckForbidden:
		response := &AuthCheckResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AuthCheckInternalServerError:
		response := &AuthCheckResponse{}
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
