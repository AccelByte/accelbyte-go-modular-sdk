// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new slot config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for slot config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetNamespaceSlotConfigShort(params *GetNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceSlotConfigResponse, error)
	UpdateNamespaceSlotConfigShort(params *UpdateNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceSlotConfigResponse, error)
	DeleteNamespaceSlotConfigShort(params *DeleteNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceSlotConfigResponse, error)
	GetUserSlotConfigShort(params *GetUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSlotConfigResponse, error)
	UpdateUserSlotConfigShort(params *UpdateUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserSlotConfigResponse, error)
	DeleteUserSlotConfigShort(params *DeleteUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserSlotConfigResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetNamespaceSlotConfigShort returns a namespace slot configuration
## The endpoint is going to be deprecated


Get slot configuration for a given namespace. In case slot configuration is not set, the default will be returned.
Other detail info:

  *  Returns : namespace slot config info
*/
func (a *Client) GetNamespaceSlotConfigShort(params *GetNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceSlotConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespaceSlotConfigParams()
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
		ID:                 "getNamespaceSlotConfig",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespaceSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespaceSlotConfigOK:
		response := &GetNamespaceSlotConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateNamespaceSlotConfigShort update a namespace slot configuration


## The endpoint is going to be deprecated


Update a slot namespace configuration.
Other detail info:

  *  Returns : updated namespace slot config
*/
func (a *Client) UpdateNamespaceSlotConfigShort(params *UpdateNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceSlotConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNamespaceSlotConfigParams()
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
		ID:                 "updateNamespaceSlotConfig",
		Method:             "PUT",
		PathPattern:        "/social/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNamespaceSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNamespaceSlotConfigOK:
		response := &UpdateNamespaceSlotConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNamespaceSlotConfigShort deletes a namespace slot configuration


## The endpoint is going to be deprecated


Deletes a namespace slot configuration, the configuration will be default after delete.
Other detail info:
*/
func (a *Client) DeleteNamespaceSlotConfigShort(params *DeleteNamespaceSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceSlotConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNamespaceSlotConfigParams()
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
		ID:                 "deleteNamespaceSlotConfig",
		Method:             "DELETE",
		PathPattern:        "/social/admin/namespaces/{namespace}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNamespaceSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNamespaceSlotConfigNoContent:
		response := &DeleteNamespaceSlotConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserSlotConfigShort returns a user slot configuration


## The endpoint is going to be deprecated


Get a user slot configuration in given namespace. In case the user slot configuration is not set, the namespace configuration will be returned.
Other detail info:

  * Returns: slot config info
*/
func (a *Client) GetUserSlotConfigShort(params *GetUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserSlotConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserSlotConfigParams()
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
		ID:                 "getUserSlotConfig",
		Method:             "GET",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserSlotConfigOK:
		response := &GetUserSlotConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserSlotConfigShort update a user slot configuration


## The endpoint is going to be deprecated


Update a user slot configuration in given namespace.
Other detail info:
    *  Returns : updated slot config
*/
func (a *Client) UpdateUserSlotConfigShort(params *UpdateUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserSlotConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserSlotConfigParams()
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
		ID:                 "updateUserSlotConfig",
		Method:             "PUT",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserSlotConfigOK:
		response := &UpdateUserSlotConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserSlotConfigShort deletes a user slot configuration


## The endpoint is going to be deprecated


Deletes a user slot configuration in given namespace, the namespace slot configuration will be returned after delete.
Other detail info:
*/
func (a *Client) DeleteUserSlotConfigShort(params *DeleteUserSlotConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserSlotConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserSlotConfigParams()
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
		ID:                 "deleteUserSlotConfig",
		Method:             "DELETE",
		PathPattern:        "/social/admin/namespaces/{namespace}/users/{userId}/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserSlotConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserSlotConfigNoContent:
		response := &DeleteUserSlotConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
