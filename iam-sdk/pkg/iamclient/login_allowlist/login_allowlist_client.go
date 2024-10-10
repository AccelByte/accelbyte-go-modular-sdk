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
	AdminGetLoginAllowlistV3Short(params *AdminGetLoginAllowlistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLoginAllowlistV3OK, error)
	AdminUpdateLoginAllowlistV3Short(params *AdminUpdateLoginAllowlistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateLoginAllowlistV3NoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetLoginAllowlistV3Short admin get login allowlist
This endpoint return login allowlist configuration from specific namespace.
*/
func (a *Client) AdminGetLoginAllowlistV3Short(params *AdminGetLoginAllowlistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLoginAllowlistV3OK, error) {
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
		return v, nil
	case *AdminGetLoginAllowlistV3Unauthorized:
		return nil, v
	case *AdminGetLoginAllowlistV3Forbidden:
		return nil, v
	case *AdminGetLoginAllowlistV3InternalServerError:
		return nil, v

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
func (a *Client) AdminUpdateLoginAllowlistV3Short(params *AdminUpdateLoginAllowlistV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateLoginAllowlistV3NoContent, error) {
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
		return v, nil
	case *AdminUpdateLoginAllowlistV3BadRequest:
		return nil, v
	case *AdminUpdateLoginAllowlistV3Unauthorized:
		return nil, v
	case *AdminUpdateLoginAllowlistV3Forbidden:
		return nil, v
	case *AdminUpdateLoginAllowlistV3InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
