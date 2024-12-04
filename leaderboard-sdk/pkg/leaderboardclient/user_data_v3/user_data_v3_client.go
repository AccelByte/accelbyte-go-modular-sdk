// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_data_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user data v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user data v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserLeaderboardRankingsAdminV3Short(params *GetUserLeaderboardRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserLeaderboardRankingsAdminV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetUserLeaderboardRankingsAdminV3Short get user rankings


Get user leaderboard rankings
*/
func (a *Client) GetUserLeaderboardRankingsAdminV3Short(params *GetUserLeaderboardRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserLeaderboardRankingsAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserLeaderboardRankingsAdminV3Params()
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
		ID:                 "getUserLeaderboardRankingsAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserLeaderboardRankingsAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserLeaderboardRankingsAdminV3OK:
		response := &GetUserLeaderboardRankingsAdminV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserLeaderboardRankingsAdminV3Unauthorized:
		response := &GetUserLeaderboardRankingsAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserLeaderboardRankingsAdminV3Forbidden:
		response := &GetUserLeaderboardRankingsAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserLeaderboardRankingsAdminV3InternalServerError:
		response := &GetUserLeaderboardRankingsAdminV3Response{}
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
