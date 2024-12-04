// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetConfigsShort(params *AdminGetConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigsResponse, error)
	AdminUpdateConfigShort(params *AdminUpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetConfigsShort get configs
Get config paginated
*/
func (a *Client) AdminGetConfigsShort(params *AdminGetConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigsParams()
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
		ID:                 "AdminGetConfigs",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigsOK:
		response := &AdminGetConfigsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetConfigsBadRequest:
		response := &AdminGetConfigsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigsUnauthorized:
		response := &AdminGetConfigsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigsForbidden:
		response := &AdminGetConfigsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigsInternalServerError:
		response := &AdminGetConfigsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateConfigShort update config
This endpoint will create a new config if the *key* doesn't exist.

Allowed key value:
- *contentReview*: *enabled*,*disabled*
*/
func (a *Client) AdminUpdateConfigShort(params *AdminUpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateConfigParams()
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
		ID:                 "AdminUpdateConfig",
		Method:             "PATCH",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/configs/{key}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateConfigCreated:
		response := &AdminUpdateConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateConfigBadRequest:
		response := &AdminUpdateConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigUnauthorized:
		response := &AdminUpdateConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigForbidden:
		response := &AdminUpdateConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateConfigInternalServerError:
		response := &AdminUpdateConfigResponse{}
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
