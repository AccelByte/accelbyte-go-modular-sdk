// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package all_terminated_servers

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new all terminated servers API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for all terminated servers API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	BatchDownloadServerLogsShort(params *BatchDownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*BatchDownloadServerLogsOK, error)
	ListMetadataServersShort(params *ListMetadataServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListMetadataServersOK, error)
	ListAllTerminatedServersShort(params *ListAllTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllTerminatedServersOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
BatchDownloadServerLogsShort batch download dedicated server log files
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

Required scope: social

This endpoint will download dedicated server's log file (.zip).
*/
func (a *Client) BatchDownloadServerLogsShort(params *BatchDownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*BatchDownloadServerLogsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBatchDownloadServerLogsParams()
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
		ID:                 "batchDownloadServerLogs",
		Method:             "POST",
		PathPattern:        "/dslogmanager/servers/logs/download",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BatchDownloadServerLogsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BatchDownloadServerLogsOK:
		return v, nil
	case *BatchDownloadServerLogsBadRequest:
		return nil, v
	case *BatchDownloadServerLogsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListMetadataServersShort retrieve metadata servers
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

This endpoint used to retrieve metadata servers in a namespace

The namespace filter is will give result exact namespace response
```
*/
func (a *Client) ListMetadataServersShort(params *ListMetadataServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListMetadataServersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListMetadataServersParams()
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
		ID:                 "listMetadataServers",
		Method:             "POST",
		PathPattern:        "/dslogmanager/servers/metadata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListMetadataServersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListMetadataServersOK:
		return v, nil
	case *ListMetadataServersBadRequest:
		return nil, v
	case *ListMetadataServersUnauthorized:
		return nil, v
	case *ListMetadataServersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListAllTerminatedServersShort retrieve all terminated servers
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

This endpoint used to retrieve terminated servers in all namespace
```
*/
func (a *Client) ListAllTerminatedServersShort(params *ListAllTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListAllTerminatedServersOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListAllTerminatedServersParams()
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
		ID:                 "listAllTerminatedServers",
		Method:             "GET",
		PathPattern:        "/dslogmanager/servers/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListAllTerminatedServersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListAllTerminatedServersOK:
		return v, nil
	case *ListAllTerminatedServersBadRequest:
		return nil, v
	case *ListAllTerminatedServersUnauthorized:
		return nil, v
	case *ListAllTerminatedServersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
