// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package invoice

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new invoice API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for invoice API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DownloadInvoiceDetailsShort(params *DownloadInvoiceDetailsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadInvoiceDetailsResponse, error)
	GenerateInvoiceSummaryShort(params *GenerateInvoiceSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*GenerateInvoiceSummaryResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
DownloadInvoiceDetailsShort download invoice details
Download invoice details as a csv file.
Other detail info:

  * Returns : invoice details csv file
*/
func (a *Client) DownloadInvoiceDetailsShort(params *DownloadInvoiceDetailsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadInvoiceDetailsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadInvoiceDetailsParams()
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
		ID:                 "downloadInvoiceDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/invoice/details.csv",
		ProducesMediaTypes: []string{"text/csv"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadInvoiceDetailsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadInvoiceDetailsOK:
		response := &DownloadInvoiceDetailsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GenerateInvoiceSummaryShort generate invoice summary
Generate invoice summary.
Other detail info:

  * Returns : query orders
*/
func (a *Client) GenerateInvoiceSummaryShort(params *GenerateInvoiceSummaryParams, authInfo runtime.ClientAuthInfoWriter) (*GenerateInvoiceSummaryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGenerateInvoiceSummaryParams()
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
		ID:                 "generateInvoiceSummary",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/invoice/summary",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GenerateInvoiceSummaryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GenerateInvoiceSummaryOK:
		response := &GenerateInvoiceSummaryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GenerateInvoiceSummaryUnprocessableEntity:
		response := &GenerateInvoiceSummaryResponse{}
		response.Error422 = v.Payload

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
