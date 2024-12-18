// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match_tickets

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new match tickets API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for match tickets API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateMatchTicketShort(params *CreateMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchTicketResponse, error)
	GetMyMatchTicketsShort(params *GetMyMatchTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyMatchTicketsResponse, error)
	MatchTicketDetailsShort(params *MatchTicketDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchTicketDetailsResponse, error)
	DeleteMatchTicketShort(params *DeleteMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchTicketResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateMatchTicketShort create a matchmaking ticket
Creates a new request for matchmaking.

Cross Platform: Allow player to play game with "all" registered platforms.
1. Cross Platform can be enabled through session service or create match ticket.
a. via ticket: specify several cross_platform on create match ticket attributes. **[DEPRECATED]** client should not send from attribute `cross_platform` will be populated from backend
This value will override player attributes in session service. e.g. cross_platform:[xbox,psn,steam]
b. via session service: set player/party cross_platform attributes.
c. Enable match options ruleset with name cross_platform and type "all".
```
{
"name": "co-op",
"data": {
"alliance": {
"min_number": 1,
"max_number": 1,
"player_min_number": 1,
"player_max_number": 4
},
"match_options": {
"options": [
{"name": "cross_platform", "type": "all"}
]
}
}
}
```
2. Cross Platform can be disabled from the matchpool configuration `crossplay_disabled=true`
3. When matchpool `crossplay_disabled=false`
* request attribute cross_platform is empty **[Recommended]**:
* Matchmaking will consider Party leader `crossplayEnabled` preference or Session attribute `crossplayEnabled` preference.
* When `crossplayEnabled=true` `cross_platforms` attributes will be populated from [active login methods](/iam/apidocs/#/Third%20Party%20Credential/RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3) otherwise it will set to leader current platform
* When `crossplayEnabled=false` `cross_platforms` attributes will be set to user's currentPlatform
* request attribute cross_platform is not empty **[Not Recommended]**:
* Cross Platform can be disabled with specify only ONE cross_platform. Current matchmaking use this behavior. e.g. cross_platform:[xbox]
* Multiple cross_platform values is considered to be crossplay enabled
4. This behavior only works for Default Matchmaker. Custom matchmaker (custom gRPC matchmaker) need to consider this on its own implementation.

ExcludedSessions: allow player to list out game sessions that they want to avoid matching, for example a match that they've recently left or get kicked out from.
*/
func (a *Client) CreateMatchTicketShort(params *CreateMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchTicketResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMatchTicketParams()
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
		ID:                 "CreateMatchTicket",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMatchTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateMatchTicketCreated:
		response := &CreateMatchTicketResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateMatchTicketBadRequest:
		response := &CreateMatchTicketResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchTicketUnauthorized:
		response := &CreateMatchTicketResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchTicketForbidden:
		response := &CreateMatchTicketResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchTicketNotFound:
		response := &CreateMatchTicketResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchTicketConflict:
		response := &CreateMatchTicketResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchTicketInternalServerError:
		response := &CreateMatchTicketResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMyMatchTicketsShort get my match tickets
Get my match tickets.
*/
func (a *Client) GetMyMatchTicketsShort(params *GetMyMatchTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*GetMyMatchTicketsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMyMatchTicketsParams()
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
		ID:                 "GetMyMatchTickets",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-tickets/me",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMyMatchTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMyMatchTicketsOK:
		response := &GetMyMatchTicketsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMyMatchTicketsUnauthorized:
		response := &GetMyMatchTicketsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyMatchTicketsForbidden:
		response := &GetMyMatchTicketsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMyMatchTicketsInternalServerError:
		response := &GetMyMatchTicketsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchTicketDetailsShort get details for a specific match ticket
Get details for a specific match ticket
*/
func (a *Client) MatchTicketDetailsShort(params *MatchTicketDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchTicketDetailsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchTicketDetailsParams()
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
		ID:                 "MatchTicketDetails",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-tickets/{ticketid}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchTicketDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchTicketDetailsOK:
		response := &MatchTicketDetailsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *MatchTicketDetailsUnauthorized:
		response := &MatchTicketDetailsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchTicketDetailsForbidden:
		response := &MatchTicketDetailsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchTicketDetailsNotFound:
		response := &MatchTicketDetailsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchTicketDetailsInternalServerError:
		response := &MatchTicketDetailsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMatchTicketShort delete a match ticket
Deletes an existing matchmaking ticket.
*/
func (a *Client) DeleteMatchTicketShort(params *DeleteMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchTicketResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMatchTicketParams()
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
		ID:                 "DeleteMatchTicket",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-tickets/{ticketid}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMatchTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteMatchTicketNoContent:
		response := &DeleteMatchTicketResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteMatchTicketUnauthorized:
		response := &DeleteMatchTicketResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchTicketForbidden:
		response := &DeleteMatchTicketResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchTicketNotFound:
		response := &DeleteMatchTicketResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchTicketNotAcceptable:
		response := &DeleteMatchTicketResponse{}
		response.Error406 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchTicketInternalServerError:
		response := &DeleteMatchTicketResponse{}
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
