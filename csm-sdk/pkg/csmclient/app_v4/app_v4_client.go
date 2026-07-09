// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package app_v4

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new app v4 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for app v4 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppDebugInfoV4Short(params *GetAppDebugInfoV4Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppDebugInfoV4Response, error)
	UpdateAppDebugModeV4Short(params *UpdateAppDebugModeV4Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppDebugModeV4Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAppDebugInfoV4Short get debug info for an extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

Returns the list of debug-ready pods and exposed services for the given extend app.

A pod is included only when it is in `Running` phase and has an
`extend-proxy-sidecar` container.
*/
func (a *Client) GetAppDebugInfoV4Short(params *GetAppDebugInfoV4Params, authInfo runtime.ClientAuthInfoWriter) (*GetAppDebugInfoV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppDebugInfoV4Params()
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
		ID:                 "GetAppDebugInfoV4",
		Method:             "GET",
		PathPattern:        "/csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppDebugInfoV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppDebugInfoV4OK:
		response := &GetAppDebugInfoV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAppDebugInfoV4BadRequest:
		response := &GetAppDebugInfoV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppDebugInfoV4Unauthorized:
		response := &GetAppDebugInfoV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppDebugInfoV4Forbidden:
		response := &GetAppDebugInfoV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppDebugInfoV4NotFound:
		response := &GetAppDebugInfoV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppDebugInfoV4Conflict:
		response := &GetAppDebugInfoV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetAppDebugInfoV4InternalServerError:
		response := &GetAppDebugInfoV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppDebugModeV4Short enable or disable remote debug mode for an extend app
Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

Enable or disable the remote debug sidecar container for the specified extend app.

When enabled and the app is in `deployment-running` status, a new deployment will be
triggered automatically to apply the debug container configuration.

This operation is rejected with `409 Conflict` if the app is currently in a
transitional state (app-creating, app-removing, app-stopping).
*/
func (a *Client) UpdateAppDebugModeV4Short(params *UpdateAppDebugModeV4Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppDebugModeV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppDebugModeV4Params()
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
		ID:                 "UpdateAppDebugModeV4",
		Method:             "PUT",
		PathPattern:        "/csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppDebugModeV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppDebugModeV4OK:
		response := &UpdateAppDebugModeV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateAppDebugModeV4BadRequest:
		response := &UpdateAppDebugModeV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppDebugModeV4Unauthorized:
		response := &UpdateAppDebugModeV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppDebugModeV4Forbidden:
		response := &UpdateAppDebugModeV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppDebugModeV4NotFound:
		response := &UpdateAppDebugModeV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppDebugModeV4Conflict:
		response := &UpdateAppDebugModeV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppDebugModeV4InternalServerError:
		response := &UpdateAppDebugModeV4Response{}
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
