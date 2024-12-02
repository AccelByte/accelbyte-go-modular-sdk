// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_visibility

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user visibility API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user visibility API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetHiddenUsersV2Short(params *GetHiddenUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV2Response, error)
	GetUserVisibilityStatusV2Short(params *GetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV2Response, error)
	SetUserLeaderboardVisibilityStatusV2Short(params *SetUserLeaderboardVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityStatusV2Response, error)
	SetUserVisibilityStatusV2Short(params *SetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityStatusV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetHiddenUsersV2Short get hidden users on a leaderboard
Return hidden users on a leaderboard
*/
func (a *Client) GetHiddenUsersV2Short(params *GetHiddenUsersV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetHiddenUsersV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetHiddenUsersV2Params()
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
		ID:                 "GetHiddenUsersV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/hidden",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetHiddenUsersV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetHiddenUsersV2OK:
		response := &GetHiddenUsersV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetHiddenUsersV2BadRequest:
		response := &GetHiddenUsersV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetHiddenUsersV2Unauthorized:
		response := &GetHiddenUsersV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetHiddenUsersV2Forbidden:
		response := &GetHiddenUsersV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetHiddenUsersV2InternalServerError:
		response := &GetHiddenUsersV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserVisibilityStatusV2Short get user visibility status
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) GetUserVisibilityStatusV2Short(params *GetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserVisibilityStatusV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserVisibilityStatusV2Params()
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
		ID:                 "GetUserVisibilityStatusV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserVisibilityStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserVisibilityStatusV2OK:
		response := &GetUserVisibilityStatusV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserVisibilityStatusV2BadRequest:
		response := &GetUserVisibilityStatusV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetUserVisibilityStatusV2Unauthorized:
		response := &GetUserVisibilityStatusV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetUserVisibilityStatusV2Forbidden:
		response := &GetUserVisibilityStatusV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetUserVisibilityStatusV2InternalServerError:
		response := &GetUserVisibilityStatusV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetUserLeaderboardVisibilityStatusV2Short set user visibility status on a specific leaderboard code
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserLeaderboardVisibilityStatusV2Short(params *SetUserLeaderboardVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserLeaderboardVisibilityStatusV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserLeaderboardVisibilityStatusV2Params()
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
		ID:                 "SetUserLeaderboardVisibilityStatusV2",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserLeaderboardVisibilityStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetUserLeaderboardVisibilityStatusV2OK:
		response := &SetUserLeaderboardVisibilityStatusV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SetUserLeaderboardVisibilityStatusV2BadRequest:
		response := &SetUserLeaderboardVisibilityStatusV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SetUserLeaderboardVisibilityStatusV2Unauthorized:
		response := &SetUserLeaderboardVisibilityStatusV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SetUserLeaderboardVisibilityStatusV2Forbidden:
		response := &SetUserLeaderboardVisibilityStatusV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SetUserLeaderboardVisibilityStatusV2InternalServerError:
		response := &SetUserLeaderboardVisibilityStatusV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetUserVisibilityStatusV2Short set user visibility status on a all current leaderboard
User with false visibility status will have hidden attribute set to true on it's leaderboard entry
*/
func (a *Client) SetUserVisibilityStatusV2Short(params *SetUserVisibilityStatusV2Params, authInfo runtime.ClientAuthInfoWriter) (*SetUserVisibilityStatusV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetUserVisibilityStatusV2Params()
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
		ID:                 "SetUserVisibilityStatusV2",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v2/admin/namespaces/{namespace}/users/{userId}/visibility",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetUserVisibilityStatusV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetUserVisibilityStatusV2OK:
		response := &SetUserVisibilityStatusV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SetUserVisibilityStatusV2BadRequest:
		response := &SetUserVisibilityStatusV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SetUserVisibilityStatusV2Unauthorized:
		response := &SetUserVisibilityStatusV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SetUserVisibilityStatusV2Forbidden:
		response := &SetUserVisibilityStatusV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SetUserVisibilityStatusV2InternalServerError:
		response := &SetUserVisibilityStatusV2Response{}
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
