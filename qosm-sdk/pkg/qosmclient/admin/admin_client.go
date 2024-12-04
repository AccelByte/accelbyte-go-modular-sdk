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
	UpdateServerConfigShort(params *UpdateServerConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServerConfigResponse, error)
	DeleteServerShort(params *DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServerResponse, error)
	SetServerAliasShort(params *SetServerAliasParams, authInfo runtime.ClientAuthInfoWriter) (*SetServerAliasResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
UpdateServerConfigShort update qos service configuration
```
Required permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [UPDATE]
Required scope: social

This endpoint updates the registered QoS service's configurable configuration'.
```
*/
func (a *Client) UpdateServerConfigShort(params *UpdateServerConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateServerConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateServerConfigParams()
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
		ID:                 "UpdateServerConfig",
		Method:             "PATCH",
		PathPattern:        "/qosm/admin/namespaces/{namespace}/servers/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateServerConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateServerConfigNoContent:
		response := &UpdateServerConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateServerConfigBadRequest:
		response := &UpdateServerConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateServerConfigNotFound:
		response := &UpdateServerConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateServerConfigInternalServerError:
		response := &UpdateServerConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteServerShort delete a qos service record
```
Required permission: ADMIN:QOS:SERVER [DELETE]
Required scope: social

This endpoint delete a registered QoS service record.
```
*/
func (a *Client) DeleteServerShort(params *DeleteServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteServerParams()
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
		ID:                 "DeleteServer",
		Method:             "DELETE",
		PathPattern:        "/qosm/admin/servers/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteServerNoContent:
		response := &DeleteServerResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteServerInternalServerError:
		response := &DeleteServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetServerAliasShort modify a qos service's region alias
```
Required permission: ADMIN:QOS:SERVER [UDPATE]
Required scope: social

This endpoint modifies a registered QoS service's region alias.
```
*/
func (a *Client) SetServerAliasShort(params *SetServerAliasParams, authInfo runtime.ClientAuthInfoWriter) (*SetServerAliasResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetServerAliasParams()
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
		ID:                 "SetServerAlias",
		Method:             "POST",
		PathPattern:        "/qosm/admin/servers/{region}/alias",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetServerAliasReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetServerAliasNoContent:
		response := &SetServerAliasResponse{}

		response.IsSuccess = true

		return response, nil
	case *SetServerAliasBadRequest:
		response := &SetServerAliasResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetServerAliasNotFound:
		response := &SetServerAliasResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetServerAliasInternalServerError:
		response := &SetServerAliasResponse{}
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
