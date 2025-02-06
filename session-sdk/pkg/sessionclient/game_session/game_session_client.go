// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_session

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new game session API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for game session API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminQueryGameSessionsShort(params *AdminQueryGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsResponse, error)
	AdminQueryGameSessionsByAttributesShort(params *AdminQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsByAttributesResponse, error)
	AdminDeleteBulkGameSessionsShort(params *AdminDeleteBulkGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkGameSessionsResponse, error)
	AdminSetDSReadyShort(params *AdminSetDSReadyParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetDSReadyResponse, error)
	AdminUpdateDSInformationShort(params *AdminUpdateDSInformationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDSInformationResponse, error)
	AdminKickGameSessionMemberShort(params *AdminKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminKickGameSessionMemberResponse, error)
	AdminUpdateGameSessionMemberShort(params *AdminUpdateGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGameSessionMemberResponse, error)
	CreateGameSessionShort(params *CreateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGameSessionResponse, error)
	PublicQueryGameSessionsByAttributesShort(params *PublicQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionsByAttributesResponse, error)
	PublicSessionJoinCodeShort(params *PublicSessionJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSessionJoinCodeResponse, error)
	GetGameSessionByPodNameShort(params *GetGameSessionByPodNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionByPodNameResponse, error)
	GetGameSessionShort(params *GetGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionResponse, error)
	UpdateGameSessionShort(params *UpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionResponse, error)
	DeleteGameSessionShort(params *DeleteGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameSessionResponse, error)
	PatchUpdateGameSessionShort(params *PatchUpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*PatchUpdateGameSessionResponse, error)
	UpdateGameSessionBackfillTicketIDShort(params *UpdateGameSessionBackfillTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionBackfillTicketIDResponse, error)
	GameSessionGenerateCodeShort(params *GameSessionGenerateCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GameSessionGenerateCodeResponse, error)
	PublicRevokeGameSessionCodeShort(params *PublicRevokeGameSessionCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokeGameSessionCodeResponse, error)
	PublicGameSessionInviteShort(params *PublicGameSessionInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionInviteResponse, error)
	JoinGameSessionShort(params *JoinGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinGameSessionResponse, error)
	PublicPromoteGameSessionLeaderShort(params *PublicPromoteGameSessionLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromoteGameSessionLeaderResponse, error)
	LeaveGameSessionShort(params *LeaveGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*LeaveGameSessionResponse, error)
	PublicKickGameSessionMemberShort(params *PublicKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*PublicKickGameSessionMemberResponse, error)
	PublicGameSessionRejectShort(params *PublicGameSessionRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionRejectResponse, error)
	GetSessionServerSecretShort(params *GetSessionServerSecretParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionServerSecretResponse, error)
	AppendTeamGameSessionShort(params *AppendTeamGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AppendTeamGameSessionResponse, error)
	PublicGameSessionCancelShort(params *PublicGameSessionCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionCancelResponse, error)
	PublicQueryMyGameSessionsShort(params *PublicQueryMyGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyGameSessionsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminQueryGameSessionsShort get all game sessions.
Get all game sessions.
*/
func (a *Client) AdminQueryGameSessionsShort(params *AdminQueryGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryGameSessionsParams()
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
		ID:                 "adminQueryGameSessions",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryGameSessionsOK:
		response := &AdminQueryGameSessionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryGameSessionsBadRequest:
		response := &AdminQueryGameSessionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryGameSessionsUnauthorized:
		response := &AdminQueryGameSessionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryGameSessionsForbidden:
		response := &AdminQueryGameSessionsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryGameSessionsInternalServerError:
		response := &AdminQueryGameSessionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryGameSessionsByAttributesShort query game sessions by admin
Query game sessions by admin.

By default, API will return a list of available game sessions (joinability: open).
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

query parameter "availability" to filter sessions' availability:
all: return all sessions regardless it's full
full: only return active sessions
default behavior (unset or else): return only available sessions (not full)
*/
func (a *Client) AdminQueryGameSessionsByAttributesShort(params *AdminQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionsByAttributesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryGameSessionsByAttributesParams()
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
		ID:                 "adminQueryGameSessionsByAttributes",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryGameSessionsByAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryGameSessionsByAttributesOK:
		response := &AdminQueryGameSessionsByAttributesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryGameSessionsByAttributesBadRequest:
		response := &AdminQueryGameSessionsByAttributesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryGameSessionsByAttributesUnauthorized:
		response := &AdminQueryGameSessionsByAttributesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryGameSessionsByAttributesForbidden:
		response := &AdminQueryGameSessionsByAttributesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryGameSessionsByAttributesInternalServerError:
		response := &AdminQueryGameSessionsByAttributesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteBulkGameSessionsShort delete bulk game sessions.
Delete bulk game sessions.
*/
func (a *Client) AdminDeleteBulkGameSessionsShort(params *AdminDeleteBulkGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkGameSessionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteBulkGameSessionsParams()
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
		ID:                 "adminDeleteBulkGameSessions",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteBulkGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteBulkGameSessionsOK:
		response := &AdminDeleteBulkGameSessionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteBulkGameSessionsBadRequest:
		response := &AdminDeleteBulkGameSessionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteBulkGameSessionsUnauthorized:
		response := &AdminDeleteBulkGameSessionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteBulkGameSessionsForbidden:
		response := &AdminDeleteBulkGameSessionsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteBulkGameSessionsInternalServerError:
		response := &AdminDeleteBulkGameSessionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSetDSReadyShort admin set the ds ready to accept connection
When the session template has ds_manual_set_ready as true. Then the DS need to calls this end point in order to notify game client if the DS is ready to accept any game client connection.
*/
func (a *Client) AdminSetDSReadyShort(params *AdminSetDSReadyParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetDSReadyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSetDSReadyParams()
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
		ID:                 "adminSetDSReady",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSetDSReadyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSetDSReadyNoContent:
		response := &AdminSetDSReadyResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminSetDSReadyBadRequest:
		response := &AdminSetDSReadyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSetDSReadyUnauthorized:
		response := &AdminSetDSReadyResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSetDSReadyForbidden:
		response := &AdminSetDSReadyResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSetDSReadyInternalServerError:
		response := &AdminSetDSReadyResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateDSInformationShort update game session ds information for asynchronous process.
Update Game Session DS Information for Asynchronous Process
*/
func (a *Client) AdminUpdateDSInformationShort(params *AdminUpdateDSInformationParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateDSInformationResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateDSInformationParams()
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
		ID:                 "adminUpdateDSInformation",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateDSInformationReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateDSInformationNoContent:
		response := &AdminUpdateDSInformationResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateDSInformationBadRequest:
		response := &AdminUpdateDSInformationResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateDSInformationUnauthorized:
		response := &AdminUpdateDSInformationResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateDSInformationForbidden:
		response := &AdminUpdateDSInformationResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateDSInformationNotFound:
		response := &AdminUpdateDSInformationResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateDSInformationInternalServerError:
		response := &AdminUpdateDSInformationResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminKickGameSessionMemberShort kick member from a game session.
Kick member from a game session.
*/
func (a *Client) AdminKickGameSessionMemberShort(params *AdminKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminKickGameSessionMemberResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminKickGameSessionMemberParams()
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
		ID:                 "adminKickGameSessionMember",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminKickGameSessionMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminKickGameSessionMemberNoContent:
		response := &AdminKickGameSessionMemberResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminKickGameSessionMemberBadRequest:
		response := &AdminKickGameSessionMemberResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminKickGameSessionMemberUnauthorized:
		response := &AdminKickGameSessionMemberResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminKickGameSessionMemberForbidden:
		response := &AdminKickGameSessionMemberResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminKickGameSessionMemberNotFound:
		response := &AdminKickGameSessionMemberResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminKickGameSessionMemberInternalServerError:
		response := &AdminKickGameSessionMemberResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateGameSessionMemberShort update status of a game session member.
Update a game session member status.
*/
func (a *Client) AdminUpdateGameSessionMemberShort(params *AdminUpdateGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGameSessionMemberResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGameSessionMemberParams()
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
		ID:                 "adminUpdateGameSessionMember",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGameSessionMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGameSessionMemberOK:
		response := &AdminUpdateGameSessionMemberResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateGameSessionMemberBadRequest:
		response := &AdminUpdateGameSessionMemberResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateGameSessionMemberUnauthorized:
		response := &AdminUpdateGameSessionMemberResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateGameSessionMemberForbidden:
		response := &AdminUpdateGameSessionMemberResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateGameSessionMemberNotFound:
		response := &AdminUpdateGameSessionMemberResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateGameSessionMemberInternalServerError:
		response := &AdminUpdateGameSessionMemberResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateGameSessionShort create a game session.
Create a game session.
Session configuration "name" is mandatory, this API will refer following values from the session template if they're not provided in the request:
- type
- joinability
- autoJoin. If enabled (set to true), players provided in the request will automatically joined the initial game session creation. Game session will not send any invite and players dont need to act upon it.
- minPlayers
- maxPlayers
- inviteTimeout
- inactiveTimeout
- attributes
- dsSource
- tieTeamsSessionLifetime
- matchPool
- clientVersion
- deployment
- serverName
- textChat
- autoJoin
- requestedRegions
- preferredClaimKeys
- fallbackClaimKeys
- customURLGRPC

When the tieTeamsSessionLifetime is true, the lifetime of any partyId inside teams attribute will be tied to the game session.
Only applies when the teams partyId is a game session.

Session has 2 fields for user status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
User statuses:
1. INVITED: by default, to join a session (except session with OPEN joinability or if session configuration has "autoJoin" sets to True) a user will receive an invite. The invitee will have the chance to respond within "inviteTimeout" which you can configure through session configuration.
2. TIMEOUT: when a user is invited to a session, they will receive an invite. Unless "disableResendInvite" sets to True in the session configuration, the user will also receive invite reminder every 30s until they respond to the invite.
3. REJECTED: when a user rejects an invite. To rejoin an INVITE_ONLY session, they will need to be re-invited and accept the invite.
4. JOINED: there are few ways of a user to join a session, by invite, direct join (depends on session joinability) or join by code. upon invite, once a user accepts an invite, their status will be changed to JOINED.
5. LEFT: user can leave a session. in case of party, a user can only be in 1 party at a time. therefore when they decide to create or join another party, they will be automatically removed from their initial party and their status will be changed to LEFT.
6. KICKED: only party leader can kick a member.
7. DISCONNECTED: if user still have reserved seat in the session and they disconnect lobby websocket, their status in the session will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. the user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration.
8. CONNECTED: when a user reconnect their lobby websocket, their status will change from DISCONNECTED to CONNECTED, only if they previously JOINED session. if they were on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.
9. DROPPED: when "inactiveTimeout" is due and user never re-establish their websocket connection, we will drop them from the session.
10. TERMINATED: only applies to game session. If a game session (match) is ended, DS will end/delete the session and we will mark all remaining users' status to be TERMINATED.
11. CANCELLED: when a session joinability changes to CLOSED, any remaining invites will be canceled.

User is considered as active if they're present in the session, which their status either CONNECTED or JOINED.
User has a reserved seat in the session if their status either INVITED, JOINED, CONNECTED, DISCONNECTED. When user's' status change to other than these mentioned statuses, we will release the seat for other players to occupy.

Managing the relation between session and lobby websocket connection:
- Session relies on lobby to consider player's connection health to our backend. therefore a disruption to lobby websocket will be reflected in the user's status in all of their session(s).
- If user still have a reserved seat in the session and they disconnect lobby websocket, their status in session(s) will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. This "members.previousStatus" used to track user's previous status before they disconnect websocket, since we still reserve a seat for them, therefore this field will be empty again after they websocket.
- If the disconnected user is the leader of the session they're disconnected from, we will wait until "leaderElectionGracePeriod" is due, to promote the next oldest member as the new leader of the session. You can configure "leaderElectionGracePeriod" through session configuration.
- The user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration. If until "inactiveTimeout" is due and the user doesn't reconnect their websocket, they will be removed from session and their status will change to DROPPED. If the dropped user was the leader of the session, we will promote the next oldest member as leader.
- By default, we will update user's status to what it was before disconnect, when the user reconnects lobby websocket, unless "manualRejoin" sets to True in the session configuration. When "manualRejoin" is enabled, after lobby websocket reconnect, the game client will need to manually invoke join session again to rejoin the session.
- If the user was on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.

When the session type is a DS, a DS creation request will be sent if number of active players reaches session's minPlayers.
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

By default, DS requests are sent to DSMC, but if dsSource is set to "AMS":
- A DS will be requested from AMS instead of DSMC.
- The server will be chosen based on a set of claim keys, in order of preference, to match with fleets.
- The claim key list is built build from the preferredClaimKeys, fallbackClaimKeys, and clientVersion as follows:
[preferredClaimKeys.., clientVersion, fallbackClaimKeys...]
for session override can follow guideline in here https://docs.accelbyte.io/gaming-services/services/extend/override-ags-feature/getting-started-with-session-customization-server-dsm/
*/
func (a *Client) CreateGameSessionShort(params *CreateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGameSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateGameSessionParams()
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
		ID:                 "createGameSession",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesession",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateGameSessionCreated:
		response := &CreateGameSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateGameSessionBadRequest:
		response := &CreateGameSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateGameSessionUnauthorized:
		response := &CreateGameSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateGameSessionForbidden:
		response := &CreateGameSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateGameSessionInternalServerError:
		response := &CreateGameSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryGameSessionsByAttributesShort query game sessions
Query game sessions.

By default, API will return a list of available game sessions (joinability: open).
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

query parameter "availability" to filter sessions' availability:
all: return all sessions regardless it's full
full: only return active sessions
default behavior (unset or else): return only available sessions (not full)
*/
func (a *Client) PublicQueryGameSessionsByAttributesShort(params *PublicQueryGameSessionsByAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionsByAttributesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryGameSessionsByAttributesParams()
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
		ID:                 "publicQueryGameSessionsByAttributes",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryGameSessionsByAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryGameSessionsByAttributesOK:
		response := &PublicQueryGameSessionsByAttributesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicQueryGameSessionsByAttributesBadRequest:
		response := &PublicQueryGameSessionsByAttributesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryGameSessionsByAttributesUnauthorized:
		response := &PublicQueryGameSessionsByAttributesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryGameSessionsByAttributesForbidden:
		response := &PublicQueryGameSessionsByAttributesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryGameSessionsByAttributesInternalServerError:
		response := &PublicQueryGameSessionsByAttributesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSessionJoinCodeShort join a session by code.
Join a session by code. The user can join a session as long as the code is valid
*/
func (a *Client) PublicSessionJoinCodeShort(params *PublicSessionJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSessionJoinCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSessionJoinCodeParams()
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
		ID:                 "publicSessionJoinCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/join/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSessionJoinCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSessionJoinCodeOK:
		response := &PublicSessionJoinCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSessionJoinCodeBadRequest:
		response := &PublicSessionJoinCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSessionJoinCodeUnauthorized:
		response := &PublicSessionJoinCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSessionJoinCodeForbidden:
		response := &PublicSessionJoinCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSessionJoinCodeNotFound:
		response := &PublicSessionJoinCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSessionJoinCodeInternalServerError:
		response := &PublicSessionJoinCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameSessionByPodNameShort get game session detail.
Get game session detail by podname.
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.
*/
func (a *Client) GetGameSessionByPodNameShort(params *GetGameSessionByPodNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionByPodNameResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameSessionByPodNameParams()
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
		ID:                 "getGameSessionByPodName",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameSessionByPodNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameSessionByPodNameOK:
		response := &GetGameSessionByPodNameResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGameSessionByPodNameBadRequest:
		response := &GetGameSessionByPodNameResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameSessionByPodNameUnauthorized:
		response := &GetGameSessionByPodNameResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameSessionByPodNameForbidden:
		response := &GetGameSessionByPodNameResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameSessionByPodNameNotFound:
		response := &GetGameSessionByPodNameResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameSessionByPodNameInternalServerError:
		response := &GetGameSessionByPodNameResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameSessionShort get game session detail.
Get game session detail.
Session will only be accessible from active players in the session, and client with the permission, except the joinability is set to OPEN.
Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.
*/
func (a *Client) GetGameSessionShort(params *GetGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameSessionParams()
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
		ID:                 "getGameSession",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameSessionOK:
		response := &GetGameSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGameSessionBadRequest:
		response := &GetGameSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameSessionUnauthorized:
		response := &GetGameSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameSessionForbidden:
		response := &GetGameSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameSessionNotFound:
		response := &GetGameSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameSessionInternalServerError:
		response := &GetGameSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGameSessionShort update a game session.
Updates a game session, this endpoint will override stored gamesession data.
To update only specified fields, please use following endpoint:
method : PATCH
API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

To update DS attributes (clientVersion, deployment, requestedRegions) it will only be applied only as long as no DS has been requested, otherwise ignored.
*/
func (a *Client) UpdateGameSessionShort(params *UpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGameSessionParams()
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
		ID:                 "updateGameSession",
		Method:             "PUT",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGameSessionOK:
		response := &UpdateGameSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGameSessionBadRequest:
		response := &UpdateGameSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGameSessionUnauthorized:
		response := &UpdateGameSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGameSessionForbidden:
		response := &UpdateGameSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGameSessionNotFound:
		response := &UpdateGameSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGameSessionConflict:
		response := &UpdateGameSessionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGameSessionInternalServerError:
		response := &UpdateGameSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameSessionShort delete a game session.
Delete a game session.
*/
func (a *Client) DeleteGameSessionShort(params *DeleteGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameSessionParams()
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
		ID:                 "deleteGameSession",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameSessionNoContent:
		response := &DeleteGameSessionResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGameSessionUnauthorized:
		response := &DeleteGameSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameSessionForbidden:
		response := &DeleteGameSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameSessionInternalServerError:
		response := &DeleteGameSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PatchUpdateGameSessionShort patch update a game session.
Update specified fields from game session data.
*/
func (a *Client) PatchUpdateGameSessionShort(params *PatchUpdateGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*PatchUpdateGameSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPatchUpdateGameSessionParams()
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
		ID:                 "patchUpdateGameSession",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PatchUpdateGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PatchUpdateGameSessionOK:
		response := &PatchUpdateGameSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PatchUpdateGameSessionBadRequest:
		response := &PatchUpdateGameSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PatchUpdateGameSessionUnauthorized:
		response := &PatchUpdateGameSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PatchUpdateGameSessionForbidden:
		response := &PatchUpdateGameSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PatchUpdateGameSessionNotFound:
		response := &PatchUpdateGameSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PatchUpdateGameSessionConflict:
		response := &PatchUpdateGameSessionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PatchUpdateGameSessionInternalServerError:
		response := &PatchUpdateGameSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGameSessionBackfillTicketIDShort update game session backfill ticket id .
Update game session backfill ticket id. Will override game session backfill ticket based on given request parameter
*/
func (a *Client) UpdateGameSessionBackfillTicketIDShort(params *UpdateGameSessionBackfillTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGameSessionBackfillTicketIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGameSessionBackfillTicketIDParams()
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
		ID:                 "updateGameSessionBackfillTicketID",
		Method:             "PUT",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGameSessionBackfillTicketIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGameSessionBackfillTicketIDOK:
		response := &UpdateGameSessionBackfillTicketIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGameSessionBackfillTicketIDUnauthorized:
		response := &UpdateGameSessionBackfillTicketIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGameSessionBackfillTicketIDForbidden:
		response := &UpdateGameSessionBackfillTicketIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGameSessionBackfillTicketIDNotFound:
		response := &UpdateGameSessionBackfillTicketIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGameSessionBackfillTicketIDInternalServerError:
		response := &UpdateGameSessionBackfillTicketIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GameSessionGenerateCodeShort generate a game session code.
Generate a new code for the game session. Only leader can generate a code.
*/
func (a *Client) GameSessionGenerateCodeShort(params *GameSessionGenerateCodeParams, authInfo runtime.ClientAuthInfoWriter) (*GameSessionGenerateCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGameSessionGenerateCodeParams()
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
		ID:                 "gameSessionGenerateCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GameSessionGenerateCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GameSessionGenerateCodeOK:
		response := &GameSessionGenerateCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GameSessionGenerateCodeBadRequest:
		response := &GameSessionGenerateCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GameSessionGenerateCodeUnauthorized:
		response := &GameSessionGenerateCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GameSessionGenerateCodeForbidden:
		response := &GameSessionGenerateCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GameSessionGenerateCodeNotFound:
		response := &GameSessionGenerateCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GameSessionGenerateCodeInternalServerError:
		response := &GameSessionGenerateCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRevokeGameSessionCodeShort revoke game session code.
Revoke code of the game session. Only leader can revoke a code.
*/
func (a *Client) PublicRevokeGameSessionCodeShort(params *PublicRevokeGameSessionCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokeGameSessionCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRevokeGameSessionCodeParams()
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
		ID:                 "publicRevokeGameSessionCode",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRevokeGameSessionCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRevokeGameSessionCodeNoContent:
		response := &PublicRevokeGameSessionCodeResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicRevokeGameSessionCodeBadRequest:
		response := &PublicRevokeGameSessionCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRevokeGameSessionCodeUnauthorized:
		response := &PublicRevokeGameSessionCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRevokeGameSessionCodeForbidden:
		response := &PublicRevokeGameSessionCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRevokeGameSessionCodeNotFound:
		response := &PublicRevokeGameSessionCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRevokeGameSessionCodeInternalServerError:
		response := &PublicRevokeGameSessionCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGameSessionInviteShort invite a user to a game session.
Invite a user to a game session.
platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
supported platforms:
- STEAM
- XBOX
- PSN
Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the game session storage.
*/
func (a *Client) PublicGameSessionInviteShort(params *PublicGameSessionInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionInviteResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGameSessionInviteParams()
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
		ID:                 "publicGameSessionInvite",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGameSessionInviteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGameSessionInviteCreated:
		response := &PublicGameSessionInviteResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicGameSessionInviteNoContent:
		response := &PublicGameSessionInviteResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicGameSessionInviteBadRequest:
		response := &PublicGameSessionInviteResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionInviteUnauthorized:
		response := &PublicGameSessionInviteResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionInviteNotFound:
		response := &PublicGameSessionInviteResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionInviteInternalServerError:
		response := &PublicGameSessionInviteResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
JoinGameSessionShort join a game session.
Join a game session.
*/
func (a *Client) JoinGameSessionShort(params *JoinGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*JoinGameSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewJoinGameSessionParams()
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
		ID:                 "joinGameSession",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &JoinGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *JoinGameSessionOK:
		response := &JoinGameSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *JoinGameSessionBadRequest:
		response := &JoinGameSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGameSessionUnauthorized:
		response := &JoinGameSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGameSessionForbidden:
		response := &JoinGameSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGameSessionNotFound:
		response := &JoinGameSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *JoinGameSessionInternalServerError:
		response := &JoinGameSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPromoteGameSessionLeaderShort promote new game session leader.
Promote game session member to become the new game session leader.

This API requires the NAMESPACE:{namespace}:SESSION:GAME [UPDATE] permission.

This API can be operated by:
- User (game session member) who is the current leader of the game session
- Game Client
- Dedicated Server (DS)

This API will promote game session leader candidate with the following criteria:
- Leader candidate is a member of the game session
- Leader candidate has a "CONNECTED" or "JOINED" status
- If the leader candidate is the current leader, then no promotion process is carried out
*/
func (a *Client) PublicPromoteGameSessionLeaderShort(params *PublicPromoteGameSessionLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromoteGameSessionLeaderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPromoteGameSessionLeaderParams()
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
		ID:                 "publicPromoteGameSessionLeader",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPromoteGameSessionLeaderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPromoteGameSessionLeaderOK:
		response := &PublicPromoteGameSessionLeaderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicPromoteGameSessionLeaderBadRequest:
		response := &PublicPromoteGameSessionLeaderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPromoteGameSessionLeaderUnauthorized:
		response := &PublicPromoteGameSessionLeaderResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPromoteGameSessionLeaderForbidden:
		response := &PublicPromoteGameSessionLeaderResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPromoteGameSessionLeaderNotFound:
		response := &PublicPromoteGameSessionLeaderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPromoteGameSessionLeaderInternalServerError:
		response := &PublicPromoteGameSessionLeaderResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
LeaveGameSessionShort leave a game session.
Leave a game session.
*/
func (a *Client) LeaveGameSessionShort(params *LeaveGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*LeaveGameSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLeaveGameSessionParams()
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
		ID:                 "leaveGameSession",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LeaveGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LeaveGameSessionNoContent:
		response := &LeaveGameSessionResponse{}

		response.IsSuccess = true

		return response, nil
	case *LeaveGameSessionBadRequest:
		response := &LeaveGameSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGameSessionUnauthorized:
		response := &LeaveGameSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGameSessionForbidden:
		response := &LeaveGameSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGameSessionNotFound:
		response := &LeaveGameSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *LeaveGameSessionInternalServerError:
		response := &LeaveGameSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicKickGameSessionMemberShort kick member from a game session, only leader can kick member.
Kick member from a game session, only leader can kick member.
*/
func (a *Client) PublicKickGameSessionMemberShort(params *PublicKickGameSessionMemberParams, authInfo runtime.ClientAuthInfoWriter) (*PublicKickGameSessionMemberResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicKickGameSessionMemberParams()
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
		ID:                 "publicKickGameSessionMember",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicKickGameSessionMemberReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicKickGameSessionMemberNoContent:
		response := &PublicKickGameSessionMemberResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicKickGameSessionMemberBadRequest:
		response := &PublicKickGameSessionMemberResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicKickGameSessionMemberUnauthorized:
		response := &PublicKickGameSessionMemberResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicKickGameSessionMemberForbidden:
		response := &PublicKickGameSessionMemberResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicKickGameSessionMemberNotFound:
		response := &PublicKickGameSessionMemberResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicKickGameSessionMemberInternalServerError:
		response := &PublicKickGameSessionMemberResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGameSessionRejectShort reject a game session invitation.
Reject a game session invitation.
*/
func (a *Client) PublicGameSessionRejectShort(params *PublicGameSessionRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionRejectResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGameSessionRejectParams()
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
		ID:                 "publicGameSessionReject",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGameSessionRejectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGameSessionRejectNoContent:
		response := &PublicGameSessionRejectResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicGameSessionRejectBadRequest:
		response := &PublicGameSessionRejectResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionRejectUnauthorized:
		response := &PublicGameSessionRejectResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionRejectForbidden:
		response := &PublicGameSessionRejectResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionRejectNotFound:
		response := &PublicGameSessionRejectResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionRejectInternalServerError:
		response := &PublicGameSessionRejectResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionServerSecretShort get server secret.

Used by game Client to Get Secret
constraints
- EnableSecret = true
- Type = "DS"
- secret value will only be produced if enableSecret is true and type is DS

if enableSecret = false
- empty secret will be returned as 200 OK

Expected caller of this API
- Game Client to get server secret

In the Response you will get following:
- 200 OK { "secret":  }

If there is error:
- 400 Invalid path parameters
- 401 unauthorized
- 404 StatusNotFound
- 500 Internal server error
*/
func (a *Client) GetSessionServerSecretShort(params *GetSessionServerSecretParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionServerSecretResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionServerSecretParams()
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
		ID:                 "getSessionServerSecret",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionServerSecretReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSessionServerSecretOK:
		response := &GetSessionServerSecretResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSessionServerSecretBadRequest:
		response := &GetSessionServerSecretResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSessionServerSecretUnauthorized:
		response := &GetSessionServerSecretResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSessionServerSecretNotFound:
		response := &GetSessionServerSecretResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSessionServerSecretInternalServerError:
		response := &GetSessionServerSecretResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AppendTeamGameSessionShort append new member or team to session. please use patchupdategamesession instead
Append new member or team to session. Please use patchUpdateGameSession instead
*/
func (a *Client) AppendTeamGameSessionShort(params *AppendTeamGameSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AppendTeamGameSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAppendTeamGameSessionParams()
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
		ID:                 "appendTeamGameSession",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AppendTeamGameSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AppendTeamGameSessionOK:
		response := &AppendTeamGameSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AppendTeamGameSessionUnauthorized:
		response := &AppendTeamGameSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AppendTeamGameSessionForbidden:
		response := &AppendTeamGameSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AppendTeamGameSessionNotFound:
		response := &AppendTeamGameSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AppendTeamGameSessionInternalServerError:
		response := &AppendTeamGameSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGameSessionCancelShort cancel a game session invitation.
cancel a game session invitation.
*/
func (a *Client) PublicGameSessionCancelShort(params *PublicGameSessionCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGameSessionCancelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGameSessionCancelParams()
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
		ID:                 "publicGameSessionCancel",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGameSessionCancelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGameSessionCancelNoContent:
		response := &PublicGameSessionCancelResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicGameSessionCancelBadRequest:
		response := &PublicGameSessionCancelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionCancelUnauthorized:
		response := &PublicGameSessionCancelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionCancelForbidden:
		response := &PublicGameSessionCancelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionCancelNotFound:
		response := &PublicGameSessionCancelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGameSessionCancelInternalServerError:
		response := &PublicGameSessionCancelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryMyGameSessionsShort query user's game sessions
Query user's game sessions.
By default, API will return a list of user's active game sessions (INVITED,JOINED,CONNECTED).

Session service has several DSInformation status to track DS request to DS providers:
- NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
- REQUESTED: DS is being requested to DSMC.
- PREPARING: DS needs to call manual set ready for the game session
- AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
- FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
- DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
- DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
- ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
- UNKNOWN: if any unknown DS status is detected.
DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.
*/
func (a *Client) PublicQueryMyGameSessionsShort(params *PublicQueryMyGameSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyGameSessionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryMyGameSessionsParams()
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
		ID:                 "publicQueryMyGameSessions",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryMyGameSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryMyGameSessionsOK:
		response := &PublicQueryMyGameSessionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicQueryMyGameSessionsBadRequest:
		response := &PublicQueryMyGameSessionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryMyGameSessionsUnauthorized:
		response := &PublicQueryMyGameSessionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryMyGameSessionsInternalServerError:
		response := &PublicQueryMyGameSessionsResponse{}
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
