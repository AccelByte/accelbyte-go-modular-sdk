// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_inventory_configurations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin inventory configurations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin inventory configurations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListInventoryConfigurationsShort(params *AdminListInventoryConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoryConfigurationsResponse, error)
	AdminCreateInventoryConfigurationShort(params *AdminCreateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryConfigurationResponse, error)
	AdminGetInventoryConfigurationShort(params *AdminGetInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryConfigurationResponse, error)
	AdminUpdateInventoryConfigurationShort(params *AdminUpdateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryConfigurationResponse, error)
	AdminDeleteInventoryConfigurationShort(params *AdminDeleteInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInventoryConfigurationResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListInventoryConfigurationsShort to list inventory configurations

Listing all inventory configurations in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]
*/
func (a *Client) AdminListInventoryConfigurationsShort(params *AdminListInventoryConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoryConfigurationsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListInventoryConfigurationsParams()
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
		ID:                 "AdminListInventoryConfigurations",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListInventoryConfigurationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListInventoryConfigurationsOK:
		response := &AdminListInventoryConfigurationsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListInventoryConfigurationsBadRequest:
		response := &AdminListInventoryConfigurationsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminListInventoryConfigurationsInternalServerError:
		response := &AdminListInventoryConfigurationsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateInventoryConfigurationShort to create inventory configuration

Creating inventory configuration.
There cannot be one inventory configuration duplicate code per namespace.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [CREATE]
*/
func (a *Client) AdminCreateInventoryConfigurationShort(params *AdminCreateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateInventoryConfigurationParams()
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
		ID:                 "AdminCreateInventoryConfiguration",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateInventoryConfigurationCreated:
		response := &AdminCreateInventoryConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateInventoryConfigurationBadRequest:
		response := &AdminCreateInventoryConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateInventoryConfigurationConflict:
		response := &AdminCreateInventoryConfigurationResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminCreateInventoryConfigurationInternalServerError:
		response := &AdminCreateInventoryConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInventoryConfigurationShort to get inventory configuration

Getting an inventory configuration info.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [READ]
*/
func (a *Client) AdminGetInventoryConfigurationShort(params *AdminGetInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInventoryConfigurationParams()
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
		ID:                 "AdminGetInventoryConfiguration",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInventoryConfigurationOK:
		response := &AdminGetInventoryConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetInventoryConfigurationBadRequest:
		response := &AdminGetInventoryConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetInventoryConfigurationNotFound:
		response := &AdminGetInventoryConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetInventoryConfigurationInternalServerError:
		response := &AdminGetInventoryConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInventoryConfigurationShort to update inventory configuration

Updating inventory configuration.
There cannot be duplicate code per namespace.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [UPDATE]
*/
func (a *Client) AdminUpdateInventoryConfigurationShort(params *AdminUpdateInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInventoryConfigurationParams()
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
		ID:                 "AdminUpdateInventoryConfiguration",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInventoryConfigurationOK:
		response := &AdminUpdateInventoryConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateInventoryConfigurationBadRequest:
		response := &AdminUpdateInventoryConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateInventoryConfigurationNotFound:
		response := &AdminUpdateInventoryConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateInventoryConfigurationConflict:
		response := &AdminUpdateInventoryConfigurationResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdateInventoryConfigurationInternalServerError:
		response := &AdminUpdateInventoryConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteInventoryConfigurationShort to delete inventory configuration

Deleting an inventory configuration.
If an inventory already reference this type (i.e. STATUS is "TIED"), then the type cannot be deleted anymore.

ADMIN:NAMESPACE:{namespace}:INVENTORY:CONFIGURATION [DELETE]
*/
func (a *Client) AdminDeleteInventoryConfigurationShort(params *AdminDeleteInventoryConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteInventoryConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteInventoryConfigurationParams()
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
		ID:                 "AdminDeleteInventoryConfiguration",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteInventoryConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteInventoryConfigurationNoContent:
		response := &AdminDeleteInventoryConfigurationResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteInventoryConfigurationBadRequest:
		response := &AdminDeleteInventoryConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteInventoryConfigurationNotFound:
		response := &AdminDeleteInventoryConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteInventoryConfigurationInternalServerError:
		response := &AdminDeleteInventoryConfigurationResponse{}
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
