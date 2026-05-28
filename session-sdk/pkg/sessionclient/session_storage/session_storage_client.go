// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session_storage

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new session storage API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for session storage API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminReadPartySessionStorageShort(params *AdminReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadPartySessionStorageResponse, error)
	AdminReadSessionStorageShort(params *AdminReadSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadSessionStorageResponse, error)
	AdminDeleteUserSessionStorageShort(params *AdminDeleteUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserSessionStorageResponse, error)
	AdminReadUserSessionStorageShort(params *AdminReadUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadUserSessionStorageResponse, error)
	PublicReadPartySessionStorageShort(params *PublicReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReadPartySessionStorageResponse, error)
	PublicUpdateInsertPartySessionStorageShort(params *PublicUpdateInsertPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageResponse, error)
	PublicUpdateInsertPartySessionStorageReservedShort(params *PublicUpdateInsertPartySessionStorageReservedParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageReservedResponse, error)
	PublicUpdateInsertSessionStorageLeaderShort(params *PublicUpdateInsertSessionStorageLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderResponse, error)
	PublicUpdateInsertSessionStorageShort(params *PublicUpdateInsertSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageResponse, error)
	PublicReplaceSessionStorageLeaderV2Short(params *PublicReplaceSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageLeaderV2Response, error)
	PublicUpdateInsertSessionStorageLeaderV2Short(params *PublicUpdateInsertSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderV2Response, error)
	PublicReplaceSessionStorageUserV2Short(params *PublicReplaceSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageUserV2Response, error)
	PublicUpdateInsertSessionStorageUserV2Short(params *PublicUpdateInsertSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageUserV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminReadPartySessionStorageShort read party session storage.
Read Party Session Storage by partyID
Party Storage example:
```
{
"reserved": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) AdminReadPartySessionStorageShort(params *AdminReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadPartySessionStorageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReadPartySessionStorageParams()
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
		ID:                 "adminReadPartySessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/parties/{partyId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReadPartySessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminReadPartySessionStorageOK:
		response := &AdminReadPartySessionStorageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminReadPartySessionStorageBadRequest:
		response := &AdminReadPartySessionStorageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminReadPartySessionStorageUnauthorized:
		response := &AdminReadPartySessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminReadPartySessionStorageNotFound:
		response := &AdminReadPartySessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminReadPartySessionStorageInternalServerError:
		response := &AdminReadPartySessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminReadSessionStorageShort read session storage.

Read Session Storage by sessionID
Session Storage feature only available for Gamesession
*/
func (a *Client) AdminReadSessionStorageShort(params *AdminReadSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadSessionStorageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReadSessionStorageParams()
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
		ID:                 "adminReadSessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReadSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminReadSessionStorageOK:
		response := &AdminReadSessionStorageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminReadSessionStorageBadRequest:
		response := &AdminReadSessionStorageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminReadSessionStorageUnauthorized:
		response := &AdminReadSessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminReadSessionStorageNotFound:
		response := &AdminReadSessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminReadSessionStorageInternalServerError:
		response := &AdminReadSessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteUserSessionStorageShort delete session storage.

Delete Session Storage By sessionID
Session Storage feature only available for Gamesession
*/
func (a *Client) AdminDeleteUserSessionStorageShort(params *AdminDeleteUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserSessionStorageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteUserSessionStorageParams()
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
		ID:                 "adminDeleteUserSessionStorage",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteUserSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteUserSessionStorageNoContent:
		response := &AdminDeleteUserSessionStorageResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteUserSessionStorageBadRequest:
		response := &AdminDeleteUserSessionStorageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserSessionStorageUnauthorized:
		response := &AdminDeleteUserSessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserSessionStorageNotFound:
		response := &AdminDeleteUserSessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteUserSessionStorageInternalServerError:
		response := &AdminDeleteUserSessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminReadUserSessionStorageShort read session storage user.

Read Session Storage by sessionID and userID
Session Storage feature only available for Gamesession
*/
func (a *Client) AdminReadUserSessionStorageShort(params *AdminReadUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadUserSessionStorageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminReadUserSessionStorageParams()
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
		ID:                 "adminReadUserSessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminReadUserSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminReadUserSessionStorageOK:
		response := &AdminReadUserSessionStorageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminReadUserSessionStorageBadRequest:
		response := &AdminReadUserSessionStorageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminReadUserSessionStorageUnauthorized:
		response := &AdminReadUserSessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminReadUserSessionStorageNotFound:
		response := &AdminReadUserSessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminReadUserSessionStorageInternalServerError:
		response := &AdminReadUserSessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReadPartySessionStorageShort read party session storage.
Read Party Session Storage by partyID (with reserved and member).
Contains "reserved" when Update Insert Party Session Reserved Storage User.
Contains "member" when Update Insert Party Session Storage User.
Party Storage example:
```
{
"reserved": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
},
"member": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) PublicReadPartySessionStorageShort(params *PublicReadPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReadPartySessionStorageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReadPartySessionStorageParams()
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
		ID:                 "publicReadPartySessionStorage",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/storage",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReadPartySessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReadPartySessionStorageOK:
		response := &PublicReadPartySessionStorageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicReadPartySessionStorageBadRequest:
		response := &PublicReadPartySessionStorageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReadPartySessionStorageUnauthorized:
		response := &PublicReadPartySessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReadPartySessionStorageNotFound:
		response := &PublicReadPartySessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReadPartySessionStorageInternalServerError:
		response := &PublicReadPartySessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertPartySessionStorageShort update insert party session storage user.
Update Insert Party Session Storage User. User can only update or insert their own party storage (non-immutable).
can store generic json
example json can store :
```
{
"key": "value",
"number": 123,
}
```
The data will be stored on the "member" storage field
example stored data :
```
{
"member": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) PublicUpdateInsertPartySessionStorageShort(params *PublicUpdateInsertPartySessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertPartySessionStorageParams()
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
		ID:                 "publicUpdateInsertPartySessionStorage",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertPartySessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertPartySessionStorageOK:
		response := &PublicUpdateInsertPartySessionStorageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateInsertPartySessionStorageBadRequest:
		response := &PublicUpdateInsertPartySessionStorageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertPartySessionStorageUnauthorized:
		response := &PublicUpdateInsertPartySessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertPartySessionStorageForbidden:
		response := &PublicUpdateInsertPartySessionStorageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertPartySessionStorageNotFound:
		response := &PublicUpdateInsertPartySessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertPartySessionStorageInternalServerError:
		response := &PublicUpdateInsertPartySessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertPartySessionStorageReservedShort update insert party session reserved storage user.
**For Internal Use Only**
Update Insert Party Session Reserved Storage User. User can only update or insert their own reserve storage (non-immutable).
can store generic json
example json can store :
```
{
"key": "value",
"number": 123,
}
```
The data will be stored on the "reserved" storage field
example stored data :
```
{
"reserved": {
"userID1": {"key": "value"},
"userID2": {"key": "value"},
...
}
}
```
*/
func (a *Client) PublicUpdateInsertPartySessionStorageReservedShort(params *PublicUpdateInsertPartySessionStorageReservedParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertPartySessionStorageReservedResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertPartySessionStorageReservedParams()
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
		ID:                 "publicUpdateInsertPartySessionStorageReserved",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/parties/{partyId}/storage/users/{userId}/reserved",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertPartySessionStorageReservedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertPartySessionStorageReservedOK:
		response := &PublicUpdateInsertPartySessionStorageReservedResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateInsertPartySessionStorageReservedBadRequest:
		response := &PublicUpdateInsertPartySessionStorageReservedResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertPartySessionStorageReservedUnauthorized:
		response := &PublicUpdateInsertPartySessionStorageReservedResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertPartySessionStorageReservedForbidden:
		response := &PublicUpdateInsertPartySessionStorageReservedResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertPartySessionStorageReservedNotFound:
		response := &PublicUpdateInsertPartySessionStorageReservedResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertPartySessionStorageReservedInternalServerError:
		response := &PublicUpdateInsertPartySessionStorageReservedResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageLeaderShort update insert session storage leader.

Update Insert Session Storage Leader. Performs selective merge with existing leader storage data.

Leader (regular token): Only the session leader can update leader storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update leader storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Leader storage is separate from per-user storage and identified by session context, not userID.
Example patch:
{
"gameState": {"round": "2"},
"difficulty": null
}

Session Storage feature only available for Gamesession.

Alternative v2 endpoints available with explicit semantics:
- PATCH /v2/.../storage/leader - Selective merge with partial updates
- PUT /v2/.../storage/leader - Complete replacement of entire storage
*/
func (a *Client) PublicUpdateInsertSessionStorageLeaderShort(params *PublicUpdateInsertSessionStorageLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageLeaderParams()
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
		ID:                 "publicUpdateInsertSessionStorageLeader",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageLeaderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageLeaderOK:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateInsertSessionStorageLeaderBadRequest:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageLeaderUnauthorized:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageLeaderForbidden:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageLeaderNotFound:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageLeaderInternalServerError:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageShort update insert session storage user.

Update Insert Session Storage User. Performs selective merge with existing storage data.

User (regular token): Can only update own user session storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update any user's session storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Example patch:
{
"weapon": "sword",
"level": null
}

Session Storage feature only available for Gamesession.

Alternative v2 endpoints available with explicit semantics:
- PATCH /v2/.../storage/users/{userId} - Selective merge with partial updates
- PUT /v2/.../storage/users/{userId} - Complete replacement of entire storage
*/
func (a *Client) PublicUpdateInsertSessionStorageShort(params *PublicUpdateInsertSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageParams()
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
		ID:                 "publicUpdateInsertSessionStorage",
		Method:             "PATCH",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageOK:
		response := &PublicUpdateInsertSessionStorageResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateInsertSessionStorageBadRequest:
		response := &PublicUpdateInsertSessionStorageResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageUnauthorized:
		response := &PublicUpdateInsertSessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageForbidden:
		response := &PublicUpdateInsertSessionStorageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageNotFound:
		response := &PublicUpdateInsertSessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageInternalServerError:
		response := &PublicUpdateInsertSessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReplaceSessionStorageLeaderV2Short replace entire session storage leader.

Replace entire Session Storage Leader with the request body. No merging is performed.

Leader (regular token): Only the session leader can replace leader storage. Complete replacement.
Game Admin (client token): Can replace leader storage. Complete replacement.

PUT semantics: The request body completely replaces the existing storage, no partial updates.
Leader storage is separate from per-user storage and identified by session context, not userID.
Example request:
{
"gameState": {"round": "2"},
"difficulty": "hard"
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicReplaceSessionStorageLeaderV2Short(params *PublicReplaceSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageLeaderV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReplaceSessionStorageLeaderV2Params()
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
		ID:                 "publicReplaceSessionStorageLeaderV2",
		Method:             "PUT",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReplaceSessionStorageLeaderV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReplaceSessionStorageLeaderV2OK:
		response := &PublicReplaceSessionStorageLeaderV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicReplaceSessionStorageLeaderV2BadRequest:
		response := &PublicReplaceSessionStorageLeaderV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReplaceSessionStorageLeaderV2Unauthorized:
		response := &PublicReplaceSessionStorageLeaderV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReplaceSessionStorageLeaderV2Forbidden:
		response := &PublicReplaceSessionStorageLeaderV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReplaceSessionStorageLeaderV2NotFound:
		response := &PublicReplaceSessionStorageLeaderV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReplaceSessionStorageLeaderV2InternalServerError:
		response := &PublicReplaceSessionStorageLeaderV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageLeaderV2Short update partial session storage leader.

Update partial Session Storage Leader. Performs selective merge with existing leader storage data.

Leader (regular token): Only the session leader can update leader storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update leader storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Leader storage is separate from per-user storage and identified by session context, not userID.
Example patch:
{
"gameState": {"round": "2"},
"difficulty": null
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicUpdateInsertSessionStorageLeaderV2Short(params *PublicUpdateInsertSessionStorageLeaderV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageLeaderV2Params()
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
		ID:                 "publicUpdateInsertSessionStorageLeaderV2",
		Method:             "PATCH",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/leader",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageLeaderV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageLeaderV2OK:
		response := &PublicUpdateInsertSessionStorageLeaderV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateInsertSessionStorageLeaderV2BadRequest:
		response := &PublicUpdateInsertSessionStorageLeaderV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageLeaderV2Unauthorized:
		response := &PublicUpdateInsertSessionStorageLeaderV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageLeaderV2Forbidden:
		response := &PublicUpdateInsertSessionStorageLeaderV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageLeaderV2NotFound:
		response := &PublicUpdateInsertSessionStorageLeaderV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageLeaderV2InternalServerError:
		response := &PublicUpdateInsertSessionStorageLeaderV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReplaceSessionStorageUserV2Short replace entire session storage user.

Replace entire Session Storage User with the request body. No merging is performed.

User (regular token): Can only replace own user session storage. Complete replacement.
Game Admin (client token): Can replace any user's session storage. Complete replacement.

PUT semantics: The request body completely replaces the existing storage, no partial updates.
Example request:
{
"weapon": "sword",
"armor": "leather"
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicReplaceSessionStorageUserV2Short(params *PublicReplaceSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicReplaceSessionStorageUserV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReplaceSessionStorageUserV2Params()
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
		ID:                 "publicReplaceSessionStorageUserV2",
		Method:             "PUT",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReplaceSessionStorageUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReplaceSessionStorageUserV2OK:
		response := &PublicReplaceSessionStorageUserV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicReplaceSessionStorageUserV2BadRequest:
		response := &PublicReplaceSessionStorageUserV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReplaceSessionStorageUserV2Unauthorized:
		response := &PublicReplaceSessionStorageUserV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReplaceSessionStorageUserV2Forbidden:
		response := &PublicReplaceSessionStorageUserV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReplaceSessionStorageUserV2NotFound:
		response := &PublicReplaceSessionStorageUserV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReplaceSessionStorageUserV2InternalServerError:
		response := &PublicReplaceSessionStorageUserV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageUserV2Short update partial session storage user.

Update partial Session Storage User. Performs selective merge with existing storage data.

User (regular token): Can only update own user session storage. Merges patch with existing data, nil values delete keys.
Game Admin (client token): Can update any user's session storage. Merges patch with existing data, nil values delete keys.

Deep merge: Nested objects are recursively merged, not replaced. Absent keys in patch are preserved in storage.
Example patch:
{
"weapon": "sword",
"level": null
}

Session Storage feature only available for Gamesession.
*/
func (a *Client) PublicUpdateInsertSessionStorageUserV2Short(params *PublicUpdateInsertSessionStorageUserV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageUserV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUpdateInsertSessionStorageUserV2Params()
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
		ID:                 "publicUpdateInsertSessionStorageUserV2",
		Method:             "PATCH",
		PathPattern:        "/session/v2/public/namespaces/{namespace}/sessions/{sessionId}/storage/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUpdateInsertSessionStorageUserV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUpdateInsertSessionStorageUserV2OK:
		response := &PublicUpdateInsertSessionStorageUserV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicUpdateInsertSessionStorageUserV2BadRequest:
		response := &PublicUpdateInsertSessionStorageUserV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageUserV2Unauthorized:
		response := &PublicUpdateInsertSessionStorageUserV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageUserV2Forbidden:
		response := &PublicUpdateInsertSessionStorageUserV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageUserV2NotFound:
		response := &PublicUpdateInsertSessionStorageUserV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUpdateInsertSessionStorageUserV2InternalServerError:
		response := &PublicUpdateInsertSessionStorageUserV2Response{}
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
