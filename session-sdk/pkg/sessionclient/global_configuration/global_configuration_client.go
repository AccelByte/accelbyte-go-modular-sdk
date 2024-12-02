// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package global_configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new global configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for global configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListGlobalConfigurationShort(params *AdminListGlobalConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalConfigurationResponse, error)
	AdminUpdateGlobalConfigurationShort(params *AdminUpdateGlobalConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGlobalConfigurationResponse, error)
	AdminDeleteGlobalConfigurationShort(params *AdminDeleteGlobalConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGlobalConfigurationResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListGlobalConfigurationShort record of global configuration data.
Record of global configuration data.
*/
func (a *Client) AdminListGlobalConfigurationShort(params *AdminListGlobalConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListGlobalConfigurationParams()
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
		ID:                 "adminListGlobalConfiguration",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListGlobalConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListGlobalConfigurationOK:
		response := &AdminListGlobalConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListGlobalConfigurationUnauthorized:
		response := &AdminListGlobalConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminListGlobalConfigurationForbidden:
		response := &AdminListGlobalConfigurationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateGlobalConfigurationShort upsert global configuration data.
Upsert global configuration data.
*/
func (a *Client) AdminUpdateGlobalConfigurationShort(params *AdminUpdateGlobalConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGlobalConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGlobalConfigurationParams()
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
		ID:                 "adminUpdateGlobalConfiguration",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGlobalConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGlobalConfigurationOK:
		response := &AdminUpdateGlobalConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateGlobalConfigurationUnauthorized:
		response := &AdminUpdateGlobalConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateGlobalConfigurationForbidden:
		response := &AdminUpdateGlobalConfigurationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteGlobalConfigurationShort delete of global configuration data.
Delete of global configuration data.
*/
func (a *Client) AdminDeleteGlobalConfigurationShort(params *AdminDeleteGlobalConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGlobalConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGlobalConfigurationParams()
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
		ID:                 "adminDeleteGlobalConfiguration",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/global-configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGlobalConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGlobalConfigurationNoContent:
		response := &AdminDeleteGlobalConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteGlobalConfigurationUnauthorized:
		response := &AdminDeleteGlobalConfigurationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteGlobalConfigurationForbidden:
		response := &AdminDeleteGlobalConfigurationResponse{}
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
