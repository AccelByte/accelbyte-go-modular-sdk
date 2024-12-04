// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_visibility_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user visibility v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user visibility v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetHiddenUsersV3Short(params *GetHiddenUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV3Response, error)
	GetUserVisibilityStatusV3Short(params *GetUserVisibilityStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV3Response, error)
	SetUserLeaderboardVisibilityV3Short(params *SetUserLeaderboardVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityV3Response, error)
	SetUserVisibilityV3Short(params *SetUserVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetHiddenUsersV3Short get hidden users on a leaderboard
Return hidden users on a leaderboard
*/
func (a *Client) GetHiddenUsersV3Short(params *GetHiddenUsersV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHiddenUsersV3Params()
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
		ID:                 "GetHiddenUsersV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHiddenUsersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetHiddenUsersV3OK:
		response := &GetHiddenUsersV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetHiddenUsersV3BadRequest:
		response := &GetHiddenUsersV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetHiddenUsersV3Unauthorized:
		response := &GetHiddenUsersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetHiddenUsersV3Forbidden:
		response := &GetHiddenUsersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetHiddenUsersV3InternalServerError:
		response := &GetHiddenUsersV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserVisibilityStatusV3Short get user visibility status
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) GetUserVisibilityStatusV3Short(params *GetUserVisibilityStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserVisibilityStatusV3Params()
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
		ID:                 "GetUserVisibilityStatusV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserVisibilityStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserVisibilityStatusV3OK:
		response := &GetUserVisibilityStatusV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserVisibilityStatusV3BadRequest:
		response := &GetUserVisibilityStatusV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserVisibilityStatusV3Unauthorized:
		response := &GetUserVisibilityStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserVisibilityStatusV3Forbidden:
		response := &GetUserVisibilityStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserVisibilityStatusV3InternalServerError:
		response := &GetUserVisibilityStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetUserLeaderboardVisibilityV3Short set user visibility status on a specific leaderboard code
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserLeaderboardVisibilityV3Short(params *SetUserLeaderboardVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserLeaderboardVisibilityV3Params()
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
		ID:                 "SetUserLeaderboardVisibilityV3",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserLeaderboardVisibilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetUserLeaderboardVisibilityV3OK:
		response := &SetUserLeaderboardVisibilityV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SetUserLeaderboardVisibilityV3BadRequest:
		response := &SetUserLeaderboardVisibilityV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetUserLeaderboardVisibilityV3Unauthorized:
		response := &SetUserLeaderboardVisibilityV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetUserLeaderboardVisibilityV3Forbidden:
		response := &SetUserLeaderboardVisibilityV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetUserLeaderboardVisibilityV3InternalServerError:
		response := &SetUserLeaderboardVisibilityV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetUserVisibilityV3Short set user visibility status on a all current leaderboard
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserVisibilityV3Short(params *SetUserVisibilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserVisibilityV3Params()
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
		ID:                 "SetUserVisibilityV3",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserVisibilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetUserVisibilityV3OK:
		response := &SetUserVisibilityV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SetUserVisibilityV3BadRequest:
		response := &SetUserVisibilityV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetUserVisibilityV3Unauthorized:
		response := &SetUserVisibilityV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetUserVisibilityV3Forbidden:
		response := &SetUserVisibilityV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetUserVisibilityV3InternalServerError:
		response := &SetUserVisibilityV3Response{}
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
