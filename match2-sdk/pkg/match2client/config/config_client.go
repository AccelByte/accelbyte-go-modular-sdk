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
	AdminGetLogConfigShort(params *AdminGetLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLogConfigResponse, error)
	AdminPatchUpdateLogConfigShort(params *AdminPatchUpdateLogConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchUpdateLogConfigResponse, error)
	AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1Response, error)
	AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1Response, error)
	AdminPatchConfigV1Short(params *AdminPatchConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchConfigV1Response, error)

	SetTransport(transport runtime.ClientTransport)
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
		response := &AdminGetLogConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

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
		response := &AdminPatchUpdateLogConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllConfigV1Short admin get all namespaces config
Get matchmaking config of all namespaces. Will only return namespace configs than have been updated.
*/
func (a *Client) AdminGetAllConfigV1Short(params *AdminGetAllConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllConfigV1Response, error) {
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
		response := &AdminGetAllConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAllConfigV1Unauthorized:
		response := &AdminGetAllConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllConfigV1Forbidden:
		response := &AdminGetAllConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllConfigV1InternalServerError:
		response := &AdminGetAllConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetConfigV1Short admin get namespace config
Get matchmaking config of a namespaces.
*/
func (a *Client) AdminGetConfigV1Short(params *AdminGetConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigV1Response, error) {
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
		response := &AdminGetConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetConfigV1Unauthorized:
		response := &AdminGetConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigV1Forbidden:
		response := &AdminGetConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigV1InternalServerError:
		response := &AdminGetConfigV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPatchConfigV1Short admin patch update namespace config
Patch update matchmaking config of a namespaces. Partially update matchmaking config, will only update value that defined on the request.
*/
func (a *Client) AdminPatchConfigV1Short(params *AdminPatchConfigV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminPatchConfigV1Response, error) {
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
		response := &AdminPatchConfigV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminPatchConfigV1Unauthorized:
		response := &AdminPatchConfigV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPatchConfigV1Forbidden:
		response := &AdminPatchConfigV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPatchConfigV1InternalServerError:
		response := &AdminPatchConfigV1Response{}
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
