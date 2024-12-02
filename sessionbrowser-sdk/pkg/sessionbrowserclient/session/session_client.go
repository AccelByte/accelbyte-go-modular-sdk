// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new session API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for session API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminQuerySessionShort(params *AdminQuerySessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQuerySessionResponse, error)
	GetTotalActiveSessionShort(params *GetTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetTotalActiveSessionResponse, error)
	GetActiveCustomGameSessionsShort(params *GetActiveCustomGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveCustomGameSessionsResponse, error)
	GetActiveMatchmakingGameSessionsShort(params *GetActiveMatchmakingGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveMatchmakingGameSessionsResponse, error)
	AdminGetSessionShort(params *AdminGetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSessionResponse, error)
	AdminDeleteSessionShort(params *AdminDeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteSessionResponse, error)
	AdminSearchSessionsV2Short(params *AdminSearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchSessionsV2Response, error)
	GetSessionHistoryDetailedShort(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedResponse, error)
	UserQuerySessionShort(params *UserQuerySessionParams, authInfo runtime.ClientAuthInfoWriter) (*UserQuerySessionResponse, error)
	CreateSessionShort(params *CreateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSessionResponse, error)
	GetSessionByUserIDsShort(params *GetSessionByUserIDsParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionByUserIDsResponse, error)
	GetSessionShort(params *GetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionResponse, error)
	UpdateSessionShort(params *UpdateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSessionResponse, error)
	DeleteSessionShort(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionResponse, error)
	JoinSessionShort(params *JoinSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinSessionResponse, error)
	DeleteSessionLocalDSShort(params *DeleteSessionLocalDSParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionLocalDSResponse, error)
	AddPlayerToSessionShort(params *AddPlayerToSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AddPlayerToSessionResponse, error)
	RemovePlayerFromSessionShort(params *RemovePlayerFromSessionParams, authInfo runtime.ClientAuthInfoWriter) (*RemovePlayerFromSessionResponse, error)
	UpdateSettingsShort(params *UpdateSettingsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSettingsResponse, error)
	GetRecentPlayerShort(params *GetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRecentPlayerResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminQuerySessionShort query to available game session
Query to available game session
*/
func (a *Client) AdminQuerySessionShort(params *AdminQuerySessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQuerySessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQuerySessionParams()
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
		ID:                 "AdminQuerySession",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/admin/namespaces/{namespace}/gamesession",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQuerySessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQuerySessionOK:
		response := &AdminQuerySessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQuerySessionBadRequest:
		response := &AdminQuerySessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQuerySessionInternalServerError:
		response := &AdminQuerySessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTotalActiveSessionShort get all active session
Get all active session
*/
func (a *Client) GetTotalActiveSessionShort(params *GetTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetTotalActiveSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTotalActiveSessionParams()
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
		ID:                 "GetTotalActiveSession",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/admin/namespaces/{namespace}/gamesession/active/count",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTotalActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTotalActiveSessionOK:
		response := &GetTotalActiveSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTotalActiveSessionBadRequest:
		response := &GetTotalActiveSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetTotalActiveSessionInternalServerError:
		response := &GetTotalActiveSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetActiveCustomGameSessionsShort get all active session for custom game, this return only dedicated session type
Get all active session for custom game, this return only dedicated session type
*/
func (a *Client) GetActiveCustomGameSessionsShort(params *GetActiveCustomGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveCustomGameSessionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetActiveCustomGameSessionsParams()
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
		ID:                 "GetActiveCustomGameSessions",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/admin/namespaces/{namespace}/gamesession/active/custom-game",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetActiveCustomGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetActiveCustomGameSessionsOK:
		response := &GetActiveCustomGameSessionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetActiveCustomGameSessionsBadRequest:
		response := &GetActiveCustomGameSessionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetActiveCustomGameSessionsInternalServerError:
		response := &GetActiveCustomGameSessionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetActiveMatchmakingGameSessionsShort get all active session for matchmaking game, this return only dedicated session type
Get all active session for matchmaking game, this return only dedicated session type
*/
func (a *Client) GetActiveMatchmakingGameSessionsShort(params *GetActiveMatchmakingGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveMatchmakingGameSessionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetActiveMatchmakingGameSessionsParams()
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
		ID:                 "GetActiveMatchmakingGameSessions",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetActiveMatchmakingGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetActiveMatchmakingGameSessionsOK:
		response := &GetActiveMatchmakingGameSessionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetActiveMatchmakingGameSessionsBadRequest:
		response := &GetActiveMatchmakingGameSessionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetActiveMatchmakingGameSessionsInternalServerError:
		response := &GetActiveMatchmakingGameSessionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetSessionShort admin get specified session by session id
Get the session by session ID for admin user
*/
func (a *Client) AdminGetSessionShort(params *AdminGetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetSessionParams()
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
		ID:                 "AdminGetSession",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetSessionOK:
		response := &AdminGetSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetSessionNotFound:
		response := &AdminGetSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetSessionInternalServerError:
		response := &AdminGetSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteSessionShort admin delete specified session by session id
Admin delete the session by session ID
*/
func (a *Client) AdminDeleteSessionShort(params *AdminDeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteSessionParams()
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
		ID:                 "AdminDeleteSession",
		Method:             "DELETE",
		PathPattern:        "/sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteSessionOK:
		response := &AdminDeleteSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteSessionBadRequest:
		response := &AdminDeleteSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteSessionNotFound:
		response := &AdminDeleteSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteSessionInternalServerError:
		response := &AdminDeleteSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchSessionsV2Short search sessions
Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.
*/
func (a *Client) AdminSearchSessionsV2Short(params *AdminSearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchSessionsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSearchSessionsV2Params()
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
		ID:                 "AdminSearchSessionsV2",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/admin/namespaces/{namespace}/sessions/history/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSearchSessionsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSearchSessionsV2OK:
		response := &AdminSearchSessionsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSearchSessionsV2BadRequest:
		response := &AdminSearchSessionsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSearchSessionsV2Unauthorized:
		response := &AdminSearchSessionsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSearchSessionsV2Forbidden:
		response := &AdminSearchSessionsV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSearchSessionsV2InternalServerError:
		response := &AdminSearchSessionsV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionHistoryDetailedShort get session history detailed
Get session history detailed.

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) GetSessionHistoryDetailedShort(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionHistoryDetailedParams()
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
		ID:                 "GetSessionHistoryDetailed",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionHistoryDetailedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSessionHistoryDetailedOK:
		response := &GetSessionHistoryDetailedResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSessionHistoryDetailedBadRequest:
		response := &GetSessionHistoryDetailedResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSessionHistoryDetailedUnauthorized:
		response := &GetSessionHistoryDetailedResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSessionHistoryDetailedForbidden:
		response := &GetSessionHistoryDetailedResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSessionHistoryDetailedInternalServerError:
		response := &GetSessionHistoryDetailedResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserQuerySessionShort query to available game session
Query available game session
*/
func (a *Client) UserQuerySessionShort(params *UserQuerySessionParams, authInfo runtime.ClientAuthInfoWriter) (*UserQuerySessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserQuerySessionParams()
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
		ID:                 "UserQuerySession",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserQuerySessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserQuerySessionOK:
		response := &UserQuerySessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UserQuerySessionBadRequest:
		response := &UserQuerySessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UserQuerySessionInternalServerError:
		response := &UserQuerySessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSessionShort register a new game session
This end point intended to be called directly by P2P game client host or by DSMC
*/
func (a *Client) CreateSessionShort(params *CreateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSessionParams()
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
		ID:                 "CreateSession",
		Method:             "POST",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSessionOK:
		response := &CreateSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateSessionBadRequest:
		response := &CreateSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateSessionForbidden:
		response := &CreateSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateSessionConflict:
		response := &CreateSessionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateSessionInternalServerError:
		response := &CreateSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionByUserIDsShort query game sessions by comma separated user ids
Query game sessions by comma separated user ids
*/
func (a *Client) GetSessionByUserIDsShort(params *GetSessionByUserIDsParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionByUserIDsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionByUserIDsParams()
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
		ID:                 "GetSessionByUserIDs",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionByUserIDsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSessionByUserIDsOK:
		response := &GetSessionByUserIDsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSessionByUserIDsBadRequest:
		response := &GetSessionByUserIDsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSessionByUserIDsInternalServerError:
		response := &GetSessionByUserIDsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionShort get specified session by session id
Get the session by session ID
*/
func (a *Client) GetSessionShort(params *GetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionParams()
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
		ID:                 "GetSession",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSessionOK:
		response := &GetSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSessionNotFound:
		response := &GetSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSessionInternalServerError:
		response := &GetSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSessionShort update session
Update game session, used to update the current player
*/
func (a *Client) UpdateSessionShort(params *UpdateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSessionParams()
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
		ID:                 "UpdateSession",
		Method:             "PUT",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSessionOK:
		response := &UpdateSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSessionBadRequest:
		response := &UpdateSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSessionNotFound:
		response := &UpdateSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSessionInternalServerError:
		response := &UpdateSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSessionShort delete specified (p2p) session by session id
Delete the session (p2p) by session ID
*/
func (a *Client) DeleteSessionShort(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSessionParams()
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
		ID:                 "DeleteSession",
		Method:             "DELETE",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSessionOK:
		response := &DeleteSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteSessionBadRequest:
		response := &DeleteSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSessionNotFound:
		response := &DeleteSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSessionInternalServerError:
		response := &DeleteSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
JoinSessionShort join specified session by session id
Join the specified session by session ID. Possible the game required a password to join
*/
func (a *Client) JoinSessionShort(params *JoinSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewJoinSessionParams()
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
		ID:                 "JoinSession",
		Method:             "POST",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &JoinSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *JoinSessionOK:
		response := &JoinSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *JoinSessionBadRequest:
		response := &JoinSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *JoinSessionForbidden:
		response := &JoinSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *JoinSessionNotFound:
		response := &JoinSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *JoinSessionInternalServerError:
		response := &JoinSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSessionLocalDSShort only use for local ds entry, will error when calling non local ds entry
Only use for local DS entry, will error when calling non local DS entry
*/
func (a *Client) DeleteSessionLocalDSShort(params *DeleteSessionLocalDSParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionLocalDSResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSessionLocalDSParams()
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
		ID:                 "DeleteSessionLocalDS",
		Method:             "DELETE",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/localds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSessionLocalDSReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSessionLocalDSOK:
		response := &DeleteSessionLocalDSResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteSessionLocalDSBadRequest:
		response := &DeleteSessionLocalDSResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSessionLocalDSNotFound:
		response := &DeleteSessionLocalDSResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSessionLocalDSInternalServerError:
		response := &DeleteSessionLocalDSResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddPlayerToSessionShort add player to game session
Add player to game session
*/
func (a *Client) AddPlayerToSessionShort(params *AddPlayerToSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AddPlayerToSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddPlayerToSessionParams()
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
		ID:                 "AddPlayerToSession",
		Method:             "POST",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddPlayerToSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddPlayerToSessionOK:
		response := &AddPlayerToSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AddPlayerToSessionBadRequest:
		response := &AddPlayerToSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AddPlayerToSessionNotFound:
		response := &AddPlayerToSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AddPlayerToSessionInternalServerError:
		response := &AddPlayerToSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemovePlayerFromSessionShort remove player from game session
Remove player from game session
*/
func (a *Client) RemovePlayerFromSessionShort(params *RemovePlayerFromSessionParams, authInfo runtime.ClientAuthInfoWriter) (*RemovePlayerFromSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemovePlayerFromSessionParams()
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
		ID:                 "RemovePlayerFromSession",
		Method:             "DELETE",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemovePlayerFromSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RemovePlayerFromSessionOK:
		response := &RemovePlayerFromSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RemovePlayerFromSessionBadRequest:
		response := &RemovePlayerFromSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RemovePlayerFromSessionNotFound:
		response := &RemovePlayerFromSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RemovePlayerFromSessionInternalServerError:
		response := &RemovePlayerFromSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSettingsShort update settings
Update game session, used to update OtherSettings
*/
func (a *Client) UpdateSettingsShort(params *UpdateSettingsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSettingsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSettingsParams()
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
		ID:                 "UpdateSettings",
		Method:             "PUT",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSettingsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSettingsOK:
		response := &UpdateSettingsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSettingsBadRequest:
		response := &UpdateSettingsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSettingsNotFound:
		response := &UpdateSettingsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSettingsInternalServerError:
		response := &UpdateSettingsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRecentPlayerShort query recent players with given user id
Query recent player by user ID
*/
func (a *Client) GetRecentPlayerShort(params *GetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRecentPlayerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRecentPlayerParams()
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
		ID:                 "GetRecentPlayer",
		Method:             "GET",
		PathPattern:        "/sessionbrowser/namespaces/{namespace}/recentplayer/{userID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRecentPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRecentPlayerOK:
		response := &GetRecentPlayerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRecentPlayerBadRequest:
		response := &GetRecentPlayerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetRecentPlayerInternalServerError:
		response := &GetRecentPlayerResponse{}
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
