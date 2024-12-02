// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_reports

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin reports API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin reports API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListReportsShort(params *ListReportsParams, authInfo runtime.ClientAuthInfoWriter) (*ListReportsResponse, error)
	AdminSubmitReportShort(params *AdminSubmitReportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitReportResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListReportsShort list reports
Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
Reports list can be ordered by:
- createdAt
- updatedAt
*/
func (a *Client) ListReportsShort(params *ListReportsParams, authInfo runtime.ClientAuthInfoWriter) (*ListReportsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListReportsParams()
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
		ID:                 "listReports",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reports",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListReportsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListReportsOK:
		response := &ListReportsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListReportsInternalServerError:
		response := &ListReportsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSubmitReportShort submit a report by admin
Submit a report and will return ticket for reported object.
New ticket will be created if no OPEN ticket present for reported object (based by objectId and objectType) in a namespace.

Admin can only submit report once for each different user / object reported in the same OPEN ticket.
Reporting the same user / object in the same OPEN ticket will return HTTP code 409 (conflict).

Fill the 'reason' field with a 'reason title'
Supported category: - UGC - USER - CHAT - EXTENSION
*/
func (a *Client) AdminSubmitReportShort(params *AdminSubmitReportParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSubmitReportResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSubmitReportParams()
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
		ID:                 "adminSubmitReport",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reports",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSubmitReportReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSubmitReportCreated:
		response := &AdminSubmitReportResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSubmitReportBadRequest:
		response := &AdminSubmitReportResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSubmitReportConflict:
		response := &AdminSubmitReportResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSubmitReportInternalServerError:
		response := &AdminSubmitReportResponse{}
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
