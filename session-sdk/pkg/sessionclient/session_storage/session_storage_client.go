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
	AdminReadSessionStorageShort(params *AdminReadSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadSessionStorageResponse, error)
	AdminDeleteUserSessionStorageShort(params *AdminDeleteUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteUserSessionStorageResponse, error)
	AdminReadUserSessionStorageShort(params *AdminReadUserSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminReadUserSessionStorageResponse, error)
	PublicUpdateInsertSessionStorageLeaderShort(params *PublicUpdateInsertSessionStorageLeaderParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageLeaderResponse, error)
	PublicUpdateInsertSessionStorageShort(params *PublicUpdateInsertSessionStorageParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUpdateInsertSessionStorageResponse, error)

	SetTransport(transport runtime.ClientTransport)
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

		return response, nil
	case *AdminReadSessionStorageUnauthorized:
		response := &AdminReadSessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminReadSessionStorageNotFound:
		response := &AdminReadSessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminReadSessionStorageInternalServerError:
		response := &AdminReadSessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

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

		return response, nil
	case *AdminDeleteUserSessionStorageUnauthorized:
		response := &AdminDeleteUserSessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteUserSessionStorageNotFound:
		response := &AdminDeleteUserSessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeleteUserSessionStorageInternalServerError:
		response := &AdminDeleteUserSessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

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

		return response, nil
	case *AdminReadUserSessionStorageUnauthorized:
		response := &AdminReadUserSessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminReadUserSessionStorageNotFound:
		response := &AdminReadUserSessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminReadUserSessionStorageInternalServerError:
		response := &AdminReadUserSessionStorageResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageLeaderShort update insert session storage leader.

Update Insert Session Storage Leader. only Leader can update or insert user session storage data Leader.
can store generic json
example json can store :
{
"leader": {
"leader": 1
},
"data": 123
}
game Admin can update or insert session storage
Session Storage feature only available for Gamesession
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

		return response, nil
	case *PublicUpdateInsertSessionStorageLeaderUnauthorized:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicUpdateInsertSessionStorageLeaderForbidden:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicUpdateInsertSessionStorageLeaderNotFound:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicUpdateInsertSessionStorageLeaderInternalServerError:
		response := &PublicUpdateInsertSessionStorageLeaderResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUpdateInsertSessionStorageShort update insert session storage user.

Update Insert Session Storage User. user can only update or insert user session storage data itself.
can store generic json
example json can store :
{
"storage": {
"storage": 1
},
"data": 123
}
game Admin can update or insert session storage
Session Storage feature only available for Gamesession
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

		return response, nil
	case *PublicUpdateInsertSessionStorageUnauthorized:
		response := &PublicUpdateInsertSessionStorageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicUpdateInsertSessionStorageForbidden:
		response := &PublicUpdateInsertSessionStorageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicUpdateInsertSessionStorageNotFound:
		response := &PublicUpdateInsertSessionStorageResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicUpdateInsertSessionStorageInternalServerError:
		response := &PublicUpdateInsertSessionStorageResponse{}
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
