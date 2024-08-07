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
	AdminQueryPlayerAttributesShort(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesOK, error)
	AdminGetPlayerAttributesShort(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesOK, error)
	PublicGetBulkPlayerCurrentPlatformShort(params *PublicGetBulkPlayerCurrentPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBulkPlayerCurrentPlatformOK, error)
	PublicGetPlayerAttributesShort(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesOK, error)
	PublicStorePlayerAttributesShort(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesOK, error)
	PublicDeletePlayerAttributesShort(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesNoContent, error)

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
func (a *Client) AdminQueryPlayerAttributesShort(params *AdminQueryPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPlayerAttributesOK, error) {
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
		return v, nil
	case *AdminQueryPlayerAttributesBadRequest:
		return nil, v
	case *AdminQueryPlayerAttributesUnauthorized:
		return nil, v
	case *AdminQueryPlayerAttributesNotFound:
		return nil, v
	case *AdminQueryPlayerAttributesInternalServerError:
		return nil, v

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
func (a *Client) AdminGetPlayerAttributesShort(params *AdminGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlayerAttributesOK, error) {
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
		return v, nil
	case *AdminGetPlayerAttributesBadRequest:
		return nil, v
	case *AdminGetPlayerAttributesUnauthorized:
		return nil, v
	case *AdminGetPlayerAttributesNotFound:
		return nil, v
	case *AdminGetPlayerAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetBulkPlayerCurrentPlatformShort get player current platform in bulk.
Get bulk players current platform.
*/
func (a *Client) PublicGetBulkPlayerCurrentPlatformShort(params *PublicGetBulkPlayerCurrentPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetBulkPlayerCurrentPlatformOK, error) {
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
		return v, nil
	case *PublicGetBulkPlayerCurrentPlatformBadRequest:
		return nil, v
	case *PublicGetBulkPlayerCurrentPlatformUnauthorized:
		return nil, v
	case *PublicGetBulkPlayerCurrentPlatformNotFound:
		return nil, v
	case *PublicGetBulkPlayerCurrentPlatformInternalServerError:
		return nil, v

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
func (a *Client) PublicGetPlayerAttributesShort(params *PublicGetPlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerAttributesOK, error) {
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
		return v, nil
	case *PublicGetPlayerAttributesBadRequest:
		return nil, v
	case *PublicGetPlayerAttributesUnauthorized:
		return nil, v
	case *PublicGetPlayerAttributesNotFound:
		return nil, v
	case *PublicGetPlayerAttributesInternalServerError:
		return nil, v

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
func (a *Client) PublicStorePlayerAttributesShort(params *PublicStorePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicStorePlayerAttributesOK, error) {
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
		return v, nil
	case *PublicStorePlayerAttributesBadRequest:
		return nil, v
	case *PublicStorePlayerAttributesUnauthorized:
		return nil, v
	case *PublicStorePlayerAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicDeletePlayerAttributesShort remove player attributes.
Reset player attributes.
*/
func (a *Client) PublicDeletePlayerAttributesShort(params *PublicDeletePlayerAttributesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicDeletePlayerAttributesNoContent, error) {
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
		return v, nil
	case *PublicDeletePlayerAttributesBadRequest:
		return nil, v
	case *PublicDeletePlayerAttributesUnauthorized:
		return nil, v
	case *PublicDeletePlayerAttributesNotFound:
		return nil, v
	case *PublicDeletePlayerAttributesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
