// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_integration_configurations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin integration configurations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin integration configurations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListIntegrationConfigurationsShort(params *AdminListIntegrationConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListIntegrationConfigurationsResponse, error)
	AdminCreateIntegrationConfigurationShort(params *AdminCreateIntegrationConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateIntegrationConfigurationResponse, error)
	AdminUpdateIntegrationConfigurationShort(params *AdminUpdateIntegrationConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateIntegrationConfigurationResponse, error)
	AdminUpdateStatusIntegrationConfigurationShort(params *AdminUpdateStatusIntegrationConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateStatusIntegrationConfigurationResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListIntegrationConfigurationsShort to list integration configurations

Listing all integration configurations in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [READ]
*/
func (a *Client) AdminListIntegrationConfigurationsShort(params *AdminListIntegrationConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListIntegrationConfigurationsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListIntegrationConfigurationsParams()
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
		ID:                 "AdminListIntegrationConfigurations",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/integrationConfigurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListIntegrationConfigurationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListIntegrationConfigurationsOK:
		response := &AdminListIntegrationConfigurationsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListIntegrationConfigurationsBadRequest:
		response := &AdminListIntegrationConfigurationsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListIntegrationConfigurationsInternalServerError:
		response := &AdminListIntegrationConfigurationsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateIntegrationConfigurationShort to create integration configuration

Creating integration configuration.
There cannot be one duplicate serviceName per namespace.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [CREATE]
*/
func (a *Client) AdminCreateIntegrationConfigurationShort(params *AdminCreateIntegrationConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateIntegrationConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateIntegrationConfigurationParams()
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
		ID:                 "AdminCreateIntegrationConfiguration",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/integrationConfigurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateIntegrationConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateIntegrationConfigurationCreated:
		response := &AdminCreateIntegrationConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateIntegrationConfigurationBadRequest:
		response := &AdminCreateIntegrationConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateIntegrationConfigurationConflict:
		response := &AdminCreateIntegrationConfigurationResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateIntegrationConfigurationInternalServerError:
		response := &AdminCreateIntegrationConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateIntegrationConfigurationShort to update integration configuration

to update integration configuration
There cannot be duplicate serviceName per namespace.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [UPDATE]
*/
func (a *Client) AdminUpdateIntegrationConfigurationShort(params *AdminUpdateIntegrationConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateIntegrationConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateIntegrationConfigurationParams()
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
		ID:                 "AdminUpdateIntegrationConfiguration",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateIntegrationConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateIntegrationConfigurationOK:
		response := &AdminUpdateIntegrationConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateIntegrationConfigurationBadRequest:
		response := &AdminUpdateIntegrationConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateIntegrationConfigurationNotFound:
		response := &AdminUpdateIntegrationConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateIntegrationConfigurationConflict:
		response := &AdminUpdateIntegrationConfigurationResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateIntegrationConfigurationInternalServerError:
		response := &AdminUpdateIntegrationConfigurationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateStatusIntegrationConfigurationShort to update status integration configuration to be active / not active

to update status integration configuration to be Active / Not Active.
There cannot be duplicate serviceName per namespace.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:INTEGRATIONCONFIGURATION [UPDATE]
*/
func (a *Client) AdminUpdateStatusIntegrationConfigurationShort(params *AdminUpdateStatusIntegrationConfigurationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateStatusIntegrationConfigurationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateStatusIntegrationConfigurationParams()
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
		ID:                 "AdminUpdateStatusIntegrationConfiguration",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateStatusIntegrationConfigurationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateStatusIntegrationConfigurationOK:
		response := &AdminUpdateStatusIntegrationConfigurationResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateStatusIntegrationConfigurationBadRequest:
		response := &AdminUpdateStatusIntegrationConfigurationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateStatusIntegrationConfigurationNotFound:
		response := &AdminUpdateStatusIntegrationConfigurationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateStatusIntegrationConfigurationConflict:
		response := &AdminUpdateStatusIntegrationConfigurationResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateStatusIntegrationConfigurationInternalServerError:
		response := &AdminUpdateStatusIntegrationConfigurationResponse{}
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
