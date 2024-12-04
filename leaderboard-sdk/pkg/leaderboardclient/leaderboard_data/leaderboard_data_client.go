// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard_data

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new leaderboard data API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for leaderboard data API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetArchivedLeaderboardRankingDataV1HandlerShort(params *AdminGetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetArchivedLeaderboardRankingDataV1HandlerResponse, error)
	CreateArchivedLeaderboardRankingDataV1HandlerShort(params *CreateArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateArchivedLeaderboardRankingDataV1HandlerResponse, error)
	GetAllTimeLeaderboardRankingAdminV1Short(params *GetAllTimeLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV1Response, error)
	GetCurrentMonthLeaderboardRankingAdminV1Short(params *GetCurrentMonthLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingAdminV1Response, error)
	DeleteUserRankingByLeaderboardCodeAdminV1Short(params *DeleteUserRankingByLeaderboardCodeAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV1Response, error)
	GetCurrentSeasonLeaderboardRankingAdminV1Short(params *GetCurrentSeasonLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingAdminV1Response, error)
	GetTodayLeaderboardRankingAdminV1Short(params *GetTodayLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingAdminV1Response, error)
	GetUserRankingAdminV1Short(params *GetUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV1Response, error)
	UpdateUserPointAdminV1Short(params *UpdateUserPointAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserPointAdminV1Response, error)
	DeleteUserRankingAdminV1Short(params *DeleteUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV1Response, error)
	GetCurrentWeekLeaderboardRankingAdminV1Short(params *GetCurrentWeekLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingAdminV1Response, error)
	DeleteUserRankingsAdminV1Short(params *DeleteUserRankingsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV1Response, error)
	GetAllTimeLeaderboardRankingPublicV1Short(params *GetAllTimeLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV1Response, error)
	GetArchivedLeaderboardRankingDataV1HandlerShort(params *GetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetArchivedLeaderboardRankingDataV1HandlerResponse, error)
	GetCurrentMonthLeaderboardRankingPublicV1Short(params *GetCurrentMonthLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingPublicV1Response, error)
	GetCurrentSeasonLeaderboardRankingPublicV1Short(params *GetCurrentSeasonLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingPublicV1Response, error)
	GetTodayLeaderboardRankingPublicV1Short(params *GetTodayLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingPublicV1Response, error)
	GetUserRankingPublicV1Short(params *GetUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV1Response, error)
	DeleteUserRankingPublicV1Short(params *DeleteUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingPublicV1Response, error)
	GetCurrentWeekLeaderboardRankingPublicV1Short(params *GetCurrentWeekLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingPublicV1Response, error)
	GetAllTimeLeaderboardRankingPublicV2Short(params *GetAllTimeLeaderboardRankingPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetArchivedLeaderboardRankingDataV1HandlerShort admin get signed url for archive all time leaderboard ranking data


Admin Get signed url in an all time leaderboard that archived. Notes: This will be a bulk endpoint to get sign url
*/
func (a *Client) AdminGetArchivedLeaderboardRankingDataV1HandlerShort(params *AdminGetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetArchivedLeaderboardRankingDataV1HandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetArchivedLeaderboardRankingDataV1HandlerParams()
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
		ID:                 "AdminGetArchivedLeaderboardRankingDataV1Handler",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetArchivedLeaderboardRankingDataV1HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetArchivedLeaderboardRankingDataV1HandlerOK:
		response := &AdminGetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerBadRequest:
		response := &AdminGetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerUnauthorized:
		response := &AdminGetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerForbidden:
		response := &AdminGetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerNotFound:
		response := &AdminGetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetArchivedLeaderboardRankingDataV1HandlerInternalServerError:
		response := &AdminGetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateArchivedLeaderboardRankingDataV1HandlerShort archive a leadeboard data ranking


Archive leaderboard ranking data for specified leaderboard codes. NOTE: This will remove all data of the leaderboard on every slug,
remove the leaderboard code on stat mapping, and remove the leaderboard on the queue reset. This will be a bulk endpoint
*/
func (a *Client) CreateArchivedLeaderboardRankingDataV1HandlerShort(params *CreateArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateArchivedLeaderboardRankingDataV1HandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateArchivedLeaderboardRankingDataV1HandlerParams()
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
		ID:                 "CreateArchivedLeaderboardRankingDataV1Handler",
		Method:             "POST",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateArchivedLeaderboardRankingDataV1HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateArchivedLeaderboardRankingDataV1HandlerCreated:
		response := &CreateArchivedLeaderboardRankingDataV1HandlerResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest:
		response := &CreateArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized:
		response := &CreateArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateArchivedLeaderboardRankingDataV1HandlerForbidden:
		response := &CreateArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError:
		response := &CreateArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllTimeLeaderboardRankingAdminV1Short get all time leaderboard ranking data


Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingAdminV1Short(params *GetAllTimeLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingAdminV1Params()
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
		ID:                 "GetAllTimeLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingAdminV1OK:
		response := &GetAllTimeLeaderboardRankingAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllTimeLeaderboardRankingAdminV1BadRequest:
		response := &GetAllTimeLeaderboardRankingAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingAdminV1Unauthorized:
		response := &GetAllTimeLeaderboardRankingAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingAdminV1Forbidden:
		response := &GetAllTimeLeaderboardRankingAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingAdminV1NotFound:
		response := &GetAllTimeLeaderboardRankingAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingAdminV1InternalServerError:
		response := &GetAllTimeLeaderboardRankingAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentMonthLeaderboardRankingAdminV1Short get current month leaderboard ranking data


Get rankings in current month leaderboard.
*/
func (a *Client) GetCurrentMonthLeaderboardRankingAdminV1Short(params *GetCurrentMonthLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentMonthLeaderboardRankingAdminV1Params()
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
		ID:                 "GetCurrentMonthLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/month",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentMonthLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentMonthLeaderboardRankingAdminV1OK:
		response := &GetCurrentMonthLeaderboardRankingAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentMonthLeaderboardRankingAdminV1BadRequest:
		response := &GetCurrentMonthLeaderboardRankingAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentMonthLeaderboardRankingAdminV1Unauthorized:
		response := &GetCurrentMonthLeaderboardRankingAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentMonthLeaderboardRankingAdminV1Forbidden:
		response := &GetCurrentMonthLeaderboardRankingAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentMonthLeaderboardRankingAdminV1NotFound:
		response := &GetCurrentMonthLeaderboardRankingAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentMonthLeaderboardRankingAdminV1InternalServerError:
		response := &GetCurrentMonthLeaderboardRankingAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingByLeaderboardCodeAdminV1Short delete all user ranking by leaderboard code


This endpoint will delete user ranking by leaderboard code




Warning : This will permanently delete your data. Make sure to back up anything important before continuing.
*/
func (a *Client) DeleteUserRankingByLeaderboardCodeAdminV1Short(params *DeleteUserRankingByLeaderboardCodeAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingByLeaderboardCodeAdminV1Params()
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
		ID:                 "deleteUserRankingByLeaderboardCodeAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingByLeaderboardCodeAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingByLeaderboardCodeAdminV1NoContent:
		response := &DeleteUserRankingByLeaderboardCodeAdminV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized:
		response := &DeleteUserRankingByLeaderboardCodeAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden:
		response := &DeleteUserRankingByLeaderboardCodeAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingByLeaderboardCodeAdminV1NotFound:
		response := &DeleteUserRankingByLeaderboardCodeAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError:
		response := &DeleteUserRankingByLeaderboardCodeAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentSeasonLeaderboardRankingAdminV1Short get current season leaderboard ranking data


Get rankings in current season leaderboard.
*/
func (a *Client) GetCurrentSeasonLeaderboardRankingAdminV1Short(params *GetCurrentSeasonLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentSeasonLeaderboardRankingAdminV1Params()
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
		ID:                 "GetCurrentSeasonLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/season",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentSeasonLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentSeasonLeaderboardRankingAdminV1OK:
		response := &GetCurrentSeasonLeaderboardRankingAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentSeasonLeaderboardRankingAdminV1BadRequest:
		response := &GetCurrentSeasonLeaderboardRankingAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentSeasonLeaderboardRankingAdminV1Unauthorized:
		response := &GetCurrentSeasonLeaderboardRankingAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentSeasonLeaderboardRankingAdminV1Forbidden:
		response := &GetCurrentSeasonLeaderboardRankingAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentSeasonLeaderboardRankingAdminV1NotFound:
		response := &GetCurrentSeasonLeaderboardRankingAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentSeasonLeaderboardRankingAdminV1InternalServerError:
		response := &GetCurrentSeasonLeaderboardRankingAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTodayLeaderboardRankingAdminV1Short get today leaderboard ranking data


Get rankings in today leaderboard.
*/
func (a *Client) GetTodayLeaderboardRankingAdminV1Short(params *GetTodayLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTodayLeaderboardRankingAdminV1Params()
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
		ID:                 "GetTodayLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/today",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTodayLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTodayLeaderboardRankingAdminV1OK:
		response := &GetTodayLeaderboardRankingAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTodayLeaderboardRankingAdminV1BadRequest:
		response := &GetTodayLeaderboardRankingAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTodayLeaderboardRankingAdminV1Unauthorized:
		response := &GetTodayLeaderboardRankingAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTodayLeaderboardRankingAdminV1Forbidden:
		response := &GetTodayLeaderboardRankingAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTodayLeaderboardRankingAdminV1NotFound:
		response := &GetTodayLeaderboardRankingAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTodayLeaderboardRankingAdminV1InternalServerError:
		response := &GetTodayLeaderboardRankingAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserRankingAdminV1Short get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingAdminV1Short(params *GetUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingAdminV1Params()
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
		ID:                 "getUserRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingAdminV1OK:
		response := &GetUserRankingAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserRankingAdminV1Unauthorized:
		response := &GetUserRankingAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserRankingAdminV1Forbidden:
		response := &GetUserRankingAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserRankingAdminV1NotFound:
		response := &GetUserRankingAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserRankingAdminV1InternalServerError:
		response := &GetUserRankingAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserPointAdminV1Short update user point


Update user point in a leaderboard. This endpoint uses for test utility only.




Other detail info:






  * Returns: user ranking
*/
func (a *Client) UpdateUserPointAdminV1Short(params *UpdateUserPointAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserPointAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserPointAdminV1Params()
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
		ID:                 "updateUserPointAdminV1",
		Method:             "PUT",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserPointAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserPointAdminV1OK:
		response := &UpdateUserPointAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserPointAdminV1BadRequest:
		response := &UpdateUserPointAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserPointAdminV1Unauthorized:
		response := &UpdateUserPointAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserPointAdminV1Forbidden:
		response := &UpdateUserPointAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserPointAdminV1NotFound:
		response := &UpdateUserPointAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserPointAdminV1InternalServerError:
		response := &UpdateUserPointAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingAdminV1Short delete user ranking
Delete user ranking

Remove entry with provided userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingAdminV1Short(params *DeleteUserRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingAdminV1Params()
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
		ID:                 "deleteUserRankingAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingAdminV1NoContent:
		response := &DeleteUserRankingAdminV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserRankingAdminV1Unauthorized:
		response := &DeleteUserRankingAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingAdminV1Forbidden:
		response := &DeleteUserRankingAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingAdminV1NotFound:
		response := &DeleteUserRankingAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingAdminV1InternalServerError:
		response := &DeleteUserRankingAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentWeekLeaderboardRankingAdminV1Short get current week leaderboard ranking data


Get rankings in current week leaderboard.
*/
func (a *Client) GetCurrentWeekLeaderboardRankingAdminV1Short(params *GetCurrentWeekLeaderboardRankingAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentWeekLeaderboardRankingAdminV1Params()
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
		ID:                 "GetCurrentWeekLeaderboardRankingAdminV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/week",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentWeekLeaderboardRankingAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentWeekLeaderboardRankingAdminV1OK:
		response := &GetCurrentWeekLeaderboardRankingAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentWeekLeaderboardRankingAdminV1BadRequest:
		response := &GetCurrentWeekLeaderboardRankingAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentWeekLeaderboardRankingAdminV1Unauthorized:
		response := &GetCurrentWeekLeaderboardRankingAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentWeekLeaderboardRankingAdminV1Forbidden:
		response := &GetCurrentWeekLeaderboardRankingAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentWeekLeaderboardRankingAdminV1NotFound:
		response := &GetCurrentWeekLeaderboardRankingAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentWeekLeaderboardRankingAdminV1InternalServerError:
		response := &GetCurrentWeekLeaderboardRankingAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingsAdminV1Short delete user ranking across leaderboard(s)
Delete user ranking across leaderboard

Remove entry with provided userId from leaderboard.
*/
func (a *Client) DeleteUserRankingsAdminV1Short(params *DeleteUserRankingsAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingsAdminV1Params()
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
		ID:                 "deleteUserRankingsAdminV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingsAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingsAdminV1NoContent:
		response := &DeleteUserRankingsAdminV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserRankingsAdminV1Unauthorized:
		response := &DeleteUserRankingsAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingsAdminV1Forbidden:
		response := &DeleteUserRankingsAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingsAdminV1InternalServerError:
		response := &DeleteUserRankingsAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllTimeLeaderboardRankingPublicV1Short get all time leaderboard ranking data
Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingPublicV1Short(params *GetAllTimeLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingPublicV1Params()
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
		ID:                 "GetAllTimeLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingPublicV1OK:
		response := &GetAllTimeLeaderboardRankingPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllTimeLeaderboardRankingPublicV1BadRequest:
		response := &GetAllTimeLeaderboardRankingPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingPublicV1NotFound:
		response := &GetAllTimeLeaderboardRankingPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingPublicV1InternalServerError:
		response := &GetAllTimeLeaderboardRankingPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetArchivedLeaderboardRankingDataV1HandlerShort get signed url for archive all time leaderboard ranking data
Get signed url in an all time leaderboard that archived. NOTE: This will be a bulk endpoint to get sign url
*/
func (a *Client) GetArchivedLeaderboardRankingDataV1HandlerShort(params *GetArchivedLeaderboardRankingDataV1HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetArchivedLeaderboardRankingDataV1HandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetArchivedLeaderboardRankingDataV1HandlerParams()
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
		ID:                 "GetArchivedLeaderboardRankingDataV1Handler",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetArchivedLeaderboardRankingDataV1HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetArchivedLeaderboardRankingDataV1HandlerOK:
		response := &GetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetArchivedLeaderboardRankingDataV1HandlerBadRequest:
		response := &GetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized:
		response := &GetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetArchivedLeaderboardRankingDataV1HandlerForbidden:
		response := &GetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetArchivedLeaderboardRankingDataV1HandlerNotFound:
		response := &GetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError:
		response := &GetArchivedLeaderboardRankingDataV1HandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentMonthLeaderboardRankingPublicV1Short get current month leaderboard ranking data


Get rankings in current month leaderboard.
*/
func (a *Client) GetCurrentMonthLeaderboardRankingPublicV1Short(params *GetCurrentMonthLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentMonthLeaderboardRankingPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentMonthLeaderboardRankingPublicV1Params()
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
		ID:                 "GetCurrentMonthLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/month",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentMonthLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentMonthLeaderboardRankingPublicV1OK:
		response := &GetCurrentMonthLeaderboardRankingPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentMonthLeaderboardRankingPublicV1BadRequest:
		response := &GetCurrentMonthLeaderboardRankingPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentMonthLeaderboardRankingPublicV1NotFound:
		response := &GetCurrentMonthLeaderboardRankingPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentMonthLeaderboardRankingPublicV1InternalServerError:
		response := &GetCurrentMonthLeaderboardRankingPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentSeasonLeaderboardRankingPublicV1Short get current season leaderboard ranking data


Get rankings in current season leaderboard.
*/
func (a *Client) GetCurrentSeasonLeaderboardRankingPublicV1Short(params *GetCurrentSeasonLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentSeasonLeaderboardRankingPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentSeasonLeaderboardRankingPublicV1Params()
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
		ID:                 "GetCurrentSeasonLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/season",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentSeasonLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentSeasonLeaderboardRankingPublicV1OK:
		response := &GetCurrentSeasonLeaderboardRankingPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentSeasonLeaderboardRankingPublicV1BadRequest:
		response := &GetCurrentSeasonLeaderboardRankingPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentSeasonLeaderboardRankingPublicV1NotFound:
		response := &GetCurrentSeasonLeaderboardRankingPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentSeasonLeaderboardRankingPublicV1InternalServerError:
		response := &GetCurrentSeasonLeaderboardRankingPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTodayLeaderboardRankingPublicV1Short get today leaderboard ranking data


Get rankings in today leaderboard.
*/
func (a *Client) GetTodayLeaderboardRankingPublicV1Short(params *GetTodayLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetTodayLeaderboardRankingPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTodayLeaderboardRankingPublicV1Params()
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
		ID:                 "GetTodayLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/today",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTodayLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTodayLeaderboardRankingPublicV1OK:
		response := &GetTodayLeaderboardRankingPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTodayLeaderboardRankingPublicV1BadRequest:
		response := &GetTodayLeaderboardRankingPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTodayLeaderboardRankingPublicV1NotFound:
		response := &GetTodayLeaderboardRankingPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetTodayLeaderboardRankingPublicV1InternalServerError:
		response := &GetTodayLeaderboardRankingPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserRankingPublicV1Short get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingPublicV1Short(params *GetUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingPublicV1Params()
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
		ID:                 "getUserRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingPublicV1OK:
		response := &GetUserRankingPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserRankingPublicV1Unauthorized:
		response := &GetUserRankingPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserRankingPublicV1Forbidden:
		response := &GetUserRankingPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserRankingPublicV1NotFound:
		response := &GetUserRankingPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetUserRankingPublicV1InternalServerError:
		response := &GetUserRankingPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingPublicV1Short delete user ranking
Delete user ranking

Remove entry with provided userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingPublicV1Short(params *DeleteUserRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingPublicV1Params()
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
		ID:                 "deleteUserRankingPublicV1",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingPublicV1NoContent:
		response := &DeleteUserRankingPublicV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserRankingPublicV1Unauthorized:
		response := &DeleteUserRankingPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingPublicV1Forbidden:
		response := &DeleteUserRankingPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingPublicV1NotFound:
		response := &DeleteUserRankingPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteUserRankingPublicV1InternalServerError:
		response := &DeleteUserRankingPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentWeekLeaderboardRankingPublicV1Short get current week leaderboard ranking data


Get rankings in current week leaderboard.
*/
func (a *Client) GetCurrentWeekLeaderboardRankingPublicV1Short(params *GetCurrentWeekLeaderboardRankingPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentWeekLeaderboardRankingPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentWeekLeaderboardRankingPublicV1Params()
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
		ID:                 "GetCurrentWeekLeaderboardRankingPublicV1",
		Method:             "GET",
		PathPattern:        "/leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/week",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentWeekLeaderboardRankingPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentWeekLeaderboardRankingPublicV1OK:
		response := &GetCurrentWeekLeaderboardRankingPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentWeekLeaderboardRankingPublicV1BadRequest:
		response := &GetCurrentWeekLeaderboardRankingPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentWeekLeaderboardRankingPublicV1NotFound:
		response := &GetCurrentWeekLeaderboardRankingPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetCurrentWeekLeaderboardRankingPublicV1InternalServerError:
		response := &GetCurrentWeekLeaderboardRankingPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllTimeLeaderboardRankingPublicV2Short get all time leaderboard ranking data
Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingPublicV2Short(params *GetAllTimeLeaderboardRankingPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingPublicV2Params()
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
		ID:                 "GetAllTimeLeaderboardRankingPublicV2",
		Method:             "GET",
		PathPattern:        "/leaderboard/v2/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingPublicV2OK:
		response := &GetAllTimeLeaderboardRankingPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllTimeLeaderboardRankingPublicV2BadRequest:
		response := &GetAllTimeLeaderboardRankingPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingPublicV2Unauthorized:
		response := &GetAllTimeLeaderboardRankingPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingPublicV2Forbidden:
		response := &GetAllTimeLeaderboardRankingPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingPublicV2NotFound:
		response := &GetAllTimeLeaderboardRankingPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAllTimeLeaderboardRankingPublicV2InternalServerError:
		response := &GetAllTimeLeaderboardRankingPublicV2Response{}
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
