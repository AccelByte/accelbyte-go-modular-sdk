// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package export

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new export API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for export API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ExportSeasonShort(params *ExportSeasonParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportSeasonResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ExportSeasonShort export season service data
This API is used to export all of season service data files with csv format.
*/
func (a *Client) ExportSeasonShort(params *ExportSeasonParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportSeasonResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportSeasonParams()
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
		ID:                 "exportSeason",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespace/{namespace}/export",
		ProducesMediaTypes: []string{"application/octet-stream"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportSeasonReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportSeasonOK:
		response := &ExportSeasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ExportSeasonBadRequest:
		response := &ExportSeasonResponse{}
		response.Error400 = v.Payload

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
