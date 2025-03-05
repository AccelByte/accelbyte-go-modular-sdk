// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package party

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new party API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for party API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminQueryPartiesShort(params *AdminQueryPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartiesResponse, error)
	AdminDeleteBulkPartiesShort(params *AdminDeleteBulkPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkPartiesResponse, error)
	AdminSyncNativeSessionShort(params *AdminSyncNativeSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncNativeSessionResponse, error)
	PublicPartyJoinCodeShort(params *PublicPartyJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinCodeResponse, error)
	PublicGetPartyShort(params *PublicGetPartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyResponse, error)
	PublicUpdatePartyShort(params *PublicUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyResponse, error)
	PublicPatchUpdatePartyShort(params *PublicPatchUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPatchUpdatePartyResponse, error)
	PublicGeneratePartyCodeShort(params *PublicGeneratePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePartyCodeResponse, error)
	PublicRevokePartyCodeShort(params *PublicRevokePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokePartyCodeResponse, error)
	PublicPartyInviteShort(params *PublicPartyInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyInviteResponse, error)
	PublicPromotePartyLeaderShort(params *PublicPromotePartyLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromotePartyLeaderResponse, error)
	PublicPartyJoinShort(params *PublicPartyJoinParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinResponse, error)
	PublicPartyLeaveShort(params *PublicPartyLeaveParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyLeaveResponse, error)
	PublicPartyRejectShort(params *PublicPartyRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyRejectResponse, error)
	PublicPartyCancelShort(params *PublicPartyCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyCancelResponse, error)
	PublicPartyKickShort(params *PublicPartyKickParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyKickResponse, error)
	PublicCreatePartyShort(params *PublicCreatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreatePartyResponse, error)
	PublicQueryMyPartiesShort(params *PublicQueryMyPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyPartiesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminQueryPartiesShort query parties.
Query parties.
*/
func (a *Client) AdminQueryPartiesShort(params *AdminQueryPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartiesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryPartiesParams()
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
		ID:                 "adminQueryParties",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryPartiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryPartiesOK:
		response := &AdminQueryPartiesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryPartiesBadRequest:
		response := &AdminQueryPartiesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryPartiesUnauthorized:
		response := &AdminQueryPartiesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryPartiesInternalServerError:
		response := &AdminQueryPartiesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteBulkPartiesShort delete bulk parties.
Delete bulk parties.
*/
func (a *Client) AdminDeleteBulkPartiesShort(params *AdminDeleteBulkPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteBulkPartiesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteBulkPartiesParams()
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
		ID:                 "adminDeleteBulkParties",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/parties/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteBulkPartiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteBulkPartiesOK:
		response := &AdminDeleteBulkPartiesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteBulkPartiesBadRequest:
		response := &AdminDeleteBulkPartiesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteBulkPartiesUnauthorized:
		response := &AdminDeleteBulkPartiesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteBulkPartiesForbidden:
		response := &AdminDeleteBulkPartiesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteBulkPartiesInternalServerError:
		response := &AdminDeleteBulkPartiesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncNativeSessionShort trigger user's active party session to native platform.
Trigger user's active party session to native platform.
*/
func (a *Client) AdminSyncNativeSessionShort(params *AdminSyncNativeSessionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncNativeSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncNativeSessionParams()
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
		ID:                 "adminSyncNativeSession",
		Method:             "POST",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/users/{userId}/native-sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncNativeSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncNativeSessionOK:
		response := &AdminSyncNativeSessionResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminSyncNativeSessionBadRequest:
		response := &AdminSyncNativeSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncNativeSessionUnauthorized:
		response := &AdminSyncNativeSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncNativeSessionForbidden:
		response := &AdminSyncNativeSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncNativeSessionInternalServerError:
		response := &AdminSyncNativeSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyJoinCodeShort join a party by code.
Join a party by code. The user can join a party as long as the code is valid
*/
func (a *Client) PublicPartyJoinCodeShort(params *PublicPartyJoinCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyJoinCodeParams()
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
		ID:                 "publicPartyJoinCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/users/me/join/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyJoinCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyJoinCodeOK:
		response := &PublicPartyJoinCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicPartyJoinCodeBadRequest:
		response := &PublicPartyJoinCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyJoinCodeUnauthorized:
		response := &PublicPartyJoinCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyJoinCodeForbidden:
		response := &PublicPartyJoinCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyJoinCodeNotFound:
		response := &PublicPartyJoinCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyJoinCodeInternalServerError:
		response := &PublicPartyJoinCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPartyShort get party details.
Get party details.
*/
func (a *Client) PublicGetPartyShort(params *PublicGetPartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPartyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPartyParams()
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
		ID:                 "publicGetParty",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPartyOK:
		response := &PublicGetPartyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPartyUnauthorized:
		response := &PublicGetPartyResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPartyNotFound:
		response := &PublicGetPartyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPartyInternalServerError:
		response := &PublicGetPartyResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdatePartyShort update a party.
Updates party blob, this endpoint will override stored party data.

Join type can only be updated by the party's leader.
To update only specified fields, please use following endpoint:
method : PATCH
API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
- ttlHours is how long the session will active, max value is 168 hours
*/
func (a *Client) PublicUpdatePartyShort(params *PublicUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdatePartyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdatePartyParams()
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
		ID:                 "publicUpdateParty",
		Method:             "PUT",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdatePartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdatePartyOK:
		response := &PublicUpdatePartyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdatePartyBadRequest:
		response := &PublicUpdatePartyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyUnauthorized:
		response := &PublicUpdatePartyResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyForbidden:
		response := &PublicUpdatePartyResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyNotFound:
		response := &PublicUpdatePartyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyConflict:
		response := &PublicUpdatePartyResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdatePartyInternalServerError:
		response := &PublicUpdatePartyResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPatchUpdatePartyShort patch update a party.
Update specified fields from party data. Note: Join type can only be updated by the party's leader.

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.
*/
func (a *Client) PublicPatchUpdatePartyShort(params *PublicPatchUpdatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPatchUpdatePartyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPatchUpdatePartyParams()
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
		ID:                 "publicPatchUpdateParty",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPatchUpdatePartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPatchUpdatePartyOK:
		response := &PublicPatchUpdatePartyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicPatchUpdatePartyBadRequest:
		response := &PublicPatchUpdatePartyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPatchUpdatePartyUnauthorized:
		response := &PublicPatchUpdatePartyResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPatchUpdatePartyForbidden:
		response := &PublicPatchUpdatePartyResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPatchUpdatePartyNotFound:
		response := &PublicPatchUpdatePartyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPatchUpdatePartyConflict:
		response := &PublicPatchUpdatePartyResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPatchUpdatePartyInternalServerError:
		response := &PublicPatchUpdatePartyResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGeneratePartyCodeShort generate party code.
Generate a new code for the party. Only leader can generate a code.
*/
func (a *Client) PublicGeneratePartyCodeShort(params *PublicGeneratePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGeneratePartyCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGeneratePartyCodeParams()
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
		ID:                 "publicGeneratePartyCode",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGeneratePartyCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGeneratePartyCodeOK:
		response := &PublicGeneratePartyCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGeneratePartyCodeBadRequest:
		response := &PublicGeneratePartyCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratePartyCodeUnauthorized:
		response := &PublicGeneratePartyCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratePartyCodeForbidden:
		response := &PublicGeneratePartyCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratePartyCodeNotFound:
		response := &PublicGeneratePartyCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGeneratePartyCodeInternalServerError:
		response := &PublicGeneratePartyCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRevokePartyCodeShort revoke party code.
Revoke code of the party. Only leader can revoke a code.
*/
func (a *Client) PublicRevokePartyCodeShort(params *PublicRevokePartyCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRevokePartyCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRevokePartyCodeParams()
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
		ID:                 "publicRevokePartyCode",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRevokePartyCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRevokePartyCodeNoContent:
		response := &PublicRevokePartyCodeResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicRevokePartyCodeBadRequest:
		response := &PublicRevokePartyCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRevokePartyCodeUnauthorized:
		response := &PublicRevokePartyCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRevokePartyCodeForbidden:
		response := &PublicRevokePartyCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRevokePartyCodeNotFound:
		response := &PublicRevokePartyCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRevokePartyCodeInternalServerError:
		response := &PublicRevokePartyCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyInviteShort invite a user to a party.
Invite a user to a party.
platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
supported platforms:
- STEAM
- XBOX
- PSN
Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the party storage.
*/
func (a *Client) PublicPartyInviteShort(params *PublicPartyInviteParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyInviteResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyInviteParams()
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
		ID:                 "publicPartyInvite",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/invite",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyInviteReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyInviteCreated:
		response := &PublicPartyInviteResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicPartyInviteNoContent:
		response := &PublicPartyInviteResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicPartyInviteBadRequest:
		response := &PublicPartyInviteResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyInviteUnauthorized:
		response := &PublicPartyInviteResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyInviteNotFound:
		response := &PublicPartyInviteResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyInviteInternalServerError:
		response := &PublicPartyInviteResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPromotePartyLeaderShort promote new party leader.
Promotes a party member to be a party leader. Only leader can promote a new leader.
*/
func (a *Client) PublicPromotePartyLeaderShort(params *PublicPromotePartyLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPromotePartyLeaderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPromotePartyLeaderParams()
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
		ID:                 "publicPromotePartyLeader",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPromotePartyLeaderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPromotePartyLeaderOK:
		response := &PublicPromotePartyLeaderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicPromotePartyLeaderBadRequest:
		response := &PublicPromotePartyLeaderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPromotePartyLeaderUnauthorized:
		response := &PublicPromotePartyLeaderResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPromotePartyLeaderForbidden:
		response := &PublicPromotePartyLeaderResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPromotePartyLeaderNotFound:
		response := &PublicPromotePartyLeaderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPromotePartyLeaderInternalServerError:
		response := &PublicPromotePartyLeaderResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyJoinShort join a party.
Join a party. The user can either join a party they have been invited to, or any party with an "open" joinable setting.
*/
func (a *Client) PublicPartyJoinShort(params *PublicPartyJoinParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyJoinResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyJoinParams()
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
		ID:                 "publicPartyJoin",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/join",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyJoinReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyJoinOK:
		response := &PublicPartyJoinResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicPartyJoinBadRequest:
		response := &PublicPartyJoinResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyJoinUnauthorized:
		response := &PublicPartyJoinResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyJoinForbidden:
		response := &PublicPartyJoinResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyJoinNotFound:
		response := &PublicPartyJoinResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyJoinInternalServerError:
		response := &PublicPartyJoinResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyLeaveShort leave a party.
Leave a party
*/
func (a *Client) PublicPartyLeaveShort(params *PublicPartyLeaveParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyLeaveResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyLeaveParams()
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
		ID:                 "publicPartyLeave",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/leave",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyLeaveReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyLeaveNoContent:
		response := &PublicPartyLeaveResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicPartyLeaveUnauthorized:
		response := &PublicPartyLeaveResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyLeaveNotFound:
		response := &PublicPartyLeaveResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyLeaveInternalServerError:
		response := &PublicPartyLeaveResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyRejectShort reject a party invitation.
Reject a party invitation.
*/
func (a *Client) PublicPartyRejectShort(params *PublicPartyRejectParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyRejectResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyRejectParams()
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
		ID:                 "publicPartyReject",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/me/reject",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyRejectReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyRejectNoContent:
		response := &PublicPartyRejectResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicPartyRejectBadRequest:
		response := &PublicPartyRejectResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyRejectUnauthorized:
		response := &PublicPartyRejectResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyRejectForbidden:
		response := &PublicPartyRejectResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyRejectNotFound:
		response := &PublicPartyRejectResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyRejectInternalServerError:
		response := &PublicPartyRejectResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyCancelShort cancel a party invitation.
Cancel a party invitation.
*/
func (a *Client) PublicPartyCancelShort(params *PublicPartyCancelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyCancelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyCancelParams()
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
		ID:                 "publicPartyCancel",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyCancelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyCancelNoContent:
		response := &PublicPartyCancelResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicPartyCancelBadRequest:
		response := &PublicPartyCancelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyCancelUnauthorized:
		response := &PublicPartyCancelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyCancelForbidden:
		response := &PublicPartyCancelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyCancelNotFound:
		response := &PublicPartyCancelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyCancelInternalServerError:
		response := &PublicPartyCancelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPartyKickShort kick a player from a party.
Kick a player from a party. Requires invoker to be the party leader.
*/
func (a *Client) PublicPartyKickShort(params *PublicPartyKickParams, authInfo runtime.ClientAuthInfoWriter) (*PublicPartyKickResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPartyKickParams()
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
		ID:                 "publicPartyKick",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/users/{userId}/kick",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPartyKickReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPartyKickOK:
		response := &PublicPartyKickResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicPartyKickBadRequest:
		response := &PublicPartyKickResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyKickUnauthorized:
		response := &PublicPartyKickResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyKickForbidden:
		response := &PublicPartyKickResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyKickNotFound:
		response := &PublicPartyKickResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPartyKickInternalServerError:
		response := &PublicPartyKickResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicCreatePartyShort create a party.
A join code will be autogenerated if the party is joinable.

A user can be in 1 party at a time, therefore the requester will be removed from their previous party (if any) and automatically added/joined into this newly created party as a leader.

Session configuration name is optional.
Default configuration name if empty:
{
"name": "default",
"type": "NONE",
"joinability": "OPEN",
"minPlayers": 1,
"maxPlayers": 8,
"inviteTimeout": 60,
"inactiveTimeout": 60,
"textChat": false
}
When session configuration "name" is provided, we will refer to the template if these fields are empty:
- textChat
- minPlayers
- maxPlayers
- inviteTimeout
- inactiveTimeout
- type
- joinability
- configurationName
- attributes

Supported platforms:
1. STEAM
2. PSN
3. XBOX

Reserved attributes key:
1. preference: used to store preference of the leader and it is non-replaceable to keep the initial behavior of
the session regardless the leader changes.
2. NATIVESESSIONTITLE: used for session sync, to define name of session displayed on PlayStation system UI.

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
- ttlHours is how long the session will active, max value is 168 hours
*/
func (a *Client) PublicCreatePartyShort(params *PublicCreatePartyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicCreatePartyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicCreatePartyParams()
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
		ID:                 "publicCreateParty",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/party",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicCreatePartyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicCreatePartyOK:
		response := &PublicCreatePartyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicCreatePartyBadRequest:
		response := &PublicCreatePartyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreatePartyUnauthorized:
		response := &PublicCreatePartyResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicCreatePartyInternalServerError:
		response := &PublicCreatePartyResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryMyPartiesShort query my parties. require valid jwt.
Query user's parties. By default, API will return a list of user's active parties.
*/
func (a *Client) PublicQueryMyPartiesShort(params *PublicQueryMyPartiesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryMyPartiesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryMyPartiesParams()
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
		ID:                 "publicQueryMyParties",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryMyPartiesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryMyPartiesOK:
		response := &PublicQueryMyPartiesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicQueryMyPartiesBadRequest:
		response := &PublicQueryMyPartiesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryMyPartiesUnauthorized:
		response := &PublicQueryMyPartiesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryMyPartiesInternalServerError:
		response := &PublicQueryMyPartiesResponse{}
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
