// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

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
	CreateMatchTicket(params *CreateMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchTicketCreated, *CreateMatchTicketBadRequest, *CreateMatchTicketUnauthorized, *CreateMatchTicketForbidden, *CreateMatchTicketNotFound, *CreateMatchTicketConflict, *CreateMatchTicketInternalServerError, error)
	CreateMatchTicketShort(params *CreateMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchTicketCreated, error)
	MatchTicketDetails(params *MatchTicketDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchTicketDetailsOK, *MatchTicketDetailsUnauthorized, *MatchTicketDetailsForbidden, *MatchTicketDetailsNotFound, *MatchTicketDetailsInternalServerError, error)
	MatchTicketDetailsShort(params *MatchTicketDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchTicketDetailsOK, error)
	DeleteMatchTicket(params *DeleteMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchTicketNoContent, *DeleteMatchTicketUnauthorized, *DeleteMatchTicketForbidden, *DeleteMatchTicketNotFound, *DeleteMatchTicketInternalServerError, error)
	DeleteMatchTicketShort(params *DeleteMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchTicketNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use CreateMatchTicketShort instead.

CreateMatchTicket create a matchmaking ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [CREATE]

Required Scope: social

Creates a new request for matchmaking
*/
func (a *Client) CreateMatchTicket(params *CreateMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchTicketCreated, *CreateMatchTicketBadRequest, *CreateMatchTicketUnauthorized, *CreateMatchTicketForbidden, *CreateMatchTicketNotFound, *CreateMatchTicketConflict, *CreateMatchTicketInternalServerError, error) {
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
		return nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateMatchTicketCreated:
		return v, nil, nil, nil, nil, nil, nil, nil

	case *CreateMatchTicketBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil

	case *CreateMatchTicketUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil

	case *CreateMatchTicketForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil

	case *CreateMatchTicketNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil

	case *CreateMatchTicketConflict:
		return nil, nil, nil, nil, nil, v, nil, nil

	case *CreateMatchTicketInternalServerError:
		return nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMatchTicketShort create a matchmaking ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [CREATE]

Required Scope: social

Creates a new request for matchmaking
*/
func (a *Client) CreateMatchTicketShort(params *CreateMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchTicketCreated, error) {
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
		return v, nil
	case *CreateMatchTicketBadRequest:
		return nil, v
	case *CreateMatchTicketUnauthorized:
		return nil, v
	case *CreateMatchTicketForbidden:
		return nil, v
	case *CreateMatchTicketNotFound:
		return nil, v
	case *CreateMatchTicketConflict:
		return nil, v
	case *CreateMatchTicketInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use MatchTicketDetailsShort instead.

MatchTicketDetails get details for a specific match ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [READ]

Required Scope: social

Get details for a specific match ticket
*/
func (a *Client) MatchTicketDetails(params *MatchTicketDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchTicketDetailsOK, *MatchTicketDetailsUnauthorized, *MatchTicketDetailsForbidden, *MatchTicketDetailsNotFound, *MatchTicketDetailsInternalServerError, error) {
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *MatchTicketDetailsOK:
		return v, nil, nil, nil, nil, nil

	case *MatchTicketDetailsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *MatchTicketDetailsForbidden:
		return nil, nil, v, nil, nil, nil

	case *MatchTicketDetailsNotFound:
		return nil, nil, nil, v, nil, nil

	case *MatchTicketDetailsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchTicketDetailsShort get details for a specific match ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [READ]

Required Scope: social

Get details for a specific match ticket
*/
func (a *Client) MatchTicketDetailsShort(params *MatchTicketDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchTicketDetailsOK, error) {
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
		return v, nil
	case *MatchTicketDetailsUnauthorized:
		return nil, v
	case *MatchTicketDetailsForbidden:
		return nil, v
	case *MatchTicketDetailsNotFound:
		return nil, v
	case *MatchTicketDetailsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteMatchTicketShort instead.

DeleteMatchTicket delete a match ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [DELETE]

Required Scope: social

Deletes an existing matchmaking ticket.
*/
func (a *Client) DeleteMatchTicket(params *DeleteMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchTicketNoContent, *DeleteMatchTicketUnauthorized, *DeleteMatchTicketForbidden, *DeleteMatchTicketNotFound, *DeleteMatchTicketInternalServerError, error) {
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
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteMatchTicketNoContent:
		return v, nil, nil, nil, nil, nil

	case *DeleteMatchTicketUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *DeleteMatchTicketForbidden:
		return nil, nil, v, nil, nil, nil

	case *DeleteMatchTicketNotFound:
		return nil, nil, nil, v, nil, nil

	case *DeleteMatchTicketInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMatchTicketShort delete a match ticket
Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [DELETE]

Required Scope: social

Deletes an existing matchmaking ticket.
*/
func (a *Client) DeleteMatchTicketShort(params *DeleteMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchTicketNoContent, error) {
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
		return v, nil
	case *DeleteMatchTicketUnauthorized:
		return nil, v
	case *DeleteMatchTicketForbidden:
		return nil, v
	case *DeleteMatchTicketNotFound:
		return nil, v
	case *DeleteMatchTicketInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
