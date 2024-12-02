// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_tickets

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin tickets API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin tickets API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListTicketsShort(params *ListTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*ListTicketsResponse, error)
	TicketStatisticShort(params *TicketStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*TicketStatisticResponse, error)
	GetTicketDetailShort(params *GetTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDetailResponse, error)
	DeleteTicketShort(params *DeleteTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTicketResponse, error)
	GetReportsByTicketShort(params *GetReportsByTicketParams, authInfo runtime.ClientAuthInfoWriter) (*GetReportsByTicketResponse, error)
	UpdateTicketResolutionsShort(params *UpdateTicketResolutionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTicketResolutionsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListTicketsShort list report tickets
Tickets list can be ordered by:
- createdAt
- reportsCount
- status (currently there are OPEN, AUTO_MODERATED and CLOSED statuses, desc order will put ticket with CLOSED status at the top)
*/
func (a *Client) ListTicketsShort(params *ListTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*ListTicketsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTicketsParams()
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
		ID:                 "listTickets",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListTicketsOK:
		response := &ListTicketsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListTicketsInternalServerError:
		response := &ListTicketsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TicketStatisticShort ticket statistic
Ticket statistic can be filtered by:
- category
- extension category
*/
func (a *Client) TicketStatisticShort(params *TicketStatisticParams, authInfo runtime.ClientAuthInfoWriter) (*TicketStatisticResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTicketStatisticParams()
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
		ID:                 "ticketStatistic",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/statistic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TicketStatisticReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TicketStatisticOK:
		response := &TicketStatisticResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TicketStatisticInternalServerError:
		response := &TicketStatisticResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTicketDetailShort get single ticket
This endpoint will return ticket detail with ticket id.
*/
func (a *Client) GetTicketDetailShort(params *GetTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetTicketDetailResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTicketDetailParams()
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
		ID:                 "getTicketDetail",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTicketDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTicketDetailOK:
		response := &GetTicketDetailResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetTicketDetailNotFound:
		response := &GetTicketDetailResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetTicketDetailInternalServerError:
		response := &GetTicketDetailResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTicketShort delete single ticket
This endpoint will delete ticket and all its reports.
*/
func (a *Client) DeleteTicketShort(params *DeleteTicketParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTicketResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTicketParams()
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
		ID:                 "deleteTicket",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTicketNoContent:
		response := &DeleteTicketResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteTicketNotFound:
		response := &DeleteTicketResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteTicketInternalServerError:
		response := &DeleteTicketResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetReportsByTicketShort get reports by ticket id
List reports ordered by createdAt in descending order.
*/
func (a *Client) GetReportsByTicketShort(params *GetReportsByTicketParams, authInfo runtime.ClientAuthInfoWriter) (*GetReportsByTicketResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetReportsByTicketParams()
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
		ID:                 "getReportsByTicket",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReportsByTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetReportsByTicketOK:
		response := &GetReportsByTicketResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetReportsByTicketInternalServerError:
		response := &GetReportsByTicketResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTicketResolutionsShort update ticket resolution to a given status
Update ticket resolution status to either OPEN or CLOSED. It is mandatory to provide notes
*/
func (a *Client) UpdateTicketResolutionsShort(params *UpdateTicketResolutionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTicketResolutionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTicketResolutionsParams()
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
		ID:                 "updateTicketResolutions",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTicketResolutionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTicketResolutionsOK:
		response := &UpdateTicketResolutionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateTicketResolutionsInternalServerError:
		response := &UpdateTicketResolutionsResponse{}
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
