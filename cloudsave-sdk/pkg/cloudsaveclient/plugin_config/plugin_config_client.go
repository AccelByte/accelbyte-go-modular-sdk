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
	GetPluginConfigShort(params *GetPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPluginConfigOK, error)
	CreatePluginConfigShort(params *CreatePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePluginConfigCreated, error)
	DeletePluginConfigShort(params *DeletePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePluginConfigNoContent, error)
	UpdatePluginConfigShort(params *UpdatePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePluginConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetPluginConfigShort get plugin configuration
## Description

This endpoints will get grpc plugins configuration
*/
func (a *Client) GetPluginConfigShort(params *GetPluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPluginConfigOK, error) {
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
		return v, nil
	case *GetPluginConfigUnauthorized:
		return nil, v
	case *GetPluginConfigForbidden:
		return nil, v
	case *GetPluginConfigNotFound:
		return nil, v
	case *GetPluginConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePluginConfigShort create plugin configuration
## Description

This endpoints will create new grpc plugins configuration per namespace
*/
func (a *Client) CreatePluginConfigShort(params *CreatePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePluginConfigCreated, error) {
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
		return v, nil
	case *CreatePluginConfigBadRequest:
		return nil, v
	case *CreatePluginConfigUnauthorized:
		return nil, v
	case *CreatePluginConfigForbidden:
		return nil, v
	case *CreatePluginConfigConflict:
		return nil, v
	case *CreatePluginConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePluginConfigShort delete plugin configuration
## Description

This endpoints will delete grpc plugins configuration
*/
func (a *Client) DeletePluginConfigShort(params *DeletePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePluginConfigNoContent, error) {
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
		return v, nil
	case *DeletePluginConfigUnauthorized:
		return nil, v
	case *DeletePluginConfigForbidden:
		return nil, v
	case *DeletePluginConfigNotFound:
		return nil, v
	case *DeletePluginConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePluginConfigShort update plugin configuration
## Description

This endpoints will update grpc plugins configuration
*/
func (a *Client) UpdatePluginConfigShort(params *UpdatePluginConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePluginConfigOK, error) {
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
		return v, nil
	case *UpdatePluginConfigBadRequest:
		return nil, v
	case *UpdatePluginConfigUnauthorized:
		return nil, v
	case *UpdatePluginConfigForbidden:
		return nil, v
	case *UpdatePluginConfigNotFound:
		return nil, v
	case *UpdatePluginConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
