// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package environment_variables

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new environment variables API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for environment variables API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	EnvironmentVariableListShort(params *EnvironmentVariableListParams, authInfo runtime.ClientAuthInfoWriter) (*EnvironmentVariableListResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
EnvironmentVariableListShort list environment variables
List environment variables.
*/
func (a *Client) EnvironmentVariableListShort(params *EnvironmentVariableListParams, authInfo runtime.ClientAuthInfoWriter) (*EnvironmentVariableListResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnvironmentVariableListParams()
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
		ID:                 "EnvironmentVariableList",
		Method:             "GET",
		PathPattern:        "/match2/v1/environment-variables",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnvironmentVariableListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnvironmentVariableListOK:
		response := &EnvironmentVariableListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *EnvironmentVariableListUnauthorized:
		response := &EnvironmentVariableListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *EnvironmentVariableListForbidden:
		response := &EnvironmentVariableListResponse{}
		response.Error403 = v.Payload

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
