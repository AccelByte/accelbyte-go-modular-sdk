// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package x_ray_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new x ray config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for x ray config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetXRayConfigShort(params *AdminGetXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetXRayConfigResponse, error)
	AdminUpdateXRayConfigShort(params *AdminUpdateXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateXRayConfigResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetXRayConfigShort admin get xray config
Get XRay config
*/
func (a *Client) AdminGetXRayConfigShort(params *AdminGetXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetXRayConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetXRayConfigParams()
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
		ID:                 "adminGetXRayConfig",
		Method:             "GET",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/xray/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetXRayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetXRayConfigOK:
		response := &AdminGetXRayConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetXRayConfigUnauthorized:
		response := &AdminGetXRayConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetXRayConfigForbidden:
		response := &AdminGetXRayConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetXRayConfigInternalServerError:
		response := &AdminGetXRayConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateXRayConfigShort admin update xray config
Admin update XRay config
*/
func (a *Client) AdminUpdateXRayConfigShort(params *AdminUpdateXRayConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateXRayConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateXRayConfigParams()
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
		ID:                 "adminUpdateXRayConfig",
		Method:             "POST",
		PathPattern:        "/match2/v1/admin/namespaces/{namespace}/xray/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateXRayConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateXRayConfigNoContent:
		response := &AdminUpdateXRayConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateXRayConfigBadRequest:
		response := &AdminUpdateXRayConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateXRayConfigUnauthorized:
		response := &AdminUpdateXRayConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateXRayConfigForbidden:
		response := &AdminUpdateXRayConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateXRayConfigInternalServerError:
		response := &AdminUpdateXRayConfigResponse{}
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
