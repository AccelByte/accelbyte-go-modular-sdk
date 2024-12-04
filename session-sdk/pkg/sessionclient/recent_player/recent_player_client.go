// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package recent_player

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new recent player API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for recent player API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetRecentPlayerShort(params *AdminGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentPlayerResponse, error)
	AdminGetRecentTeamPlayerShort(params *AdminGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentTeamPlayerResponse, error)
	PublicGetRecentPlayerShort(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerResponse, error)
	PublicGetRecentTeamPlayerShort(params *PublicGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentTeamPlayerResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetRecentPlayerShort query recent player with given user id.
Query recent player with given user id.

If user id parameter is empty:
1. Using User Token : It will get the user id from the token
2. Using client token : it will throw an error

Please ensure environment variable "RECENT_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) AdminGetRecentPlayerShort(params *AdminGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentPlayerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRecentPlayerParams()
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
		ID:                 "adminGetRecentPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/recent-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRecentPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRecentPlayerOK:
		response := &AdminGetRecentPlayerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRecentPlayerBadRequest:
		response := &AdminGetRecentPlayerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRecentPlayerUnauthorized:
		response := &AdminGetRecentPlayerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRecentPlayerNotFound:
		response := &AdminGetRecentPlayerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRecentPlayerInternalServerError:
		response := &AdminGetRecentPlayerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRecentTeamPlayerShort query recent player who were on the same team with given user id.
Query recent player who were on the same team with given user id.

If user id parameter is empty:
1. Using User Token : It will get the user id from the token
2. Using client token : it will throw an error

Please ensure environment variable "RECENT_TEAM_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) AdminGetRecentTeamPlayerShort(params *AdminGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRecentTeamPlayerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRecentTeamPlayerParams()
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
		ID:                 "adminGetRecentTeamPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/recent-team-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRecentTeamPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRecentTeamPlayerOK:
		response := &AdminGetRecentTeamPlayerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRecentTeamPlayerBadRequest:
		response := &AdminGetRecentTeamPlayerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRecentTeamPlayerUnauthorized:
		response := &AdminGetRecentTeamPlayerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRecentTeamPlayerNotFound:
		response := &AdminGetRecentTeamPlayerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRecentTeamPlayerInternalServerError:
		response := &AdminGetRecentTeamPlayerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRecentPlayerShort query user's recent player
Query user's recent player.

Please ensure environment variable "RECENT_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) PublicGetRecentPlayerShort(params *PublicGetRecentPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentPlayerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRecentPlayerParams()
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
		ID:                 "publicGetRecentPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/recent-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRecentPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRecentPlayerOK:
		response := &PublicGetRecentPlayerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetRecentPlayerBadRequest:
		response := &PublicGetRecentPlayerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetRecentPlayerUnauthorized:
		response := &PublicGetRecentPlayerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetRecentPlayerNotFound:
		response := &PublicGetRecentPlayerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetRecentPlayerInternalServerError:
		response := &PublicGetRecentPlayerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRecentTeamPlayerShort query user's recent player who were on the same team.
Query user's recent player who were on the same team.

Please ensure environment variable "RECENT_TEAM_PLAYER_ENABLED" is set to "TRUE" to use this feature.
*/
func (a *Client) PublicGetRecentTeamPlayerShort(params *PublicGetRecentTeamPlayerParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRecentTeamPlayerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRecentTeamPlayerParams()
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
		ID:                 "publicGetRecentTeamPlayer",
		Method:             "GET",
		PathPattern:        "/session/v1/public/namespaces/{namespace}/recent-team-player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRecentTeamPlayerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRecentTeamPlayerOK:
		response := &PublicGetRecentTeamPlayerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetRecentTeamPlayerBadRequest:
		response := &PublicGetRecentTeamPlayerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetRecentTeamPlayerUnauthorized:
		response := &PublicGetRecentTeamPlayerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetRecentTeamPlayerNotFound:
		response := &PublicGetRecentTeamPlayerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetRecentTeamPlayerInternalServerError:
		response := &PublicGetRecentTeamPlayerResponse{}
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
