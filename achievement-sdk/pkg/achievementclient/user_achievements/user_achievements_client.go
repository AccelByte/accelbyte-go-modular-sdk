// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_achievements

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new user achievements API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for user achievements API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListUserAchievementsShort(params *AdminListUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserAchievementsResponse, error)
	AdminResetAchievementShort(params *AdminResetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetAchievementResponse, error)
	AdminUnlockAchievementShort(params *AdminUnlockAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnlockAchievementResponse, error)
	PublicListUserAchievementsShort(params *PublicListUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAchievementsResponse, error)
	PublicUnlockAchievementShort(params *PublicUnlockAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnlockAchievementResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListUserAchievementsShort query user achievements [include achieved and in-progress]


Required permission
`ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`




Note:




User Achievement status value mean: `status = 1 (in progress)` and `status = 2 (unlocked)`




`achievedAt` value will return default value: `0001-01-01T00:00:00Z` for user achievement that locked or in progress
*/
func (a *Client) AdminListUserAchievementsShort(params *AdminListUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserAchievementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserAchievementsParams()
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
		ID:                 "AdminListUserAchievements",
		Method:             "GET",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUserAchievementsOK:
		response := &AdminListUserAchievementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListUserAchievementsBadRequest:
		response := &AdminListUserAchievementsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserAchievementsUnauthorized:
		response := &AdminListUserAchievementsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserAchievementsNotFound:
		response := &AdminListUserAchievementsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserAchievementsInternalServerError:
		response := &AdminListUserAchievementsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetAchievementShort reset an achievement


[TEST FACILITY ONLY]




Required permission
`ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [DELETE]` and scope `social`
*/
func (a *Client) AdminResetAchievementShort(params *AdminResetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetAchievementParams()
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
		ID:                 "AdminResetAchievement",
		Method:             "DELETE",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetAchievementNoContent:
		response := &AdminResetAchievementResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminResetAchievementBadRequest:
		response := &AdminResetAchievementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminResetAchievementUnauthorized:
		response := &AdminResetAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminResetAchievementNotFound:
		response := &AdminResetAchievementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminResetAchievementInternalServerError:
		response := &AdminResetAchievementResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnlockAchievementShort unlock an achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [UPDATE]` and scope `social`
*/
func (a *Client) AdminUnlockAchievementShort(params *AdminUnlockAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnlockAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUnlockAchievementParams()
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
		ID:                 "AdminUnlockAchievement",
		Method:             "PUT",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUnlockAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUnlockAchievementNoContent:
		response := &AdminUnlockAchievementResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUnlockAchievementBadRequest:
		response := &AdminUnlockAchievementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnlockAchievementUnauthorized:
		response := &AdminUnlockAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnlockAchievementUnprocessableEntity:
		response := &AdminUnlockAchievementResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUnlockAchievementInternalServerError:
		response := &AdminUnlockAchievementResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListUserAchievementsShort query user achievements [include achieved and in-progress]


Required permission
`NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`




Note:




User Achievement status value mean: `status = 1 (in progress)` and `status = 2 (unlocked)`




`achievedAt` value will return default value: `0001-01-01T00:00:00Z` for user achievement that locked or in progress
*/
func (a *Client) PublicListUserAchievementsShort(params *PublicListUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAchievementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListUserAchievementsParams()
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
		ID:                 "PublicListUserAchievements",
		Method:             "GET",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListUserAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListUserAchievementsOK:
		response := &PublicListUserAchievementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListUserAchievementsBadRequest:
		response := &PublicListUserAchievementsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserAchievementsUnauthorized:
		response := &PublicListUserAchievementsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserAchievementsNotFound:
		response := &PublicListUserAchievementsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListUserAchievementsInternalServerError:
		response := &PublicListUserAchievementsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUnlockAchievementShort unlock an achievement


Required permission
`NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [UPDATE]` and scope `social`
*/
func (a *Client) PublicUnlockAchievementShort(params *PublicUnlockAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnlockAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUnlockAchievementParams()
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
		ID:                 "PublicUnlockAchievement",
		Method:             "PUT",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUnlockAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUnlockAchievementNoContent:
		response := &PublicUnlockAchievementResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicUnlockAchievementBadRequest:
		response := &PublicUnlockAchievementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnlockAchievementUnauthorized:
		response := &PublicUnlockAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnlockAchievementUnprocessableEntity:
		response := &PublicUnlockAchievementResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnlockAchievementInternalServerError:
		response := &PublicUnlockAchievementResponse{}
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
