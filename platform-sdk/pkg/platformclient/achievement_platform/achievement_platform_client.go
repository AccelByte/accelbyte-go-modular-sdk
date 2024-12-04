// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package achievement_platform

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new achievement platform API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for achievement platform API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	UnlockSteamUserAchievementShort(params *UnlockSteamUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UnlockSteamUserAchievementResponse, error)
	GetXblUserAchievementsShort(params *GetXblUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblUserAchievementsResponse, error)
	UpdateXblUserAchievementShort(params *UpdateXblUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblUserAchievementResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
UnlockSteamUserAchievementShort unlock steam achievement.
This API is used to unlock steam achievement.
*/
func (a *Client) UnlockSteamUserAchievementShort(params *UnlockSteamUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UnlockSteamUserAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnlockSteamUserAchievementParams()
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
		ID:                 "unlockSteamUserAchievement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/achievement/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnlockSteamUserAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnlockSteamUserAchievementNoContent:
		response := &UnlockSteamUserAchievementResponse{}

		response.IsSuccess = true

		return response, nil
	case *UnlockSteamUserAchievementBadRequest:
		response := &UnlockSteamUserAchievementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UnlockSteamUserAchievementNotFound:
		response := &UnlockSteamUserAchievementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetXblUserAchievementsShort get xbox live user achievements.
This API is used to get xbox live user achievements(Only for test).
*/
func (a *Client) GetXblUserAchievementsShort(params *GetXblUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblUserAchievementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetXblUserAchievementsParams()
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
		ID:                 "getXblUserAchievements",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetXblUserAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetXblUserAchievementsOK:
		response := &GetXblUserAchievementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetXblUserAchievementsBadRequest:
		response := &GetXblUserAchievementsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXblUserAchievementShort update xbox live achievements.
This API is used to update xbox live achievements.
*/
func (a *Client) UpdateXblUserAchievementShort(params *UpdateXblUserAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblUserAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXblUserAchievementParams()
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
		ID:                 "updateXblUserAchievement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/achievement/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXblUserAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXblUserAchievementNoContent:
		response := &UpdateXblUserAchievementResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateXblUserAchievementBadRequest:
		response := &UpdateXblUserAchievementResponse{}
		response.Error400 = v.Payload

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
