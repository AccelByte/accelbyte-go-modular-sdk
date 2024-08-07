// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetLogConfigShort(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigOK, error)
	AdminPatchUpdateLogConfigShort(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigOK, error)
	AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, error)
	AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, error)
	AdminPatchConfigV1Short(params *AdminPatchConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchConfigV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetLogConfigShort get log configuration
Get Log Configuration.
*/
func (a *Client) AdminGetLogConfigShort(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetLogConfigParams()
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
		ID:                 "adminGetLogConfig",
		Method:             "GET",
		PathPattern:        "/match2/v1/admin/config/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetLogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetLogConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPatchUpdateLogConfigShort patch update log configuration
Update Log Configuration.
*/
func (a *Client) AdminPatchUpdateLogConfigShort(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchUpdateLogConfigParams()
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
		ID:                 "adminPatchUpdateLogConfig",
		Method:             "PATCH",
		PathPattern:        "/match2/v1/admin/config/log",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchUpdateLogConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPatchUpdateLogConfigOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllConfigV1Short admin get all namespaces config
Get matchmaking config of all namespaces. Will only return namespace configs than have been updated.
*/
func (a *Client) AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllConfigV1Params()
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
		ID:                 "adminGetAllConfigV1",
		Method:             "GET",
		PathPattern:        "/match2/v1/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllConfigV1OK:
		return v, nil
	case *AdminGetAllConfigV1Unauthorized:
		return nil, v
	case *AdminGetAllConfigV1Forbidden:
		return nil, v
	case *AdminGetAllConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigV1Short admin get namespace config
Get matchmaking config of a namespaces.
*/
func (a *Client) AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigV1Params()
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
		ID:                 "adminGetConfigV1",
		Method:             "GET",
		PathPattern:        "/match2/v1/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigV1OK:
		return v, nil
	case *AdminGetConfigV1Unauthorized:
		return nil, v
	case *AdminGetConfigV1Forbidden:
		return nil, v
	case *AdminGetConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPatchConfigV1Short admin patch update namespace config
Patch update matchmaking config of a namespaces. Partially update matchmaking config, will only update value that defined on the request.
*/
func (a *Client) AdminPatchConfigV1Short(params *AdminPatchConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchConfigV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchConfigV1Params()
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
		ID:                 "adminPatchConfigV1",
		Method:             "PATCH",
		PathPattern:        "/match2/v1/config/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchConfigV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPatchConfigV1OK:
		return v, nil
	case *AdminPatchConfigV1Unauthorized:
		return nil, v
	case *AdminPatchConfigV1Forbidden:
		return nil, v
	case *AdminPatchConfigV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
