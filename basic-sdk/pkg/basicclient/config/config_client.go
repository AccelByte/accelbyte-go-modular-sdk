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
	CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigResponse, error)
	GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigResponse, error)
	DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigResponse, error)
	UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigResponse, error)
	GetPublisherConfigShort(params *GetPublisherConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherConfigResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateConfigShort create a config
Create a config.
Other detail info:

  * Returns : created config
*/
func (a *Client) CreateConfigShort(params *CreateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateConfigResponse, error) {
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
		response := &CreateConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateConfigBadRequest:
		response := &CreateConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateConfigUnauthorized:
		response := &CreateConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateConfigForbidden:
		response := &CreateConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateConfigConflict:
		response := &CreateConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) GetConfigShort(params *GetConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetConfigResponse, error) {
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
		response := &GetConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetConfigBadRequest:
		response := &GetConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetConfigUnauthorized:
		response := &GetConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetConfigForbidden:
		response := &GetConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetConfigNotFound:
		response := &GetConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) DeleteConfigShort(params *DeleteConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteConfigResponse, error) {
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
		response := &DeleteConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteConfigBadRequest:
		response := &DeleteConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteConfigUnauthorized:
		response := &DeleteConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteConfigForbidden:
		response := &DeleteConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteConfigNotFound:
		response := &DeleteConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) UpdateConfigShort(params *UpdateConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateConfigResponse, error) {
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
		response := &UpdateConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateConfigBadRequest:
		response := &UpdateConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateConfigUnauthorized:
		response := &UpdateConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateConfigForbidden:
		response := &UpdateConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateConfigNotFound:
		response := &UpdateConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) GetPublisherConfigShort(params *GetPublisherConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPublisherConfigResponse, error) {
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
		response := &GetPublisherConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPublisherConfigBadRequest:
		response := &GetPublisherConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPublisherConfigUnauthorized:
		response := &GetPublisherConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPublisherConfigForbidden:
		response := &GetPublisherConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPublisherConfigNotFound:
		response := &GetPublisherConfigResponse{}
		response.Error404 = v.Payload

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
