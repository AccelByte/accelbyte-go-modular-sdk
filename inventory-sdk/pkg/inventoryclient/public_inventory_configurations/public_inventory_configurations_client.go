// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_inventory_configurations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public inventory configurations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public inventory configurations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicListInventoryConfigurationsShort(params *PublicListInventoryConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListInventoryConfigurationsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicListInventoryConfigurationsShort to list inventory configurations

Listing all inventory configurations in a namespace.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListInventoryConfigurationsShort(params *PublicListInventoryConfigurationsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListInventoryConfigurationsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListInventoryConfigurationsParams()
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
		ID:                 "PublicListInventoryConfigurations",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/inventoryConfigurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListInventoryConfigurationsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListInventoryConfigurationsOK:
		response := &PublicListInventoryConfigurationsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListInventoryConfigurationsBadRequest:
		response := &PublicListInventoryConfigurationsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListInventoryConfigurationsInternalServerError:
		response := &PublicListInventoryConfigurationsResponse{}
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
