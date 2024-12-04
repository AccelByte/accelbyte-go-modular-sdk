// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package plugin_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new plugin config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for plugin config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetPluginConfigShort(params *GetPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPluginConfigResponse, error)
	CreatePluginConfigShort(params *CreatePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePluginConfigResponse, error)
	DeletePluginConfigShort(params *DeletePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePluginConfigResponse, error)
	UpdatePluginConfigShort(params *UpdatePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePluginConfigResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetPluginConfigShort get plugin configuration
## Description

This endpoints will get grpc plugins configuration
*/
func (a *Client) GetPluginConfigShort(params *GetPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPluginConfigParams()
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
		ID:                 "getPluginConfig",
		Method:             "GET",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/plugins",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPluginConfigOK:
		response := &GetPluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPluginConfigUnauthorized:
		response := &GetPluginConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPluginConfigForbidden:
		response := &GetPluginConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPluginConfigNotFound:
		response := &GetPluginConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPluginConfigInternalServerError:
		response := &GetPluginConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePluginConfigShort create plugin configuration
## Description

This endpoints will create new grpc plugins configuration per namespace
*/
func (a *Client) CreatePluginConfigShort(params *CreatePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePluginConfigParams()
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
		ID:                 "createPluginConfig",
		Method:             "POST",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/plugins",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePluginConfigCreated:
		response := &CreatePluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePluginConfigBadRequest:
		response := &CreatePluginConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePluginConfigUnauthorized:
		response := &CreatePluginConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePluginConfigForbidden:
		response := &CreatePluginConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePluginConfigConflict:
		response := &CreatePluginConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePluginConfigInternalServerError:
		response := &CreatePluginConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePluginConfigShort delete plugin configuration
## Description

This endpoints will delete grpc plugins configuration
*/
func (a *Client) DeletePluginConfigShort(params *DeletePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePluginConfigParams()
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
		ID:                 "deletePluginConfig",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/plugins",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePluginConfigNoContent:
		response := &DeletePluginConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeletePluginConfigUnauthorized:
		response := &DeletePluginConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePluginConfigForbidden:
		response := &DeletePluginConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePluginConfigNotFound:
		response := &DeletePluginConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeletePluginConfigInternalServerError:
		response := &DeletePluginConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePluginConfigShort update plugin configuration
## Description

This endpoints will update grpc plugins configuration
*/
func (a *Client) UpdatePluginConfigShort(params *UpdatePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePluginConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePluginConfigParams()
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
		ID:                 "updatePluginConfig",
		Method:             "PATCH",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/plugins",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePluginConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePluginConfigOK:
		response := &UpdatePluginConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePluginConfigBadRequest:
		response := &UpdatePluginConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePluginConfigUnauthorized:
		response := &UpdatePluginConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePluginConfigForbidden:
		response := &UpdatePluginConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePluginConfigNotFound:
		response := &UpdatePluginConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePluginConfigInternalServerError:
		response := &UpdatePluginConfigResponse{}
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
