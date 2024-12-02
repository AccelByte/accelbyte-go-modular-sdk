// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard_data_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new leaderboard data v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for leaderboard data v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAllTimeLeaderboardRankingAdminV3Short(params *GetAllTimeLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV3Response, error)
	GetCurrentCycleLeaderboardRankingAdminV3Short(params *GetCurrentCycleLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingAdminV3Response, error)
	DeleteAllUserRankingByCycleIDAdminV3Short(params *DeleteAllUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserRankingByCycleIDAdminV3Response, error)
	DeleteUserRankingByCycleIDAdminV3Short(params *DeleteUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByCycleIDAdminV3Response, error)
	DeleteUserRankingByLeaderboardCodeAdminV3Short(params *DeleteUserRankingByLeaderboardCodeAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV3Response, error)
	GetUserRankingAdminV3Short(params *GetUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV3Response, error)
	DeleteUserRankingAdminV3Short(params *DeleteUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV3Response, error)
	DeleteUserRankingsAdminV3Short(params *DeleteUserRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV3Response, error)
	GetAllTimeLeaderboardRankingPublicV3Short(params *GetAllTimeLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV3Response, error)
	GetCurrentCycleLeaderboardRankingPublicV3Short(params *GetCurrentCycleLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingPublicV3Response, error)
	BulkGetUsersRankingPublicV3Short(params *BulkGetUsersRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUsersRankingPublicV3Response, error)
	GetUserRankingPublicV3Short(params *GetUserRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAllTimeLeaderboardRankingAdminV3Short get all time leaderboard ranking data


Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingAdminV3Short(params *GetAllTimeLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingAdminV3Params()
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
		ID:                 "GetAllTimeLeaderboardRankingAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingAdminV3OK:
		response := &GetAllTimeLeaderboardRankingAdminV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllTimeLeaderboardRankingAdminV3BadRequest:
		response := &GetAllTimeLeaderboardRankingAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllTimeLeaderboardRankingAdminV3Unauthorized:
		response := &GetAllTimeLeaderboardRankingAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllTimeLeaderboardRankingAdminV3Forbidden:
		response := &GetAllTimeLeaderboardRankingAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllTimeLeaderboardRankingAdminV3NotFound:
		response := &GetAllTimeLeaderboardRankingAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllTimeLeaderboardRankingAdminV3InternalServerError:
		response := &GetAllTimeLeaderboardRankingAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentCycleLeaderboardRankingAdminV3Short get cycle leaderboard ranking data


Get rankings in cycle leaderboard.
*/
func (a *Client) GetCurrentCycleLeaderboardRankingAdminV3Short(params *GetCurrentCycleLeaderboardRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentCycleLeaderboardRankingAdminV3Params()
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
		ID:                 "GetCurrentCycleLeaderboardRankingAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentCycleLeaderboardRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentCycleLeaderboardRankingAdminV3OK:
		response := &GetCurrentCycleLeaderboardRankingAdminV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentCycleLeaderboardRankingAdminV3BadRequest:
		response := &GetCurrentCycleLeaderboardRankingAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetCurrentCycleLeaderboardRankingAdminV3Unauthorized:
		response := &GetCurrentCycleLeaderboardRankingAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetCurrentCycleLeaderboardRankingAdminV3Forbidden:
		response := &GetCurrentCycleLeaderboardRankingAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetCurrentCycleLeaderboardRankingAdminV3NotFound:
		response := &GetCurrentCycleLeaderboardRankingAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetCurrentCycleLeaderboardRankingAdminV3InternalServerError:
		response := &GetCurrentCycleLeaderboardRankingAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAllUserRankingByCycleIDAdminV3Short delete all user ranking by cycle id


This endpoint will delete user ranking by cycleId




Warning : This will permanently delete your data. Make sure to back up anything important before continuing.
*/
func (a *Client) DeleteAllUserRankingByCycleIDAdminV3Short(params *DeleteAllUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteAllUserRankingByCycleIDAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAllUserRankingByCycleIDAdminV3Params()
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
		ID:                 "deleteAllUserRankingByCycleIdAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAllUserRankingByCycleIDAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAllUserRankingByCycleIDAdminV3NoContent:
		response := &DeleteAllUserRankingByCycleIDAdminV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAllUserRankingByCycleIDAdminV3Unauthorized:
		response := &DeleteAllUserRankingByCycleIDAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserRankingByCycleIDAdminV3Forbidden:
		response := &DeleteAllUserRankingByCycleIDAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserRankingByCycleIDAdminV3NotFound:
		response := &DeleteAllUserRankingByCycleIDAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteAllUserRankingByCycleIDAdminV3InternalServerError:
		response := &DeleteAllUserRankingByCycleIDAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingByCycleIDAdminV3Short delete user ranking by cycle id
Delete user ranking by cycle id

Remove entry with provided cycleId and userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingByCycleIDAdminV3Short(params *DeleteUserRankingByCycleIDAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByCycleIDAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingByCycleIDAdminV3Params()
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
		ID:                 "deleteUserRankingByCycleIdAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingByCycleIDAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingByCycleIDAdminV3NoContent:
		response := &DeleteUserRankingByCycleIDAdminV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserRankingByCycleIDAdminV3Unauthorized:
		response := &DeleteUserRankingByCycleIDAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingByCycleIDAdminV3Forbidden:
		response := &DeleteUserRankingByCycleIDAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingByCycleIDAdminV3NotFound:
		response := &DeleteUserRankingByCycleIDAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingByCycleIDAdminV3InternalServerError:
		response := &DeleteUserRankingByCycleIDAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingByLeaderboardCodeAdminV3Short delete all user ranking by leaderboard code


This endpoint will delete user ranking by leaderboard code




Warning : This will permanently delete your data. Make sure to back up anything important before continuing.
*/
func (a *Client) DeleteUserRankingByLeaderboardCodeAdminV3Short(params *DeleteUserRankingByLeaderboardCodeAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingByLeaderboardCodeAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingByLeaderboardCodeAdminV3Params()
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
		ID:                 "deleteUserRankingByLeaderboardCodeAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingByLeaderboardCodeAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingByLeaderboardCodeAdminV3NoContent:
		response := &DeleteUserRankingByLeaderboardCodeAdminV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserRankingByLeaderboardCodeAdminV3Unauthorized:
		response := &DeleteUserRankingByLeaderboardCodeAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingByLeaderboardCodeAdminV3Forbidden:
		response := &DeleteUserRankingByLeaderboardCodeAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingByLeaderboardCodeAdminV3NotFound:
		response := &DeleteUserRankingByLeaderboardCodeAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingByLeaderboardCodeAdminV3InternalServerError:
		response := &DeleteUserRankingByLeaderboardCodeAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserRankingAdminV3Short get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingAdminV3Short(params *GetUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingAdminV3Params()
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
		ID:                 "getUserRankingAdminV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingAdminV3OK:
		response := &GetUserRankingAdminV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserRankingAdminV3Unauthorized:
		response := &GetUserRankingAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetUserRankingAdminV3Forbidden:
		response := &GetUserRankingAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetUserRankingAdminV3NotFound:
		response := &GetUserRankingAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetUserRankingAdminV3InternalServerError:
		response := &GetUserRankingAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingAdminV3Short delete user ranking
Delete user ranking

Remove entry with provided userId from leaderboard.
If leaderboard with given leaderboard code not found, it will return http status not found (404).
If the leaderboard is found and no entry found in it, it will still return success (204)
*/
func (a *Client) DeleteUserRankingAdminV3Short(params *DeleteUserRankingAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingAdminV3Params()
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
		ID:                 "deleteUserRankingAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingAdminV3NoContent:
		response := &DeleteUserRankingAdminV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserRankingAdminV3Unauthorized:
		response := &DeleteUserRankingAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingAdminV3Forbidden:
		response := &DeleteUserRankingAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingAdminV3NotFound:
		response := &DeleteUserRankingAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingAdminV3InternalServerError:
		response := &DeleteUserRankingAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserRankingsAdminV3Short delete user ranking across leaderboard(s)
Delete user ranking across leaderboard

Remove entry with provided userId from leaderboard.
*/
func (a *Client) DeleteUserRankingsAdminV3Short(params *DeleteUserRankingsAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserRankingsAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserRankingsAdminV3Params()
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
		ID:                 "deleteUserRankingsAdminV3",
		Method:             "DELETE",
		PathPattern:        "/leaderboard/v3/admin/namespaces/{namespace}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserRankingsAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserRankingsAdminV3NoContent:
		response := &DeleteUserRankingsAdminV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserRankingsAdminV3Unauthorized:
		response := &DeleteUserRankingsAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingsAdminV3Forbidden:
		response := &DeleteUserRankingsAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserRankingsAdminV3InternalServerError:
		response := &DeleteUserRankingsAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllTimeLeaderboardRankingPublicV3Short get all time leaderboard ranking data


Get rankings in an all time leaderboard.
*/
func (a *Client) GetAllTimeLeaderboardRankingPublicV3Short(params *GetAllTimeLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetAllTimeLeaderboardRankingPublicV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllTimeLeaderboardRankingPublicV3Params()
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
		ID:                 "GetAllTimeLeaderboardRankingPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/alltime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllTimeLeaderboardRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllTimeLeaderboardRankingPublicV3OK:
		response := &GetAllTimeLeaderboardRankingPublicV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllTimeLeaderboardRankingPublicV3BadRequest:
		response := &GetAllTimeLeaderboardRankingPublicV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllTimeLeaderboardRankingPublicV3NotFound:
		response := &GetAllTimeLeaderboardRankingPublicV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllTimeLeaderboardRankingPublicV3InternalServerError:
		response := &GetAllTimeLeaderboardRankingPublicV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCurrentCycleLeaderboardRankingPublicV3Short get cycle leaderboard ranking data


Get rankings in cycle leaderboard.
*/
func (a *Client) GetCurrentCycleLeaderboardRankingPublicV3Short(params *GetCurrentCycleLeaderboardRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCurrentCycleLeaderboardRankingPublicV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCurrentCycleLeaderboardRankingPublicV3Params()
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
		ID:                 "GetCurrentCycleLeaderboardRankingPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/cycles/{cycleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCurrentCycleLeaderboardRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCurrentCycleLeaderboardRankingPublicV3OK:
		response := &GetCurrentCycleLeaderboardRankingPublicV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetCurrentCycleLeaderboardRankingPublicV3BadRequest:
		response := &GetCurrentCycleLeaderboardRankingPublicV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetCurrentCycleLeaderboardRankingPublicV3NotFound:
		response := &GetCurrentCycleLeaderboardRankingPublicV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetCurrentCycleLeaderboardRankingPublicV3InternalServerError:
		response := &GetCurrentCycleLeaderboardRankingPublicV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetUsersRankingPublicV3Short bulk get users ranking


Bulk get users ranking in leaderboard, max allowed 20 userIDs at a time.
*/
func (a *Client) BulkGetUsersRankingPublicV3Short(params *BulkGetUsersRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*BulkGetUsersRankingPublicV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetUsersRankingPublicV3Params()
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
		ID:                 "bulkGetUsersRankingPublicV3",
		Method:             "POST",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetUsersRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetUsersRankingPublicV3OK:
		response := &BulkGetUsersRankingPublicV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetUsersRankingPublicV3BadRequest:
		response := &BulkGetUsersRankingPublicV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetUsersRankingPublicV3Unauthorized:
		response := &BulkGetUsersRankingPublicV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetUsersRankingPublicV3Forbidden:
		response := &BulkGetUsersRankingPublicV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetUsersRankingPublicV3NotFound:
		response := &BulkGetUsersRankingPublicV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetUsersRankingPublicV3InternalServerError:
		response := &BulkGetUsersRankingPublicV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserRankingPublicV3Short get user ranking


Get user ranking in leaderboard
*/
func (a *Client) GetUserRankingPublicV3Short(params *GetUserRankingPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetUserRankingPublicV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserRankingPublicV3Params()
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
		ID:                 "getUserRankingPublicV3",
		Method:             "GET",
		PathPattern:        "/leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserRankingPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserRankingPublicV3OK:
		response := &GetUserRankingPublicV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserRankingPublicV3Unauthorized:
		response := &GetUserRankingPublicV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetUserRankingPublicV3Forbidden:
		response := &GetUserRankingPublicV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetUserRankingPublicV3NotFound:
		response := &GetUserRankingPublicV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetUserRankingPublicV3InternalServerError:
		response := &GetUserRankingPublicV3Response{}
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
