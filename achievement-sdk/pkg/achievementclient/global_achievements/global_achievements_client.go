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
	AdminListGlobalAchievementsShort(params *AdminListGlobalAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalAchievementsOK, error)
	AdminListGlobalAchievementContributorsShort(params *AdminListGlobalAchievementContributorsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalAchievementContributorsOK, error)
	ResetGlobalAchievementShort(params *ResetGlobalAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*ResetGlobalAchievementNoContent, error)
	AdminListUserContributionsShort(params *AdminListUserContributionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserContributionsOK, error)
	PublicListGlobalAchievementsShort(params *PublicListGlobalAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListGlobalAchievementsOK, error)
	ListGlobalAchievementContributorsShort(params *ListGlobalAchievementContributorsParams, authInfo runtime.ClientAuthInfoWriter) (*ListGlobalAchievementContributorsOK, error)
	ListUserContributionsShort(params *ListUserContributionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserContributionsOK, error)
	ClaimGlobalAchievementRewardShort(params *ClaimGlobalAchievementRewardParams, authInfo runtime.ClientAuthInfoWriter) (*ClaimGlobalAchievementRewardAccepted, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListGlobalAchievementsShort admin query global achievements [include achieved and in-progress]


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`




Note:




Global achievement status value mean: `status = 1 (in progress)` and `status = 2 (unlocked)`
*/
func (a *Client) AdminListGlobalAchievementsShort(params *AdminListGlobalAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalAchievementsOK, error) {
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
		return v, nil
	case *AdminListGlobalAchievementsBadRequest:
		return nil, v
	case *AdminListGlobalAchievementsUnauthorized:
		return nil, v
	case *AdminListGlobalAchievementsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListGlobalAchievementContributorsShort admin list contributors of global achievement


Required permission
`ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) AdminListGlobalAchievementContributorsShort(params *AdminListGlobalAchievementContributorsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListGlobalAchievementContributorsOK, error) {
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
		return v, nil
	case *AdminListGlobalAchievementContributorsBadRequest:
		return nil, v
	case *AdminListGlobalAchievementContributorsUnauthorized:
		return nil, v
	case *AdminListGlobalAchievementContributorsInternalServerError:
		return nil, v

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
func (a *Client) ResetGlobalAchievementShort(params *ResetGlobalAchievementParams, authInfo runtime.ClientAuthInfoWriter) (*ResetGlobalAchievementNoContent, error) {
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
		return v, nil
	case *ResetGlobalAchievementUnauthorized:
		return nil, v
	case *ResetGlobalAchievementForbidden:
		return nil, v
	case *ResetGlobalAchievementInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListUserContributionsShort admin list of global achievements that has been contributed by the user


Required permission
`ADMIN:NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) AdminListUserContributionsShort(params *AdminListUserContributionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListUserContributionsOK, error) {
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
		return v, nil
	case *AdminListUserContributionsBadRequest:
		return nil, v
	case *AdminListUserContributionsUnauthorized:
		return nil, v
	case *AdminListUserContributionsInternalServerError:
		return nil, v

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
func (a *Client) PublicListGlobalAchievementsShort(params *PublicListGlobalAchievementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListGlobalAchievementsOK, error) {
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
		return v, nil
	case *PublicListGlobalAchievementsBadRequest:
		return nil, v
	case *PublicListGlobalAchievementsUnauthorized:
		return nil, v
	case *PublicListGlobalAchievementsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListGlobalAchievementContributorsShort list contributors of global achievement


Required permission
`NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) ListGlobalAchievementContributorsShort(params *ListGlobalAchievementContributorsParams, authInfo runtime.ClientAuthInfoWriter) (*ListGlobalAchievementContributorsOK, error) {
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
		return v, nil
	case *ListGlobalAchievementContributorsBadRequest:
		return nil, v
	case *ListGlobalAchievementContributorsUnauthorized:
		return nil, v
	case *ListGlobalAchievementContributorsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListUserContributionsShort list of global achievements that has been contributed by the user


Required permission
`NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`
*/
func (a *Client) ListUserContributionsShort(params *ListUserContributionsParams, authInfo runtime.ClientAuthInfoWriter) (*ListUserContributionsOK, error) {
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
		return v, nil
	case *ListUserContributionsBadRequest:
		return nil, v
	case *ListUserContributionsUnauthorized:
		return nil, v
	case *ListUserContributionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ClaimGlobalAchievementRewardShort claim global achievement reward


Required permission
`NAMESPACE:{namespace}:USER:{userId}:ACHIEVEMENT [READ]` and scope `social`




Note:




Global achievement should be unlocked to claim the reward. Only contributor of global achievement are eligible for rewards
*/
func (a *Client) ClaimGlobalAchievementRewardShort(params *ClaimGlobalAchievementRewardParams, authInfo runtime.ClientAuthInfoWriter) (*ClaimGlobalAchievementRewardAccepted, error) {
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
		return v, nil
	case *ClaimGlobalAchievementRewardBadRequest:
		return nil, v
	case *ClaimGlobalAchievementRewardUnauthorized:
		return nil, v
	case *ClaimGlobalAchievementRewardInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
