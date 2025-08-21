// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_statistic_cycle

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user statistic cycle API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user statistic cycle API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserStatCycleItemsShort(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsResponse, error)
	PublicListMyStatCycleItemsShort(params *PublicListMyStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatCycleItemsResponse, error)
	GetUserStatCycleItems1Short(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetUserStatCycleItemsShort list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
  - Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItemsShort(params *GetUserStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItemsParams()
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
		ID:                 "getUserStatCycleItems",
		Method:             "GET",
		PathPattern:        "/social/v1/admin/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItemsOK:
		response := &GetUserStatCycleItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserStatCycleItemsUnauthorized:
		response := &GetUserStatCycleItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatCycleItemsForbidden:
		response := &GetUserStatCycleItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatCycleItemsNotFound:
		response := &GetUserStatCycleItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatCycleItemsUnprocessableEntity:
		response := &GetUserStatCycleItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatCycleItemsInternalServerError:
		response := &GetUserStatCycleItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListMyStatCycleItemsShort list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
  - Returns : stat cycle items
*/
func (a *Client) PublicListMyStatCycleItemsShort(params *PublicListMyStatCycleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListMyStatCycleItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListMyStatCycleItemsParams()
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
		ID:                 "publicListMyStatCycleItems",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/me/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListMyStatCycleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListMyStatCycleItemsOK:
		response := &PublicListMyStatCycleItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListMyStatCycleItemsUnauthorized:
		response := &PublicListMyStatCycleItemsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListMyStatCycleItemsForbidden:
		response := &PublicListMyStatCycleItemsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListMyStatCycleItemsNotFound:
		response := &PublicListMyStatCycleItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListMyStatCycleItemsUnprocessableEntity:
		response := &PublicListMyStatCycleItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListMyStatCycleItemsInternalServerError:
		response := &PublicListMyStatCycleItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserStatCycleItems1Short list user's statcycleitems by statcycle
List user's statCycleItems by statCycle.
Other detail info:
  - Returns : stat cycle items
*/
func (a *Client) GetUserStatCycleItems1Short(params *GetUserStatCycleItems1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserStatCycleItems1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserStatCycleItems1Params()
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
		ID:                 "getUserStatCycleItems_1",
		Method:             "GET",
		PathPattern:        "/social/v1/public/namespaces/{namespace}/users/{userId}/statCycles/{cycleId}/statCycleitems",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserStatCycleItems1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserStatCycleItems1OK:
		response := &GetUserStatCycleItems1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserStatCycleItems1Unauthorized:
		response := &GetUserStatCycleItems1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatCycleItems1Forbidden:
		response := &GetUserStatCycleItems1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatCycleItems1NotFound:
		response := &GetUserStatCycleItems1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatCycleItems1UnprocessableEntity:
		response := &GetUserStatCycleItems1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserStatCycleItems1InternalServerError:
		response := &GetUserStatCycleItems1Response{}
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
