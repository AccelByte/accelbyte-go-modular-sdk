// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package native_session

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new native session API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for native session API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetListNativeSessionShort(params *AdminGetListNativeSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListNativeSessionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetListNativeSessionShort list of native sessions.
List of native sessions.
*/
func (a *Client) AdminGetListNativeSessionShort(params *AdminGetListNativeSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetListNativeSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetListNativeSessionParams()
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
		ID:                 "adminGetListNativeSession",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/native-sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetListNativeSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetListNativeSessionOK:
		response := &AdminGetListNativeSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetListNativeSessionUnauthorized:
		response := &AdminGetListNativeSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetListNativeSessionForbidden:
		response := &AdminGetListNativeSessionResponse{}
		response.Error403 = v.Payload

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
