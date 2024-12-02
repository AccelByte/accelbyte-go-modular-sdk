// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clawback

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new clawback API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for clawback API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryIAPClawbackHistoryShort(params *QueryIAPClawbackHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryIAPClawbackHistoryResponse, error)
	MockPlayStationStreamEventShort(params *MockPlayStationStreamEventParams, authInfo runtime.ClientAuthInfoWriter) (*MockPlayStationStreamEventResponse, error)
	MockXblClawbackEventShort(params *MockXblClawbackEventParams, authInfo runtime.ClientAuthInfoWriter) (*MockXblClawbackEventResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryIAPClawbackHistoryShort query clawback history
Query clawback history.
Other detail info:

  * Returns : paginated clawback history
*/
func (a *Client) QueryIAPClawbackHistoryShort(params *QueryIAPClawbackHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryIAPClawbackHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryIAPClawbackHistoryParams()
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
		ID:                 "queryIAPClawbackHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/clawback/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryIAPClawbackHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryIAPClawbackHistoryOK:
		response := &QueryIAPClawbackHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MockPlayStationStreamEventShort mock sync playstation clawback event.
Mock Sync PlayStation Clawback event..
*/
func (a *Client) MockPlayStationStreamEventShort(params *MockPlayStationStreamEventParams, authInfo runtime.ClientAuthInfoWriter) (*MockPlayStationStreamEventResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMockPlayStationStreamEventParams()
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
		ID:                 "mockPlayStationStreamEvent",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/clawback/playstation/mock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MockPlayStationStreamEventReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MockPlayStationStreamEventOK:
		response := &MockPlayStationStreamEventResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MockXblClawbackEventShort mock sync xbox clawback event.
Mock Sync XBox Clawback event.
*/
func (a *Client) MockXblClawbackEventShort(params *MockXblClawbackEventParams, authInfo runtime.ClientAuthInfoWriter) (*MockXblClawbackEventResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMockXblClawbackEventParams()
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
		ID:                 "mockXblClawbackEvent",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/clawback/xbl/mock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MockXblClawbackEventReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MockXblClawbackEventOK:
		response := &MockXblClawbackEventResponse{}
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
