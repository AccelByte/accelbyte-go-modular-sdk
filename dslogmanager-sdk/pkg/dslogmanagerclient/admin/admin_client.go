// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetServerLogsShort(params *GetServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerLogsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetServerLogsShort queries server logs
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint queries a specified dedicated server's logs.
*/
func (a *Client) GetServerLogsShort(params *GetServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerLogsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerLogsParams()
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
		ID:                 "getServerLogs",
		Method:             "GET",
		PathPattern:        "/dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerLogsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServerLogsOK:
		response := &GetServerLogsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetServerLogsBadRequest:
		response := &GetServerLogsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetServerLogsUnauthorized:
		response := &GetServerLogsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetServerLogsNotFound:
		response := &GetServerLogsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetServerLogsInternalServerError:
		response := &GetServerLogsResponse{}
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
