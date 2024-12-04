// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new player API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for player API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetLobbyCCUShort(params *AdminGetLobbyCCUParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLobbyCCUResponse, error)
	AdminGetBulkPlayerBlockedPlayersV1Short(params *AdminGetBulkPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkPlayerBlockedPlayersV1Response, error)
	AdminGetAllPlayerSessionAttributeShort(params *AdminGetAllPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllPlayerSessionAttributeResponse, error)
	AdminSetPlayerSessionAttributeShort(params *AdminSetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetPlayerSessionAttributeResponse, error)
	AdminGetPlayerSessionAttributeShort(params *AdminGetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerSessionAttributeResponse, error)
	AdminGetPlayerBlockedPlayersV1Short(params *AdminGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedPlayersV1Response, error)
	AdminGetPlayerBlockedByPlayersV1Short(params *AdminGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedByPlayersV1Response, error)
	AdminBulkBlockPlayersV1Short(params *AdminBulkBlockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkBlockPlayersV1Response, error)
	AdminBulkUnblockPlayersV1Short(params *AdminBulkUnblockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUnblockPlayersV1Response, error)
	PublicPlayerBlockPlayersV1Short(params *PublicPlayerBlockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlayerBlockPlayersV1Response, error)
	PublicGetPlayerBlockedPlayersV1Short(params *PublicGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedPlayersV1Response, error)
	PublicGetPlayerBlockedByPlayersV1Short(params *PublicGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedByPlayersV1Response, error)
	PublicUnblockPlayerV1Short(params *PublicUnblockPlayerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUnblockPlayerV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetLobbyCCUShort admin get number of players currently connected to the lobby.
Get the number of players connected to the Lobby in the given namespace.
*/
func (a *Client) AdminGetLobbyCCUShort(params *AdminGetLobbyCCUParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetLobbyCCUResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetLobbyCCUParams()
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
		ID:                 "adminGetLobbyCCU",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/ccu",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetLobbyCCUReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetLobbyCCUOK:
		response := &AdminGetLobbyCCUResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetLobbyCCUBadRequest:
		response := &AdminGetLobbyCCUResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetLobbyCCUUnauthorized:
		response := &AdminGetLobbyCCUResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetLobbyCCUForbidden:
		response := &AdminGetLobbyCCUResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetLobbyCCUNotFound:
		response := &AdminGetLobbyCCUResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetLobbyCCUInternalServerError:
		response := &AdminGetLobbyCCUResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetBulkPlayerBlockedPlayersV1Short admin get blocked players by bulk user ids
Get blocked players data by bulk user ids in a namespace.
*/
func (a *Client) AdminGetBulkPlayerBlockedPlayersV1Short(params *AdminGetBulkPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetBulkPlayerBlockedPlayersV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetBulkPlayerBlockedPlayersV1Params()
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
		ID:                 "adminGetBulkPlayerBlockedPlayersV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetBulkPlayerBlockedPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetBulkPlayerBlockedPlayersV1OK:
		response := &AdminGetBulkPlayerBlockedPlayersV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetBulkPlayerBlockedPlayersV1BadRequest:
		response := &AdminGetBulkPlayerBlockedPlayersV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkPlayerBlockedPlayersV1Unauthorized:
		response := &AdminGetBulkPlayerBlockedPlayersV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkPlayerBlockedPlayersV1Forbidden:
		response := &AdminGetBulkPlayerBlockedPlayersV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkPlayerBlockedPlayersV1NotFound:
		response := &AdminGetBulkPlayerBlockedPlayersV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetBulkPlayerBlockedPlayersV1InternalServerError:
		response := &AdminGetBulkPlayerBlockedPlayersV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllPlayerSessionAttributeShort admin get all player's session attribute
Get all player's session attribute by user id in a namespace.
*/
func (a *Client) AdminGetAllPlayerSessionAttributeShort(params *AdminGetAllPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllPlayerSessionAttributeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllPlayerSessionAttributeParams()
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
		ID:                 "adminGetAllPlayerSessionAttribute",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllPlayerSessionAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllPlayerSessionAttributeOK:
		response := &AdminGetAllPlayerSessionAttributeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAllPlayerSessionAttributeUnauthorized:
		response := &AdminGetAllPlayerSessionAttributeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllPlayerSessionAttributeForbidden:
		response := &AdminGetAllPlayerSessionAttributeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllPlayerSessionAttributeInternalServerError:
		response := &AdminGetAllPlayerSessionAttributeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSetPlayerSessionAttributeShort admin set player's session attribute
Set player's session attribute by user id in a namespace.
*/
func (a *Client) AdminSetPlayerSessionAttributeShort(params *AdminSetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSetPlayerSessionAttributeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSetPlayerSessionAttributeParams()
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
		ID:                 "adminSetPlayerSessionAttribute",
		Method:             "PUT",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSetPlayerSessionAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSetPlayerSessionAttributeNoContent:
		response := &AdminSetPlayerSessionAttributeResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminSetPlayerSessionAttributeBadRequest:
		response := &AdminSetPlayerSessionAttributeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSetPlayerSessionAttributeUnauthorized:
		response := &AdminSetPlayerSessionAttributeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSetPlayerSessionAttributeForbidden:
		response := &AdminSetPlayerSessionAttributeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSetPlayerSessionAttributeNotFound:
		response := &AdminSetPlayerSessionAttributeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSetPlayerSessionAttributeInternalServerError:
		response := &AdminSetPlayerSessionAttributeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerSessionAttributeShort admin get player's session attribute
Get player's specific session attribute by user id in a namespace.
*/
func (a *Client) AdminGetPlayerSessionAttributeShort(params *AdminGetPlayerSessionAttributeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerSessionAttributeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerSessionAttributeParams()
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
		ID:                 "adminGetPlayerSessionAttribute",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerSessionAttributeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerSessionAttributeOK:
		response := &AdminGetPlayerSessionAttributeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlayerSessionAttributeBadRequest:
		response := &AdminGetPlayerSessionAttributeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerSessionAttributeUnauthorized:
		response := &AdminGetPlayerSessionAttributeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerSessionAttributeForbidden:
		response := &AdminGetPlayerSessionAttributeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerSessionAttributeNotFound:
		response := &AdminGetPlayerSessionAttributeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerSessionAttributeInternalServerError:
		response := &AdminGetPlayerSessionAttributeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerBlockedPlayersV1Short admin get blocked players by user id
Get blocked players data by user id in a namespace.
*/
func (a *Client) AdminGetPlayerBlockedPlayersV1Short(params *AdminGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedPlayersV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerBlockedPlayersV1Params()
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
		ID:                 "adminGetPlayerBlockedPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerBlockedPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerBlockedPlayersV1OK:
		response := &AdminGetPlayerBlockedPlayersV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlayerBlockedPlayersV1BadRequest:
		response := &AdminGetPlayerBlockedPlayersV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerBlockedPlayersV1Unauthorized:
		response := &AdminGetPlayerBlockedPlayersV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerBlockedPlayersV1Forbidden:
		response := &AdminGetPlayerBlockedPlayersV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerBlockedPlayersV1NotFound:
		response := &AdminGetPlayerBlockedPlayersV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerBlockedPlayersV1InternalServerError:
		response := &AdminGetPlayerBlockedPlayersV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerBlockedByPlayersV1Short get players who blocked this player by user id
Load get players who blocked this player in a namespace based on user id
*/
func (a *Client) AdminGetPlayerBlockedByPlayersV1Short(params *AdminGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerBlockedByPlayersV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerBlockedByPlayersV1Params()
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
		ID:                 "adminGetPlayerBlockedByPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerBlockedByPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerBlockedByPlayersV1OK:
		response := &AdminGetPlayerBlockedByPlayersV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlayerBlockedByPlayersV1BadRequest:
		response := &AdminGetPlayerBlockedByPlayersV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerBlockedByPlayersV1Unauthorized:
		response := &AdminGetPlayerBlockedByPlayersV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerBlockedByPlayersV1Forbidden:
		response := &AdminGetPlayerBlockedByPlayersV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerBlockedByPlayersV1NotFound:
		response := &AdminGetPlayerBlockedByPlayersV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerBlockedByPlayersV1InternalServerError:
		response := &AdminGetPlayerBlockedByPlayersV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkBlockPlayersV1Short admin bulk blocks player by list user id
Bulk block player in a namespace by list of user id
*/
func (a *Client) AdminBulkBlockPlayersV1Short(params *AdminBulkBlockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkBlockPlayersV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkBlockPlayersV1Params()
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
		ID:                 "adminBulkBlockPlayersV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkBlockPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkBlockPlayersV1NoContent:
		response := &AdminBulkBlockPlayersV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminBulkBlockPlayersV1BadRequest:
		response := &AdminBulkBlockPlayersV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkBlockPlayersV1Unauthorized:
		response := &AdminBulkBlockPlayersV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkBlockPlayersV1Forbidden:
		response := &AdminBulkBlockPlayersV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkBlockPlayersV1InternalServerError:
		response := &AdminBulkBlockPlayersV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkUnblockPlayersV1Short admin bulk unblock players by list user id
Bulk unblock player in a namespace by list of user id
*/
func (a *Client) AdminBulkUnblockPlayersV1Short(params *AdminBulkUnblockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUnblockPlayersV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkUnblockPlayersV1Params()
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
		ID:                 "adminBulkUnblockPlayersV1",
		Method:             "DELETE",
		PathPattern:        "/lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/unblock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkUnblockPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkUnblockPlayersV1NoContent:
		response := &AdminBulkUnblockPlayersV1Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminBulkUnblockPlayersV1BadRequest:
		response := &AdminBulkUnblockPlayersV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUnblockPlayersV1Unauthorized:
		response := &AdminBulkUnblockPlayersV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUnblockPlayersV1Forbidden:
		response := &AdminBulkUnblockPlayersV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUnblockPlayersV1InternalServerError:
		response := &AdminBulkUnblockPlayersV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicPlayerBlockPlayersV1Short block player by user id
Required valid user authorization


add blocked players in a namespace based on user id
*/
func (a *Client) PublicPlayerBlockPlayersV1Short(params *PublicPlayerBlockPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicPlayerBlockPlayersV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicPlayerBlockPlayersV1Params()
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
		ID:                 "publicPlayerBlockPlayersV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/public/player/namespaces/{namespace}/users/me/block",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicPlayerBlockPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicPlayerBlockPlayersV1Created:
		response := &PublicPlayerBlockPlayersV1Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicPlayerBlockPlayersV1BadRequest:
		response := &PublicPlayerBlockPlayersV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlayerBlockPlayersV1Unauthorized:
		response := &PublicPlayerBlockPlayersV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlayerBlockPlayersV1Forbidden:
		response := &PublicPlayerBlockPlayersV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlayerBlockPlayersV1NotFound:
		response := &PublicPlayerBlockPlayersV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicPlayerBlockPlayersV1InternalServerError:
		response := &PublicPlayerBlockPlayersV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPlayerBlockedPlayersV1Short get blocked players by user id
Required valid user authorization


load blocked players in a namespace based on user id

Action Code: 50101
*/
func (a *Client) PublicGetPlayerBlockedPlayersV1Short(params *PublicGetPlayerBlockedPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedPlayersV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerBlockedPlayersV1Params()
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
		ID:                 "publicGetPlayerBlockedPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/player/namespaces/{namespace}/users/me/blocked",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerBlockedPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerBlockedPlayersV1OK:
		response := &PublicGetPlayerBlockedPlayersV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPlayerBlockedPlayersV1BadRequest:
		response := &PublicGetPlayerBlockedPlayersV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerBlockedPlayersV1Unauthorized:
		response := &PublicGetPlayerBlockedPlayersV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerBlockedPlayersV1Forbidden:
		response := &PublicGetPlayerBlockedPlayersV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerBlockedPlayersV1NotFound:
		response := &PublicGetPlayerBlockedPlayersV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerBlockedPlayersV1InternalServerError:
		response := &PublicGetPlayerBlockedPlayersV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPlayerBlockedByPlayersV1Short get players who blocked this player by user id
Required valid user authorization


load get players who blocked this player in a namespace based on user id

Action Code: 50101
*/
func (a *Client) PublicGetPlayerBlockedByPlayersV1Short(params *PublicGetPlayerBlockedByPlayersV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerBlockedByPlayersV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerBlockedByPlayersV1Params()
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
		ID:                 "publicGetPlayerBlockedByPlayersV1",
		Method:             "GET",
		PathPattern:        "/lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerBlockedByPlayersV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerBlockedByPlayersV1OK:
		response := &PublicGetPlayerBlockedByPlayersV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPlayerBlockedByPlayersV1BadRequest:
		response := &PublicGetPlayerBlockedByPlayersV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerBlockedByPlayersV1Unauthorized:
		response := &PublicGetPlayerBlockedByPlayersV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerBlockedByPlayersV1Forbidden:
		response := &PublicGetPlayerBlockedByPlayersV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerBlockedByPlayersV1NotFound:
		response := &PublicGetPlayerBlockedByPlayersV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerBlockedByPlayersV1InternalServerError:
		response := &PublicGetPlayerBlockedByPlayersV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUnblockPlayerV1Short unblock player by user id
Required valid user authorization

unblock player in a namespace based on user id
*/
func (a *Client) PublicUnblockPlayerV1Short(params *PublicUnblockPlayerV1Params, authInfo runtime.ClientAuthInfoWriter) (*PublicUnblockPlayerV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUnblockPlayerV1Params()
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
		ID:                 "publicUnblockPlayerV1",
		Method:             "POST",
		PathPattern:        "/lobby/v1/public/player/namespaces/{namespace}/users/me/unblock",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUnblockPlayerV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUnblockPlayerV1NoContent:
		response := &PublicUnblockPlayerV1Response{}

		response.IsSuccess = true

		return response, nil
	case *PublicUnblockPlayerV1BadRequest:
		response := &PublicUnblockPlayerV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnblockPlayerV1Unauthorized:
		response := &PublicUnblockPlayerV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnblockPlayerV1Forbidden:
		response := &PublicUnblockPlayerV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnblockPlayerV1NotFound:
		response := &PublicUnblockPlayerV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicUnblockPlayerV1InternalServerError:
		response := &PublicUnblockPlayerV1Response{}
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
