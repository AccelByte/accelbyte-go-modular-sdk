// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package terminated_servers

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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
	CheckServerLogs(params *CheckServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*CheckServerLogsOK, *CheckServerLogsNotFound, *CheckServerLogsInternalServerError, error)
	CheckServerLogsShort(params *CheckServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*CheckServerLogsOK, error)
	DownloadServerLogs(params *DownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadServerLogsOK, *DownloadServerLogsNotFound, *DownloadServerLogsInternalServerError, error)
	DownloadServerLogsShort(params *DownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadServerLogsOK, error)
	ListTerminatedServers(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersOK, *ListTerminatedServersBadRequest, *ListTerminatedServersUnauthorized, *ListTerminatedServersInternalServerError, error)
	ListTerminatedServersShort(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: Use CheckServerLogsShort instead.

	CheckServerLogs checks dedicated server log files existence

	Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

Required scope: social

This endpoint will check log file existence before download file.
*/
func (a *Client) CheckServerLogs(params *CheckServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*CheckServerLogsOK, *CheckServerLogsNotFound, *CheckServerLogsInternalServerError, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CheckServerLogsOK:
		return v, nil, nil, nil

	case *CheckServerLogsNotFound:
		return nil, v, nil, nil

	case *CheckServerLogsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
	CheckServerLogsShort checks dedicated server log files existence

	Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

Required scope: social

This endpoint will check log file existence before download file.
*/
func (a *Client) CheckServerLogsShort(params *CheckServerLogsParams, authInfo runtime.ClientAuthInfoWriter) (*CheckServerLogsOK, error) {
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
		return v, nil
	case *CheckServerLogsNotFound:
		return nil, v
	case *CheckServerLogsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: Use DownloadServerLogsShort instead.

	DownloadServerLogs downloads dedicated server log files

	Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

Required scope: social

This endpoint will download dedicated server&#39;s log file (.log).
*/
func (a *Client) DownloadServerLogs(params *DownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadServerLogsOK, *DownloadServerLogsNotFound, *DownloadServerLogsInternalServerError, error) {
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
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *DownloadServerLogsOK:
		return v, nil, nil, nil

	case *DownloadServerLogsNotFound:
		return nil, v, nil, nil

	case *DownloadServerLogsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
	DownloadServerLogsShort downloads dedicated server log files

	Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

Required scope: social

This endpoint will download dedicated server&#39;s log file (.log).
*/
func (a *Client) DownloadServerLogsShort(params *DownloadServerLogsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*DownloadServerLogsOK, error) {
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
		return v, nil
	case *DownloadServerLogsNotFound:
		return nil, v
	case *DownloadServerLogsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: Use ListTerminatedServersShort instead.

	ListTerminatedServers retrieves all terminated servers

	```

Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

This endpoint used to retrieve terminated servers in a namespace
```
*/
func (a *Client) ListTerminatedServers(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersOK, *ListTerminatedServersBadRequest, *ListTerminatedServersUnauthorized, *ListTerminatedServersInternalServerError, error) {
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
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *ListTerminatedServersOK:
		return v, nil, nil, nil, nil

	case *ListTerminatedServersBadRequest:
		return nil, v, nil, nil, nil

	case *ListTerminatedServersUnauthorized:
		return nil, nil, v, nil, nil

	case *ListTerminatedServersInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
	ListTerminatedServersShort retrieves all terminated servers

	```

Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

This endpoint used to retrieve terminated servers in a namespace
```
*/
func (a *Client) ListTerminatedServersShort(params *ListTerminatedServersParams, authInfo runtime.ClientAuthInfoWriter) (*ListTerminatedServersOK, error) {
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
		return v, nil
	case *ListTerminatedServersBadRequest:
		return nil, v
	case *ListTerminatedServersUnauthorized:
		return nil, v
	case *ListTerminatedServersInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
