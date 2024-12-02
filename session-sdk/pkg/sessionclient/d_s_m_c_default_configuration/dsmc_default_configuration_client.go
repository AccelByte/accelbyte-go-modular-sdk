// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package d_s_m_c_default_configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new d s m c default configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for d s m c default configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetDSMCConfigurationDefaultShort(params *AdminGetDSMCConfigurationDefaultParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDSMCConfigurationDefaultResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetDSMCConfigurationDefaultShort get dsmc default configuration.
Get dsmc default configuration.
*/
func (a *Client) AdminGetDSMCConfigurationDefaultShort(params *AdminGetDSMCConfigurationDefaultParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetDSMCConfigurationDefaultResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetDSMCConfigurationDefaultParams()
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
		ID:                 "adminGetDSMCConfigurationDefault",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/dsconfigs/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetDSMCConfigurationDefaultReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetDSMCConfigurationDefaultOK:
		response := &AdminGetDSMCConfigurationDefaultResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetDSMCConfigurationDefaultBadRequest:
		response := &AdminGetDSMCConfigurationDefaultResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDSMCConfigurationDefaultUnauthorized:
		response := &AdminGetDSMCConfigurationDefaultResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDSMCConfigurationDefaultForbidden:
		response := &AdminGetDSMCConfigurationDefaultResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDSMCConfigurationDefaultNotFound:
		response := &AdminGetDSMCConfigurationDefaultResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetDSMCConfigurationDefaultInternalServerError:
		response := &AdminGetDSMCConfigurationDefaultResponse{}
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
