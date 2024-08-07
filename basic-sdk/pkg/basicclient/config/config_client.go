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
	CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, error)
	GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, error)
	DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, error)
	UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, error)
	GetPublisherConfigShort(params *GetPublisherConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherConfigOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateConfigShort create a config
Create a config.
Other detail info:

  * Returns : created config
*/
func (a *Client) CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateConfigParams()
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
		ID:                 "createConfig",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateConfigCreated:
		return v, nil
	case *CreateConfigBadRequest:
		return nil, v
	case *CreateConfigUnauthorized:
		return nil, v
	case *CreateConfigForbidden:
		return nil, v
	case *CreateConfigConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetConfigShort get a config
Get a config.
Other detail info:

  * Returns : config
*/
func (a *Client) GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetConfigParams()
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
		ID:                 "getConfig",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetConfigOK:
		return v, nil
	case *GetConfigBadRequest:
		return nil, v
	case *GetConfigUnauthorized:
		return nil, v
	case *GetConfigForbidden:
		return nil, v
	case *GetConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteConfigShort delete a config
Delete a config.
Other detail info:

  * Returns : created config
*/
func (a *Client) DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteConfigParams()
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
		ID:                 "deleteConfig",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteConfigNoContent:
		return v, nil
	case *DeleteConfigBadRequest:
		return nil, v
	case *DeleteConfigUnauthorized:
		return nil, v
	case *DeleteConfigForbidden:
		return nil, v
	case *DeleteConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateConfigShort update a config
Update a config.
Other detail info:

  * Returns : created config
*/
func (a *Client) UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateConfigParams()
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
		ID:                 "updateConfig",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateConfigOK:
		return v, nil
	case *UpdateConfigBadRequest:
		return nil, v
	case *UpdateConfigUnauthorized:
		return nil, v
	case *UpdateConfigForbidden:
		return nil, v
	case *UpdateConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPublisherConfigShort get a publisher config
Get a publisher config.
It will return a publisher namespace config of the given namespace and key.
Other detail info:

  * Returns : config
*/
func (a *Client) GetPublisherConfigShort(params *GetPublisherConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherConfigOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPublisherConfigParams()
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
		ID:                 "getPublisherConfig",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/publisher/configs/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPublisherConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPublisherConfigOK:
		return v, nil
	case *GetPublisherConfigBadRequest:
		return nil, v
	case *GetPublisherConfigUnauthorized:
		return nil, v
	case *GetPublisherConfigForbidden:
		return nil, v
	case *GetPublisherConfigNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
