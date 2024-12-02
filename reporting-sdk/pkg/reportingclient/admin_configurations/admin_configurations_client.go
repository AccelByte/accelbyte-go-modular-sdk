// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_configurations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin configurations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin configurations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetShort(params *GetParams, authInfo runtime.ClientAuthInfoWriter) (*GetResponse, error)
	UpsertShort(params *UpsertParams, authInfo runtime.ClientAuthInfoWriter) (*UpsertResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetShort get configuration
TimeInterval is in nanoseconds.
When there's no configuration set, the response is the default value (configurable through envar).
*/
func (a *Client) GetShort(params *GetParams, authInfo runtime.ClientAuthInfoWriter) (*GetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetParams()
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
		ID:                 "Get",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOK:
		response := &GetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetInternalServerError:
		response := &GetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpsertShort create/update configuration
The behaviour of this endpoint is upsert based on the namespace.
So, you can use this for both creating & updating the configuration.
TimeInterval is in nanoseconds.
*/
func (a *Client) UpsertShort(params *UpsertParams, authInfo runtime.ClientAuthInfoWriter) (*UpsertResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpsertParams()
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
		ID:                 "Upsert",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/configurations",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpsertReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpsertOK:
		response := &UpsertResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpsertBadRequest:
		response := &UpsertResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpsertInternalServerError:
		response := &UpsertResponse{}
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
