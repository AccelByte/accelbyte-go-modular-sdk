// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package extend_files

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new extend files API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for extend files API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetExtendFileShort(params *GetExtendFileParams, authInfo runtime.ClientAuthInfoWriter) (*GetExtendFileResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetExtendFileShort retrieve extend hosted static files
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:FILES [READ]`

Serves static files provided for extend features, for example: serving App UI files. Files are served with immutable caching headers.
*/
func (a *Client) GetExtendFileShort(params *GetExtendFileParams, authInfo runtime.ClientAuthInfoWriter) (*GetExtendFileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetExtendFileParams()
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
		ID:                 "GetExtendFile",
		Method:             "GET",
		PathPattern:        "/csm/v1/admin/namespaces/{namespace}/files/{filePath}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetExtendFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetExtendFileOK:
		response := &GetExtendFileResponse{}

		response.IsSuccess = true

		return response, nil
	case *GetExtendFileBadRequest:
		response := &GetExtendFileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetExtendFileNotFound:
		response := &GetExtendFileResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetExtendFileBadGateway:
		response := &GetExtendFileResponse{}
		response.Error502 = v.Payload

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
