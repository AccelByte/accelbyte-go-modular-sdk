// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package login_allowlist

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new login allowlist API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for login allowlist API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetLoginAllowlistV3Short(params *AdminGetLoginAllowlistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLoginAllowlistV3Response, error)
	AdminUpdateLoginAllowlistV3Short(params *AdminUpdateLoginAllowlistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateLoginAllowlistV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetLoginAllowlistV3Short admin get login allowlist
This endpoint return login allowlist configuration from specific namespace.
*/
func (a *Client) AdminGetLoginAllowlistV3Short(params *AdminGetLoginAllowlistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLoginAllowlistV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetLoginAllowlistV3Params()
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
		ID:                 "AdminGetLoginAllowlistV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/loginAllowlist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetLoginAllowlistV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetLoginAllowlistV3OK:
		response := &AdminGetLoginAllowlistV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetLoginAllowlistV3Unauthorized:
		response := &AdminGetLoginAllowlistV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetLoginAllowlistV3Forbidden:
		response := &AdminGetLoginAllowlistV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetLoginAllowlistV3InternalServerError:
		response := &AdminGetLoginAllowlistV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateLoginAllowlistV3Short admin update login allowlist
This endpoint update login allowlist configuration from specific game namespace.
roleIds: are list of role that allowed to login
Note: only accept game namespace
*/
func (a *Client) AdminUpdateLoginAllowlistV3Short(params *AdminUpdateLoginAllowlistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateLoginAllowlistV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateLoginAllowlistV3Params()
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
		ID:                 "AdminUpdateLoginAllowlistV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/loginAllowlist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateLoginAllowlistV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateLoginAllowlistV3NoContent:
		response := &AdminUpdateLoginAllowlistV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateLoginAllowlistV3BadRequest:
		response := &AdminUpdateLoginAllowlistV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateLoginAllowlistV3Unauthorized:
		response := &AdminUpdateLoginAllowlistV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateLoginAllowlistV3Forbidden:
		response := &AdminUpdateLoginAllowlistV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateLoginAllowlistV3InternalServerError:
		response := &AdminUpdateLoginAllowlistV3Response{}
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
