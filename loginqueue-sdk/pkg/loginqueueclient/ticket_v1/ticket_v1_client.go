// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticket_v1

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new ticket v1 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for ticket v1 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RefreshTicketShort(params *RefreshTicketParams, authInfo runtime.ClientAuthInfoWriter) (*RefreshTicketResponse, error)
	CancelTicketShort(params *CancelTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CancelTicketResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
RefreshTicketShort refresh ticket
Refresh ticket. This endpoint requires ticket to be placed in the authorization header with this format: "Bearer ticketID". When the ticketID is empty or not found the response status will be 401
*/
func (a *Client) RefreshTicketShort(params *RefreshTicketParams, authInfo runtime.ClientAuthInfoWriter) (*RefreshTicketResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRefreshTicketParams()
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
		ID:                 "refreshTicket",
		Method:             "GET",
		PathPattern:        "/login-queue/v1/namespaces/{namespace}/ticket",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RefreshTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RefreshTicketOK:
		response := &RefreshTicketResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RefreshTicketUnauthorized:
		response := &RefreshTicketResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RefreshTicketInternalServerError:
		response := &RefreshTicketResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CancelTicketShort cancel ticket
Cancel ticket. This endpoint requires ticket to be placed in the authorization header with this format: "Bearer ticketID"
*/
func (a *Client) CancelTicketShort(params *CancelTicketParams, authInfo runtime.ClientAuthInfoWriter) (*CancelTicketResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCancelTicketParams()
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
		ID:                 "cancelTicket",
		Method:             "DELETE",
		PathPattern:        "/login-queue/v1/namespaces/{namespace}/ticket",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CancelTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CancelTicketNoContent:
		response := &CancelTicketResponse{}

		response.IsSuccess = true

		return response, nil
	case *CancelTicketUnauthorized:
		response := &CancelTicketResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CancelTicketInternalServerError:
		response := &CancelTicketResponse{}
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
