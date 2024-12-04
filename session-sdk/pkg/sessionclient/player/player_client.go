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
	AdminQueryPlayerAttributesShort(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesResponse, error)
	AdminGetPlayerAttributesShort(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesResponse, error)
	PublicGetBulkPlayerCurrentPlatformShort(params *PublicGetBulkPlayerCurrentPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBulkPlayerCurrentPlatformResponse, error)
	PublicGetPlayerAttributesShort(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesResponse, error)
	PublicStorePlayerAttributesShort(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesResponse, error)
	PublicDeletePlayerAttributesShort(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminQueryPlayerAttributesShort query player attributes.
Admin get attributes of players.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) AdminQueryPlayerAttributesShort(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryPlayerAttributesParams()
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
		ID:                 "adminQueryPlayerAttributes",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/users/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryPlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryPlayerAttributesOK:
		response := &AdminQueryPlayerAttributesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryPlayerAttributesBadRequest:
		response := &AdminQueryPlayerAttributesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryPlayerAttributesUnauthorized:
		response := &AdminQueryPlayerAttributesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryPlayerAttributesNotFound:
		response := &AdminQueryPlayerAttributesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminQueryPlayerAttributesInternalServerError:
		response := &AdminQueryPlayerAttributesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetPlayerAttributesShort get player attributes.
Admin get attributes of a player.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) AdminGetPlayerAttributesShort(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlayerAttributesParams()
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
		ID:                 "adminGetPlayerAttributes",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/users/{userId}/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlayerAttributesOK:
		response := &AdminGetPlayerAttributesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlayerAttributesBadRequest:
		response := &AdminGetPlayerAttributesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerAttributesUnauthorized:
		response := &AdminGetPlayerAttributesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerAttributesNotFound:
		response := &AdminGetPlayerAttributesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlayerAttributesInternalServerError:
		response := &AdminGetPlayerAttributesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetBulkPlayerCurrentPlatformShort get player current platform in bulk.
Get bulk players current platform.
*/
func (a *Client) PublicGetBulkPlayerCurrentPlatformShort(params *PublicGetBulkPlayerCurrentPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBulkPlayerCurrentPlatformResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetBulkPlayerCurrentPlatformParams()
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
		ID:                 "publicGetBulkPlayerCurrentPlatform",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/bulk/platform",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetBulkPlayerCurrentPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetBulkPlayerCurrentPlatformOK:
		response := &PublicGetBulkPlayerCurrentPlatformResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetBulkPlayerCurrentPlatformBadRequest:
		response := &PublicGetBulkPlayerCurrentPlatformResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetBulkPlayerCurrentPlatformUnauthorized:
		response := &PublicGetBulkPlayerCurrentPlatformResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetBulkPlayerCurrentPlatformNotFound:
		response := &PublicGetBulkPlayerCurrentPlatformResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetBulkPlayerCurrentPlatformInternalServerError:
		response := &PublicGetBulkPlayerCurrentPlatformResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPlayerAttributesShort get player attributes.
Get player attributes.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) PublicGetPlayerAttributesShort(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerAttributesParams()
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
		ID:                 "publicGetPlayerAttributes",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerAttributesOK:
		response := &PublicGetPlayerAttributesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPlayerAttributesBadRequest:
		response := &PublicGetPlayerAttributesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerAttributesUnauthorized:
		response := &PublicGetPlayerAttributesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerAttributesNotFound:
		response := &PublicGetPlayerAttributesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerAttributesInternalServerError:
		response := &PublicGetPlayerAttributesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicStorePlayerAttributesShort store player attributes.
This API behaves to upsert player's attributes.

Field descriptions:
- userID : user who owns the attributes.
- crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
- platforms : list of the player's 3rd party platform account information.
- name : platform name. supported platforms: STEAM, XBOX, PSN
- userID : platform userID
- data : other data that the player wants to store.
- PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
- currentPlatform : latest user game platform.
- roles : user role for matchmaking role base support.
*/
func (a *Client) PublicStorePlayerAttributesShort(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicStorePlayerAttributesParams()
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
		ID:                 "publicStorePlayerAttributes",
		Method:             "POST",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicStorePlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicStorePlayerAttributesOK:
		response := &PublicStorePlayerAttributesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicStorePlayerAttributesBadRequest:
		response := &PublicStorePlayerAttributesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicStorePlayerAttributesUnauthorized:
		response := &PublicStorePlayerAttributesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicStorePlayerAttributesInternalServerError:
		response := &PublicStorePlayerAttributesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeletePlayerAttributesShort remove player attributes.
Reset player attributes.
*/
func (a *Client) PublicDeletePlayerAttributesShort(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicDeletePlayerAttributesParams()
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
		ID:                 "publicDeletePlayerAttributes",
		Method:             "DELETE",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/users/me/attributes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicDeletePlayerAttributesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicDeletePlayerAttributesNoContent:
		response := &PublicDeletePlayerAttributesResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicDeletePlayerAttributesBadRequest:
		response := &PublicDeletePlayerAttributesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlayerAttributesUnauthorized:
		response := &PublicDeletePlayerAttributesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlayerAttributesNotFound:
		response := &PublicDeletePlayerAttributesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicDeletePlayerAttributesInternalServerError:
		response := &PublicDeletePlayerAttributesResponse{}
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
