// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package presence

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new presence API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for presence API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	UsersPresenceHandlerV1Short(params *UsersPresenceHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV1Response, error)
	UsersPresenceHandlerV2Short(params *UsersPresenceHandlerV2Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
UsersPresenceHandlerV1Short query users presence
Query users presence with given namespace and userIds.
*/
func (a *Client) UsersPresenceHandlerV1Short(params *UsersPresenceHandlerV1Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUsersPresenceHandlerV1Params()
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
		ID:                 "UsersPresenceHandlerV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/presence/namespaces/{namespace}/users/presence",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UsersPresenceHandlerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UsersPresenceHandlerV1OK:
		response := &UsersPresenceHandlerV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UsersPresenceHandlerV1BadRequest:
		response := &UsersPresenceHandlerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UsersPresenceHandlerV1Unauthorized:
		response := &UsersPresenceHandlerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UsersPresenceHandlerV1InternalServerError:
		response := &UsersPresenceHandlerV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UsersPresenceHandlerV2Short query users presence
Query users presence with given namespace and userIds.
*/
func (a *Client) UsersPresenceHandlerV2Short(params *UsersPresenceHandlerV2Params, authInfo runtime.ClientAuthInfoWriter) (*UsersPresenceHandlerV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUsersPresenceHandlerV2Params()
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
		ID:                 "UsersPresenceHandlerV2",
		Method:             "POST",
		PathPattern:        "/lobby/v1/public/presence/namespaces/{namespace}/users/presence",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UsersPresenceHandlerV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UsersPresenceHandlerV2OK:
		response := &UsersPresenceHandlerV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UsersPresenceHandlerV2BadRequest:
		response := &UsersPresenceHandlerV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UsersPresenceHandlerV2Unauthorized:
		response := &UsersPresenceHandlerV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UsersPresenceHandlerV2InternalServerError:
		response := &UsersPresenceHandlerV2Response{}
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
