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
	AdminQuerySessionShort(params *AdminQuerySessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQuerySessionOK, error)
	GetTotalActiveSessionShort(params *GetTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetTotalActiveSessionOK, error)
	GetActiveCustomGameSessionsShort(params *GetActiveCustomGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveCustomGameSessionsOK, error)
	GetActiveMatchmakingGameSessionsShort(params *GetActiveMatchmakingGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveMatchmakingGameSessionsOK, error)
	AdminGetSessionShort(params *AdminGetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSessionOK, error)
	AdminDeleteSessionShort(params *AdminDeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteSessionOK, error)
	AdminSearchSessionsV2Short(params *AdminSearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchSessionsV2OK, error)
	GetSessionHistoryDetailedShort(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedOK, error)
	UserQuerySessionShort(params *UserQuerySessionParams, authInfo runtime.ClientAuthInfoWriter) (*UserQuerySessionOK, error)
	CreateSessionShort(params *CreateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSessionOK, error)
	GetSessionByUserIDsShort(params *GetSessionByUserIDsParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionByUserIDsOK, error)
	GetSessionShort(params *GetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionOK, error)
	UpdateSessionShort(params *UpdateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSessionOK, error)
	DeleteSessionShort(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionOK, error)
	JoinSessionShort(params *JoinSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinSessionOK, error)
	DeleteSessionLocalDSShort(params *DeleteSessionLocalDSParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionLocalDSOK, error)
	AddPlayerToSessionShort(params *AddPlayerToSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AddPlayerToSessionOK, error)
	RemovePlayerFromSessionShort(params *RemovePlayerFromSessionParams, authInfo runtime.ClientAuthInfoWriter) (*RemovePlayerFromSessionOK, error)
	UpdateSettingsShort(params *UpdateSettingsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSettingsOK, error)
	GetRecentPlayerShort(params *GetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRecentPlayerOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminQuerySessionShort query to available game session
Query to available game session
*/
func (a *Client) AdminQuerySessionShort(params *AdminQuerySessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQuerySessionOK, error) {
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
		return v, nil
	case *AdminQuerySessionBadRequest:
		return nil, v
	case *AdminQuerySessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTotalActiveSessionShort get all active session
Get all active session
*/
func (a *Client) GetTotalActiveSessionShort(params *GetTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetTotalActiveSessionOK, error) {
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
		return v, nil
	case *GetTotalActiveSessionBadRequest:
		return nil, v
	case *GetTotalActiveSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetActiveCustomGameSessionsShort get all active session for custom game, this return only dedicated session type
Get all active session for custom game, this return only dedicated session type
*/
func (a *Client) GetActiveCustomGameSessionsShort(params *GetActiveCustomGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveCustomGameSessionsOK, error) {
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
		return v, nil
	case *GetActiveCustomGameSessionsBadRequest:
		return nil, v
	case *GetActiveCustomGameSessionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetActiveMatchmakingGameSessionsShort get all active session for matchmaking game, this return only dedicated session type
Get all active session for matchmaking game, this return only dedicated session type
*/
func (a *Client) GetActiveMatchmakingGameSessionsShort(params *GetActiveMatchmakingGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*GetActiveMatchmakingGameSessionsOK, error) {
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
		return v, nil
	case *GetActiveMatchmakingGameSessionsBadRequest:
		return nil, v
	case *GetActiveMatchmakingGameSessionsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetSessionShort admin get specified session by session id
Get the session by session ID for admin user
*/
func (a *Client) AdminGetSessionShort(params *AdminGetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSessionOK, error) {
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
		return v, nil
	case *AdminGetSessionNotFound:
		return nil, v
	case *AdminGetSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteSessionShort admin delete specified session by session id
Admin delete the session by session ID
*/
func (a *Client) AdminDeleteSessionShort(params *AdminDeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteSessionOK, error) {
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
		return v, nil
	case *AdminDeleteSessionBadRequest:
		return nil, v
	case *AdminDeleteSessionNotFound:
		return nil, v
	case *AdminDeleteSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSearchSessionsV2Short search sessions
Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.
*/
func (a *Client) AdminSearchSessionsV2Short(params *AdminSearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminSearchSessionsV2OK, error) {
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
		return v, nil
	case *AdminSearchSessionsV2BadRequest:
		return nil, v
	case *AdminSearchSessionsV2Unauthorized:
		return nil, v
	case *AdminSearchSessionsV2Forbidden:
		return nil, v
	case *AdminSearchSessionsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionHistoryDetailedShort get session history detailed
Get session history detailed.

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) GetSessionHistoryDetailedShort(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedOK, error) {
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
		return v, nil
	case *GetSessionHistoryDetailedBadRequest:
		return nil, v
	case *GetSessionHistoryDetailedUnauthorized:
		return nil, v
	case *GetSessionHistoryDetailedForbidden:
		return nil, v
	case *GetSessionHistoryDetailedInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UserQuerySessionShort query to available game session
Query available game session
*/
func (a *Client) UserQuerySessionShort(params *UserQuerySessionParams, authInfo runtime.ClientAuthInfoWriter) (*UserQuerySessionOK, error) {
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
		return v, nil
	case *UserQuerySessionBadRequest:
		return nil, v
	case *UserQuerySessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateSessionShort register a new game session
This end point intended to be called directly by P2P game client host or by DSMC
*/
func (a *Client) CreateSessionShort(params *CreateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSessionOK, error) {
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
		return v, nil
	case *CreateSessionBadRequest:
		return nil, v
	case *CreateSessionForbidden:
		return nil, v
	case *CreateSessionConflict:
		return nil, v
	case *CreateSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionByUserIDsShort query game sessions by comma separated user ids
Query game sessions by comma separated user ids
*/
func (a *Client) GetSessionByUserIDsShort(params *GetSessionByUserIDsParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionByUserIDsOK, error) {
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
		return v, nil
	case *GetSessionByUserIDsBadRequest:
		return nil, v
	case *GetSessionByUserIDsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionShort get specified session by session id
Get the session by session ID
*/
func (a *Client) GetSessionShort(params *GetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionOK, error) {
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
		return v, nil
	case *GetSessionNotFound:
		return nil, v
	case *GetSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSessionShort update session
Update game session, used to update the current player
*/
func (a *Client) UpdateSessionShort(params *UpdateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSessionOK, error) {
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
		return v, nil
	case *UpdateSessionBadRequest:
		return nil, v
	case *UpdateSessionNotFound:
		return nil, v
	case *UpdateSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSessionShort delete specified (p2p) session by session id
Delete the session (p2p) by session ID
*/
func (a *Client) DeleteSessionShort(params *DeleteSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionOK, error) {
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
		return v, nil
	case *DeleteSessionBadRequest:
		return nil, v
	case *DeleteSessionNotFound:
		return nil, v
	case *DeleteSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
JoinSessionShort join specified session by session id
Join the specified session by session ID. Possible the game required a password to join
*/
func (a *Client) JoinSessionShort(params *JoinSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinSessionOK, error) {
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
		return v, nil
	case *JoinSessionBadRequest:
		return nil, v
	case *JoinSessionForbidden:
		return nil, v
	case *JoinSessionNotFound:
		return nil, v
	case *JoinSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSessionLocalDSShort only use for local ds entry, will error when calling non local ds entry
Only use for local DS entry, will error when calling non local DS entry
*/
func (a *Client) DeleteSessionLocalDSShort(params *DeleteSessionLocalDSParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionLocalDSOK, error) {
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
		return v, nil
	case *DeleteSessionLocalDSBadRequest:
		return nil, v
	case *DeleteSessionLocalDSNotFound:
		return nil, v
	case *DeleteSessionLocalDSInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddPlayerToSessionShort add player to game session
Add player to game session
*/
func (a *Client) AddPlayerToSessionShort(params *AddPlayerToSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AddPlayerToSessionOK, error) {
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
		return v, nil
	case *AddPlayerToSessionBadRequest:
		return nil, v
	case *AddPlayerToSessionNotFound:
		return nil, v
	case *AddPlayerToSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemovePlayerFromSessionShort remove player from game session
Remove player from game session
*/
func (a *Client) RemovePlayerFromSessionShort(params *RemovePlayerFromSessionParams, authInfo runtime.ClientAuthInfoWriter) (*RemovePlayerFromSessionOK, error) {
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
		return v, nil
	case *RemovePlayerFromSessionBadRequest:
		return nil, v
	case *RemovePlayerFromSessionNotFound:
		return nil, v
	case *RemovePlayerFromSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSettingsShort update settings
Update game session, used to update OtherSettings
*/
func (a *Client) UpdateSettingsShort(params *UpdateSettingsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSettingsOK, error) {
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
		return v, nil
	case *UpdateSettingsBadRequest:
		return nil, v
	case *UpdateSettingsNotFound:
		return nil, v
	case *UpdateSettingsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRecentPlayerShort query recent players with given user id
Query recent player by user ID
*/
func (a *Client) GetRecentPlayerShort(params *GetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*GetRecentPlayerOK, error) {
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
		return v, nil
	case *GetRecentPlayerBadRequest:
		return nil, v
	case *GetRecentPlayerInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
