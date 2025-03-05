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
	AdminGetEnvConfigShort(params *AdminGetEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetEnvConfigResponse, error)
	AdminPatchUpdateEnvConfigShort(params *AdminPatchUpdateEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateEnvConfigResponse, error)
	AdminGetLogConfigShort(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigResponse, error)
	AdminPatchUpdateLogConfigShort(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetEnvConfigShort get runtime environment variable configuration
Get Runtime Environment Configuration.
*/
func (a *Client) AdminGetEnvConfigShort(params *AdminGetEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetEnvConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetEnvConfigParams()
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
		ID:                 "adminGetEnvConfig",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/config/env",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetEnvConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetEnvConfigOK:
		response := &AdminGetEnvConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetEnvConfigUnauthorized:
		response := &AdminGetEnvConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetEnvConfigForbidden:
		response := &AdminGetEnvConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPatchUpdateEnvConfigShort patch update runtime environment variable configuration
Update Runtime Environment Variable Configuration.
*/
func (a *Client) AdminPatchUpdateEnvConfigShort(params *AdminPatchUpdateEnvConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateEnvConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPatchUpdateEnvConfigParams()
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
		ID:                 "adminPatchUpdateEnvConfig",
		Method:             "PATCH",
		PathPattern:        "/sessionhistory/v1/admin/config/env",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPatchUpdateEnvConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPatchUpdateEnvConfigOK:
		response := &AdminPatchUpdateEnvConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPatchUpdateEnvConfigUnauthorized:
		response := &AdminPatchUpdateEnvConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPatchUpdateEnvConfigForbidden:
		response := &AdminPatchUpdateEnvConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetLogConfigShort get log configuration
Get Log Configuration.
*/
func (a *Client) AdminGetLogConfigShort(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigResponse, error) {
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
		PathPattern:        "/sessionhistory/v1/admin/config/log",
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
		response := &AdminGetLogConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetLogConfigUnauthorized:
		response := &AdminGetLogConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetLogConfigForbidden:
		response := &AdminGetLogConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPatchUpdateLogConfigShort patch update log configuration
Update Log Configuration.
*/
func (a *Client) AdminPatchUpdateLogConfigShort(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigResponse, error) {
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
		PathPattern:        "/sessionhistory/v1/admin/config/log",
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
		response := &AdminPatchUpdateLogConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPatchUpdateLogConfigUnauthorized:
		response := &AdminPatchUpdateLogConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPatchUpdateLogConfigForbidden:
		response := &AdminPatchUpdateLogConfigResponse{}
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
