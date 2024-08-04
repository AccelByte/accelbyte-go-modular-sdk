// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package mock_matchmaking

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new mock matchmaking API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for mock matchmaking API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CleanAllMocksShort(params *CleanAllMocksParams, authInfo runtime.ClientAuthInfoWriter) (*CleanAllMocksNoContent, error)
	GetAllMockMatchesShort(params *GetAllMockMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllMockMatchesOK, error)
	GetMockMatchesByTimestampShort(params *GetMockMatchesByTimestampParams, authInfo runtime.ClientAuthInfoWriter) (*GetMockMatchesByTimestampOK, error)
	GetAllMockTicketsShort(params *GetAllMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllMockTicketsOK, error)
	CreateMockTicketsShort(params *CreateMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMockTicketsCreated, error)
	BulkCreateMockTicketsShort(params *BulkCreateMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateMockTicketsCreated, error)
	GetMockTicketsByTimestampShort(params *GetMockTicketsByTimestampParams, authInfo runtime.ClientAuthInfoWriter) (*GetMockTicketsByTimestampOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CleanAllMocksShort delete all mock tickets and matches
Delete all mock tickets and matches in a channel.
'
*/
func (a *Client) CleanAllMocksShort(params *CleanAllMocksParams, authInfo runtime.ClientAuthInfoWriter) (*CleanAllMocksNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCleanAllMocksParams()
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
		ID:                 "CleanAllMocks",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CleanAllMocksReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CleanAllMocksNoContent:
		return v, nil
	case *CleanAllMocksBadRequest:
		return nil, v
	case *CleanAllMocksUnauthorized:
		return nil, v
	case *CleanAllMocksForbidden:
		return nil, v
	case *CleanAllMocksNotFound:
		return nil, v
	case *CleanAllMocksInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllMockMatchesShort get all mock matches
Read all mock matches in a channel resulted from matching mock tickets.
'
*/
func (a *Client) GetAllMockMatchesShort(params *GetAllMockMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllMockMatchesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllMockMatchesParams()
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
		ID:                 "GetAllMockMatches",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllMockMatchesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllMockMatchesOK:
		return v, nil
	case *GetAllMockMatchesBadRequest:
		return nil, v
	case *GetAllMockMatchesUnauthorized:
		return nil, v
	case *GetAllMockMatchesForbidden:
		return nil, v
	case *GetAllMockMatchesNotFound:
		return nil, v
	case *GetAllMockMatchesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMockMatchesByTimestampShort get mock matches after timestamp
Read mock matches that has timestamp older than specified timestamp in a channel resulted from matching mock tickets.
'
*/
func (a *Client) GetMockMatchesByTimestampShort(params *GetMockMatchesByTimestampParams, authInfo runtime.ClientAuthInfoWriter) (*GetMockMatchesByTimestampOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMockMatchesByTimestampParams()
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
		ID:                 "GetMockMatchesByTimestamp",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/matches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMockMatchesByTimestampReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMockMatchesByTimestampOK:
		return v, nil
	case *GetMockMatchesByTimestampBadRequest:
		return nil, v
	case *GetMockMatchesByTimestampUnauthorized:
		return nil, v
	case *GetMockMatchesByTimestampForbidden:
		return nil, v
	case *GetMockMatchesByTimestampNotFound:
		return nil, v
	case *GetMockMatchesByTimestampInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllMockTicketsShort get all mock tickets
Read all mock tickets in a channel.
'
*/
func (a *Client) GetAllMockTicketsShort(params *GetAllMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllMockTicketsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllMockTicketsParams()
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
		ID:                 "GetAllMockTickets",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllMockTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllMockTicketsOK:
		return v, nil
	case *GetAllMockTicketsBadRequest:
		return nil, v
	case *GetAllMockTicketsUnauthorized:
		return nil, v
	case *GetAllMockTicketsForbidden:
		return nil, v
	case *GetAllMockTicketsNotFound:
		return nil, v
	case *GetAllMockTicketsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMockTicketsShort create mock tickets
Create and queue mock tickets into specified game mode's pool.
Ticket's MMRs will be randomized using Normal distribution according to the input mean and standard deviation.
All mock tickets and matches will be cleaned up automatically after 1 day.
'
*/
func (a *Client) CreateMockTicketsShort(params *CreateMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMockTicketsCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMockTicketsParams()
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
		ID:                 "CreateMockTickets",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMockTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateMockTicketsCreated:
		return v, nil
	case *CreateMockTicketsBadRequest:
		return nil, v
	case *CreateMockTicketsUnauthorized:
		return nil, v
	case *CreateMockTicketsForbidden:
		return nil, v
	case *CreateMockTicketsNotFound:
		return nil, v
	case *CreateMockTicketsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkCreateMockTicketsShort bulk create mock tickets
Create and queue mock tickets into specified game mode's pool.
The tickets input will be used as is.
'
*/
func (a *Client) BulkCreateMockTicketsShort(params *BulkCreateMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateMockTicketsCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkCreateMockTicketsParams()
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
		ID:                 "BulkCreateMockTickets",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkCreateMockTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkCreateMockTicketsCreated:
		return v, nil
	case *BulkCreateMockTicketsBadRequest:
		return nil, v
	case *BulkCreateMockTicketsUnauthorized:
		return nil, v
	case *BulkCreateMockTicketsForbidden:
		return nil, v
	case *BulkCreateMockTicketsNotFound:
		return nil, v
	case *BulkCreateMockTicketsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMockTicketsByTimestampShort get mock tickets after timestamp
Read mock tickets after the specified timestamp in a channel.
'
*/
func (a *Client) GetMockTicketsByTimestampShort(params *GetMockTicketsByTimestampParams, authInfo runtime.ClientAuthInfoWriter) (*GetMockTicketsByTimestampOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMockTicketsByTimestampParams()
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
		ID:                 "GetMockTicketsByTimestamp",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMockTicketsByTimestampReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMockTicketsByTimestampOK:
		return v, nil
	case *GetMockTicketsByTimestampBadRequest:
		return nil, v
	case *GetMockTicketsByTimestampUnauthorized:
		return nil, v
	case *GetMockTicketsByTimestampForbidden:
		return nil, v
	case *GetMockTicketsByTimestampNotFound:
		return nil, v
	case *GetMockTicketsByTimestampInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
