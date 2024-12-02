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
	CleanAllMocksShort(params *CleanAllMocksParams, authInfo runtime.ClientAuthInfoWriter) (*CleanAllMocksResponse, error)
	GetAllMockMatchesShort(params *GetAllMockMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllMockMatchesResponse, error)
	GetMockMatchesByTimestampShort(params *GetMockMatchesByTimestampParams, authInfo runtime.ClientAuthInfoWriter) (*GetMockMatchesByTimestampResponse, error)
	GetAllMockTicketsShort(params *GetAllMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllMockTicketsResponse, error)
	CreateMockTicketsShort(params *CreateMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMockTicketsResponse, error)
	BulkCreateMockTicketsShort(params *BulkCreateMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateMockTicketsResponse, error)
	GetMockTicketsByTimestampShort(params *GetMockTicketsByTimestampParams, authInfo runtime.ClientAuthInfoWriter) (*GetMockTicketsByTimestampResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CleanAllMocksShort delete all mock tickets and matches
Delete all mock tickets and matches in a channel.
'
*/
func (a *Client) CleanAllMocksShort(params *CleanAllMocksParams, authInfo runtime.ClientAuthInfoWriter) (*CleanAllMocksResponse, error) {
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
		response := &CleanAllMocksResponse{}

		response.IsSuccess = true

		return response, nil
	case *CleanAllMocksBadRequest:
		response := &CleanAllMocksResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CleanAllMocksUnauthorized:
		response := &CleanAllMocksResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CleanAllMocksForbidden:
		response := &CleanAllMocksResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CleanAllMocksNotFound:
		response := &CleanAllMocksResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CleanAllMocksInternalServerError:
		response := &CleanAllMocksResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllMockMatchesShort get all mock matches
Read all mock matches in a channel resulted from matching mock tickets.
'
*/
func (a *Client) GetAllMockMatchesShort(params *GetAllMockMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllMockMatchesResponse, error) {
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
		response := &GetAllMockMatchesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllMockMatchesBadRequest:
		response := &GetAllMockMatchesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllMockMatchesUnauthorized:
		response := &GetAllMockMatchesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllMockMatchesForbidden:
		response := &GetAllMockMatchesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllMockMatchesNotFound:
		response := &GetAllMockMatchesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllMockMatchesInternalServerError:
		response := &GetAllMockMatchesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMockMatchesByTimestampShort get mock matches after timestamp
Read mock matches that has timestamp older than specified timestamp in a channel resulted from matching mock tickets.
'
*/
func (a *Client) GetMockMatchesByTimestampShort(params *GetMockMatchesByTimestampParams, authInfo runtime.ClientAuthInfoWriter) (*GetMockMatchesByTimestampResponse, error) {
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
		response := &GetMockMatchesByTimestampResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMockMatchesByTimestampBadRequest:
		response := &GetMockMatchesByTimestampResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMockMatchesByTimestampUnauthorized:
		response := &GetMockMatchesByTimestampResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMockMatchesByTimestampForbidden:
		response := &GetMockMatchesByTimestampResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMockMatchesByTimestampNotFound:
		response := &GetMockMatchesByTimestampResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMockMatchesByTimestampInternalServerError:
		response := &GetMockMatchesByTimestampResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllMockTicketsShort get all mock tickets
Read all mock tickets in a channel.
'
*/
func (a *Client) GetAllMockTicketsShort(params *GetAllMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllMockTicketsResponse, error) {
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
		response := &GetAllMockTicketsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllMockTicketsBadRequest:
		response := &GetAllMockTicketsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllMockTicketsUnauthorized:
		response := &GetAllMockTicketsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllMockTicketsForbidden:
		response := &GetAllMockTicketsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllMockTicketsNotFound:
		response := &GetAllMockTicketsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllMockTicketsInternalServerError:
		response := &GetAllMockTicketsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) CreateMockTicketsShort(params *CreateMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMockTicketsResponse, error) {
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
		response := &CreateMockTicketsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateMockTicketsBadRequest:
		response := &CreateMockTicketsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateMockTicketsUnauthorized:
		response := &CreateMockTicketsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateMockTicketsForbidden:
		response := &CreateMockTicketsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateMockTicketsNotFound:
		response := &CreateMockTicketsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateMockTicketsInternalServerError:
		response := &CreateMockTicketsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) BulkCreateMockTicketsShort(params *BulkCreateMockTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkCreateMockTicketsResponse, error) {
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
		response := &BulkCreateMockTicketsResponse{}

		response.IsSuccess = true

		return response, nil
	case *BulkCreateMockTicketsBadRequest:
		response := &BulkCreateMockTicketsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkCreateMockTicketsUnauthorized:
		response := &BulkCreateMockTicketsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkCreateMockTicketsForbidden:
		response := &BulkCreateMockTicketsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkCreateMockTicketsNotFound:
		response := &BulkCreateMockTicketsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkCreateMockTicketsInternalServerError:
		response := &BulkCreateMockTicketsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMockTicketsByTimestampShort get mock tickets after timestamp
Read mock tickets after the specified timestamp in a channel.
'
*/
func (a *Client) GetMockTicketsByTimestampShort(params *GetMockTicketsByTimestampParams, authInfo runtime.ClientAuthInfoWriter) (*GetMockTicketsByTimestampResponse, error) {
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
		response := &GetMockTicketsByTimestampResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMockTicketsByTimestampBadRequest:
		response := &GetMockTicketsByTimestampResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMockTicketsByTimestampUnauthorized:
		response := &GetMockTicketsByTimestampResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMockTicketsByTimestampForbidden:
		response := &GetMockTicketsByTimestampResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMockTicketsByTimestampNotFound:
		response := &GetMockTicketsByTimestampResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMockTicketsByTimestampInternalServerError:
		response := &GetMockTicketsByTimestampResponse{}
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
