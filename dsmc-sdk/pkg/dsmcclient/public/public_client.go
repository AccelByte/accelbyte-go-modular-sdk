// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetDefaultProviderShort(params *GetDefaultProviderParams, authInfo runtime.ClientAuthInfoWriter) (*GetDefaultProviderResponse, error)
	ListProvidersShort(params *ListProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*ListProvidersResponse, error)
	ListProvidersByRegionShort(params *ListProvidersByRegionParams, authInfo runtime.ClientAuthInfoWriter) (*ListProvidersByRegionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetDefaultProviderShort get default provider
This endpoints returns the default provider.
*/
func (a *Client) GetDefaultProviderShort(params *GetDefaultProviderParams, authInfo runtime.ClientAuthInfoWriter) (*GetDefaultProviderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDefaultProviderParams()
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
		ID:                 "GetDefaultProvider",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/public/provider/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDefaultProviderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDefaultProviderOK:
		response := &GetDefaultProviderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListProvidersShort list all supported providers
This endpoints returns list of supported providers. Armada is the default provider.
*/
func (a *Client) ListProvidersShort(params *ListProvidersParams, authInfo runtime.ClientAuthInfoWriter) (*ListProvidersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListProvidersParams()
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
		ID:                 "ListProviders",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/public/providers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListProvidersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListProvidersOK:
		response := &ListProvidersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListProvidersByRegionShort list providers by region
This endpoint returns the providers by region.
*/
func (a *Client) ListProvidersByRegionShort(params *ListProvidersByRegionParams, authInfo runtime.ClientAuthInfoWriter) (*ListProvidersByRegionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListProvidersByRegionParams()
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
		ID:                 "ListProvidersByRegion",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/public/providers/regions/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListProvidersByRegionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListProvidersByRegionOK:
		response := &ListProvidersByRegionResponse{}
		response.Data = v.Payload

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
