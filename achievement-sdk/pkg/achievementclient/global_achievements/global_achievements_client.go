// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package global_achievements

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new global achievements API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for global achievements API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListGlobalAchievementsShort(params *AdminListGlobalAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalAchievementsResponse, error)
	AdminListGlobalAchievementContributorsShort(params *AdminListGlobalAchievementContributorsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalAchievementContributorsResponse, error)
	ResetGlobalAchievementShort(params *ResetGlobalAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*ResetGlobalAchievementResponse, error)
	AdminListUserContributionsShort(params *AdminListUserContributionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserContributionsResponse, error)
	PublicListGlobalAchievementsShort(params *PublicListGlobalAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListGlobalAchievementsResponse, error)
	ListGlobalAchievementContributorsShort(params *ListGlobalAchievementContributorsParams, authInfo runtime.ClientAuthInfoWriter) (*ListGlobalAchievementContributorsResponse, error)
	ListUserContributionsShort(params *ListUserContributionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserContributionsResponse, error)
	ClaimGlobalAchievementRewardShort(params *ClaimGlobalAchievementRewardParams, authInfo runtime.ClientAuthInfoWriter) (*ClaimGlobalAchievementRewardResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListGlobalAchievementsShort admin query global achievements [include achieved and in-progress]

Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

Note:

Global achievement status value mean: `status = 1 (in progress)` and `status = 2 (unlocked)`
*/
func (a *Client) AdminListGlobalAchievementsShort(params *AdminListGlobalAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalAchievementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListGlobalAchievementsParams()
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
		ID:                 "AdminListGlobalAchievements",
		Method:             "GET",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/global/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListGlobalAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListGlobalAchievementsOK:
		response := &AdminListGlobalAchievementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListGlobalAchievementsBadRequest:
		response := &AdminListGlobalAchievementsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListGlobalAchievementsUnauthorized:
		response := &AdminListGlobalAchievementsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListGlobalAchievementsInternalServerError:
		response := &AdminListGlobalAchievementsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListGlobalAchievementContributorsShort admin list contributors of global achievement

Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) AdminListGlobalAchievementContributorsShort(params *AdminListGlobalAchievementContributorsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalAchievementContributorsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListGlobalAchievementContributorsParams()
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
		ID:                 "AdminListGlobalAchievementContributors",
		Method:             "GET",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListGlobalAchievementContributorsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListGlobalAchievementContributorsOK:
		response := &AdminListGlobalAchievementContributorsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListGlobalAchievementContributorsBadRequest:
		response := &AdminListGlobalAchievementContributorsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListGlobalAchievementContributorsUnauthorized:
		response := &AdminListGlobalAchievementContributorsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListGlobalAchievementContributorsInternalServerError:
		response := &AdminListGlobalAchievementContributorsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ResetGlobalAchievementShort reset global achievement

[TEST FACILITY ONLY]

Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [DELETE]` and scope `social`
*/
func (a *Client) ResetGlobalAchievementShort(params *ResetGlobalAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*ResetGlobalAchievementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewResetGlobalAchievementParams()
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
		ID:                 "ResetGlobalAchievement",
		Method:             "DELETE",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ResetGlobalAchievementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ResetGlobalAchievementNoContent:
		response := &ResetGlobalAchievementResponse{}

		response.IsSuccess = true

		return response, nil
	case *ResetGlobalAchievementUnauthorized:
		response := &ResetGlobalAchievementResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetGlobalAchievementForbidden:
		response := &ResetGlobalAchievementResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ResetGlobalAchievementInternalServerError:
		response := &ResetGlobalAchievementResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserContributionsShort admin list of global achievements that has been contributed by the user

Required permission
`ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) AdminListUserContributionsShort(params *AdminListUserContributionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserContributionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListUserContributionsParams()
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
		ID:                 "AdminListUserContributions",
		Method:             "GET",
		PathPattern:        "/achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListUserContributionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListUserContributionsOK:
		response := &AdminListUserContributionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListUserContributionsBadRequest:
		response := &AdminListUserContributionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserContributionsUnauthorized:
		response := &AdminListUserContributionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListUserContributionsInternalServerError:
		response := &AdminListUserContributionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListGlobalAchievementsShort query global achievements [include achieved and in-progress]

Required permission
`NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

Note:

Global achievement status value mean: `status = 1 (in progress)` and `status = 2 (unlocked)`
*/
func (a *Client) PublicListGlobalAchievementsShort(params *PublicListGlobalAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListGlobalAchievementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListGlobalAchievementsParams()
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
		ID:                 "PublicListGlobalAchievements",
		Method:             "GET",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/global/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListGlobalAchievementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListGlobalAchievementsOK:
		response := &PublicListGlobalAchievementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListGlobalAchievementsBadRequest:
		response := &PublicListGlobalAchievementsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListGlobalAchievementsUnauthorized:
		response := &PublicListGlobalAchievementsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListGlobalAchievementsInternalServerError:
		response := &PublicListGlobalAchievementsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListGlobalAchievementContributorsShort list contributors of global achievement

Required permission
`NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) ListGlobalAchievementContributorsShort(params *ListGlobalAchievementContributorsParams, authInfo runtime.ClientAuthInfoWriter) (*ListGlobalAchievementContributorsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGlobalAchievementContributorsParams()
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
		ID:                 "ListGlobalAchievementContributors",
		Method:             "GET",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGlobalAchievementContributorsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListGlobalAchievementContributorsOK:
		response := &ListGlobalAchievementContributorsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListGlobalAchievementContributorsBadRequest:
		response := &ListGlobalAchievementContributorsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListGlobalAchievementContributorsUnauthorized:
		response := &ListGlobalAchievementContributorsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListGlobalAchievementContributorsInternalServerError:
		response := &ListGlobalAchievementContributorsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListUserContributionsShort list of global achievements that has been contributed by the user

Required permission
`NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) ListUserContributionsShort(params *ListUserContributionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserContributionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListUserContributionsParams()
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
		ID:                 "ListUserContributions",
		Method:             "GET",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListUserContributionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListUserContributionsOK:
		response := &ListUserContributionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListUserContributionsBadRequest:
		response := &ListUserContributionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListUserContributionsUnauthorized:
		response := &ListUserContributionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListUserContributionsInternalServerError:
		response := &ListUserContributionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ClaimGlobalAchievementRewardShort claim global achievement reward

Required permission
`NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [UPDATE]` and scope `social`

Note:

Global achievement should be unlocked to claim the reward. Only contributor of global achievement are eligible for rewards
*/
func (a *Client) ClaimGlobalAchievementRewardShort(params *ClaimGlobalAchievementRewardParams, authInfo runtime.ClientAuthInfoWriter) (*ClaimGlobalAchievementRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewClaimGlobalAchievementRewardParams()
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
		ID:                 "ClaimGlobalAchievementReward",
		Method:             "POST",
		PathPattern:        "/achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ClaimGlobalAchievementRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ClaimGlobalAchievementRewardAccepted:
		response := &ClaimGlobalAchievementRewardResponse{}

		response.IsSuccess = true

		return response, nil
	case *ClaimGlobalAchievementRewardBadRequest:
		response := &ClaimGlobalAchievementRewardResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ClaimGlobalAchievementRewardUnauthorized:
		response := &ClaimGlobalAchievementRewardResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ClaimGlobalAchievementRewardInternalServerError:
		response := &ClaimGlobalAchievementRewardResponse{}
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
