// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_data

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user data API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user data API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetUserLeaderboardRankingsAdminV1Short(params *GetUserLeaderboardRankingsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserLeaderboardRankingsAdminV1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetUserLeaderboardRankingsAdminV1Short get user rankings


Get user leaderboard rankings
*/
func (a *Client) GetUserLeaderboardRankingsAdminV1Short(params *GetUserLeaderboardRankingsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserLeaderboardRankingsAdminV1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserLeaderboardRankingsAdminV1Params()
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
		ID:                 "getUserLeaderboardRankingsAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/leaderboards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserLeaderboardRankingsAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserLeaderboardRankingsAdminV1OK:
		return v, nil
	case *GetUserLeaderboardRankingsAdminV1Unauthorized:
		return nil, v
	case *GetUserLeaderboardRankingsAdminV1Forbidden:
		return nil, v
	case *GetUserLeaderboardRankingsAdminV1InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
