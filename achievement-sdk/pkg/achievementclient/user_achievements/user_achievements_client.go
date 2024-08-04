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
	AdminListUserAchievementsShort(params *AdminListUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserAchievementsOK, error)
	AdminResetAchievementShort(params *AdminResetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetAchievementNoContent, error)
	AdminUnlockAchievementShort(params *AdminUnlockAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnlockAchievementNoContent, error)
	PublicListUserAchievementsShort(params *PublicListUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAchievementsOK, error)
	PublicUnlockAchievementShort(params *PublicUnlockAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnlockAchievementNoContent, error)

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
func (a *Client) AdminListUserAchievementsShort(params *AdminListUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserAchievementsOK, error) {
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
		return v, nil
	case *AdminListUserAchievementsBadRequest:
		return nil, v
	case *AdminListUserAchievementsUnauthorized:
		return nil, v
	case *AdminListUserAchievementsNotFound:
		return nil, v
	case *AdminListUserAchievementsInternalServerError:
		return nil, v

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
func (a *Client) AdminResetAchievementShort(params *AdminResetAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetAchievementNoContent, error) {
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
		return v, nil
	case *AdminResetAchievementBadRequest:
		return nil, v
	case *AdminResetAchievementUnauthorized:
		return nil, v
	case *AdminResetAchievementNotFound:
		return nil, v
	case *AdminResetAchievementInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUnlockAchievementShort unlock an achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [UPDATE]` and scope `social`
*/
func (a *Client) AdminUnlockAchievementShort(params *AdminUnlockAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUnlockAchievementNoContent, error) {
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
		return v, nil
	case *AdminUnlockAchievementBadRequest:
		return nil, v
	case *AdminUnlockAchievementUnauthorized:
		return nil, v
	case *AdminUnlockAchievementUnprocessableEntity:
		return nil, v
	case *AdminUnlockAchievementInternalServerError:
		return nil, v

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
func (a *Client) PublicListUserAchievementsShort(params *PublicListUserAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListUserAchievementsOK, error) {
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
		return v, nil
	case *PublicListUserAchievementsBadRequest:
		return nil, v
	case *PublicListUserAchievementsUnauthorized:
		return nil, v
	case *PublicListUserAchievementsNotFound:
		return nil, v
	case *PublicListUserAchievementsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUnlockAchievementShort unlock an achievement


Required permission
`NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [UPDATE]` and scope `social`
*/
func (a *Client) PublicUnlockAchievementShort(params *PublicUnlockAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUnlockAchievementNoContent, error) {
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
		return v, nil
	case *PublicUnlockAchievementBadRequest:
		return nil, v
	case *PublicUnlockAchievementUnauthorized:
		return nil, v
	case *PublicUnlockAchievementUnprocessableEntity:
		return nil, v
	case *PublicUnlockAchievementInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
