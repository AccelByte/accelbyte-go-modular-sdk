// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package terminated_servers

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new terminated servers API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for terminated servers API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListTerminatedServersShort(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersResponse, error)
	DownloadServerLogsShort(params *DownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadServerLogsResponse, error)
	CheckServerLogsShort(params *CheckServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*CheckServerLogsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListTerminatedServersShort retrieve all terminated servers
```
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

This endpoint used to retrieve terminated servers in a namespace

The namespace filter is will give result exact namespace response
```
*/
func (a *Client) ListTerminatedServersShort(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListTerminatedServersParams()
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
		ID:                 "listTerminatedServers",
		Method:             "GET",
		PathPattern:        "/dslogmanager/namespaces/{namespace}/servers/search",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListTerminatedServersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListTerminatedServersOK:
		response := &ListTerminatedServersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListTerminatedServersBadRequest:
		response := &ListTerminatedServersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListTerminatedServersUnauthorized:
		response := &ListTerminatedServersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ListTerminatedServersInternalServerError:
		response := &ListTerminatedServersResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DownloadServerLogsShort download dedicated server log files
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

Required scope: social

This endpoint will download dedicated server's log file (.log).
*/
func (a *Client) DownloadServerLogsShort(params *DownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadServerLogsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDownloadServerLogsParams()
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
		ID:                 "downloadServerLogs",
		Method:             "GET",
		PathPattern:        "/dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DownloadServerLogsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DownloadServerLogsOK:
		response := &DownloadServerLogsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DownloadServerLogsNotFound:
		response := &DownloadServerLogsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DownloadServerLogsInternalServerError:
		response := &DownloadServerLogsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CheckServerLogsShort check dedicated server log files existence
Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

Required scope: social

This endpoint will check log file existence before download file.
*/
func (a *Client) CheckServerLogsShort(params *CheckServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*CheckServerLogsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCheckServerLogsParams()
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
		ID:                 "checkServerLogs",
		Method:             "GET",
		PathPattern:        "/dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists",
		ProducesMediaTypes: []string{"application/json", "text/x-log"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CheckServerLogsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CheckServerLogsOK:
		response := &CheckServerLogsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CheckServerLogsNotFound:
		response := &CheckServerLogsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CheckServerLogsInternalServerError:
		response := &CheckServerLogsResponse{}
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
