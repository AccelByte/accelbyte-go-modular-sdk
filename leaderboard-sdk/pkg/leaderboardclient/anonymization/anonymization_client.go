// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new anonymization API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for anonymization API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminAnonymizeUserLeaderboardAdminV1Short(params *AdminAnonymizeUserLeaderboardAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAnonymizeUserLeaderboardAdminV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminAnonymizeUserLeaderboardAdminV1Short anonymize user's leaderboard


This API will delete specified user leaderboard
*/
func (a *Client) AdminAnonymizeUserLeaderboardAdminV1Short(params *AdminAnonymizeUserLeaderboardAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAnonymizeUserLeaderboardAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAnonymizeUserLeaderboardAdminV1Params()
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
		ID:                 "adminAnonymizeUserLeaderboardAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAnonymizeUserLeaderboardAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAnonymizeUserLeaderboardAdminV1NoContent:
		response := &AdminAnonymizeUserLeaderboardAdminV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminAnonymizeUserLeaderboardAdminV1Unauthorized:
		response := &AdminAnonymizeUserLeaderboardAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAnonymizeUserLeaderboardAdminV1Forbidden:
		response := &AdminAnonymizeUserLeaderboardAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAnonymizeUserLeaderboardAdminV1InternalServerError:
		response := &AdminAnonymizeUserLeaderboardAdminV1Response{}
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
