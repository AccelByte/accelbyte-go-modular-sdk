// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package social_matchmaking

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new social matchmaking API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for social matchmaking API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	UpdatePlayTimeWeightShort(params *UpdatePlayTimeWeightParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlayTimeWeightResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
UpdatePlayTimeWeightShort update player -- playtime connection weight
Update a connection weight between player and playtime.

This endpoint is intended to be called by admin for debugging purpose on social matchmaking rule.
*/
func (a *Client) UpdatePlayTimeWeightShort(params *UpdatePlayTimeWeightParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlayTimeWeightResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlayTimeWeightParams()
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
		ID:                 "UpdatePlayTimeWeight",
		Method:             "PATCH",
		PathPattern:        "/matchmaking/social/playtime/namespaces/{namespace}/weight",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlayTimeWeightReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlayTimeWeightOK:
		response := &UpdatePlayTimeWeightResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePlayTimeWeightBadRequest:
		response := &UpdatePlayTimeWeightResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePlayTimeWeightUnauthorized:
		response := &UpdatePlayTimeWeightResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePlayTimeWeightForbidden:
		response := &UpdatePlayTimeWeightResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePlayTimeWeightNotFound:
		response := &UpdatePlayTimeWeightResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePlayTimeWeightInternalServerError:
		response := &UpdatePlayTimeWeightResponse{}
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
