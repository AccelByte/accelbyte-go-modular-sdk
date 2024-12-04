// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package override_role_config_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new override role config v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for override role config v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetRoleOverrideConfigV3Short(params *AdminGetRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleOverrideConfigV3Response, error)
	AdminUpdateRoleOverrideConfigV3Short(params *AdminUpdateRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleOverrideConfigV3Response, error)
	AdminGetRoleSourceV3Short(params *AdminGetRoleSourceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleSourceV3Response, error)
	AdminChangeRoleOverrideConfigStatusV3Short(params *AdminChangeRoleOverrideConfigStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminChangeRoleOverrideConfigStatusV3Response, error)
	AdminGetRoleNamespacePermissionV3Short(params *AdminGetRoleNamespacePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleNamespacePermissionV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetRoleOverrideConfigV3Short get role override config
Get role override config.
This API has upsert behavior, if there is no config yet, it will create a new one with inactive status.
*/
func (a *Client) AdminGetRoleOverrideConfigV3Short(params *AdminGetRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleOverrideConfigV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleOverrideConfigV3Params()
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
		ID:                 "AdminGetRoleOverrideConfigV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleOverrideConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleOverrideConfigV3OK:
		response := &AdminGetRoleOverrideConfigV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRoleOverrideConfigV3BadRequest:
		response := &AdminGetRoleOverrideConfigV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleOverrideConfigV3Unauthorized:
		response := &AdminGetRoleOverrideConfigV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleOverrideConfigV3Forbidden:
		response := &AdminGetRoleOverrideConfigV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleOverrideConfigV3InternalServerError:
		response := &AdminGetRoleOverrideConfigV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRoleOverrideConfigV3Short update role override config
This API is for updating role override config.
Note:
This API has upsert behavior, if there is no config yet, it will create a new one first.
*/
func (a *Client) AdminUpdateRoleOverrideConfigV3Short(params *AdminUpdateRoleOverrideConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleOverrideConfigV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRoleOverrideConfigV3Params()
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
		ID:                 "AdminUpdateRoleOverrideConfigV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRoleOverrideConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRoleOverrideConfigV3OK:
		response := &AdminUpdateRoleOverrideConfigV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateRoleOverrideConfigV3BadRequest:
		response := &AdminUpdateRoleOverrideConfigV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleOverrideConfigV3Unauthorized:
		response := &AdminUpdateRoleOverrideConfigV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleOverrideConfigV3Forbidden:
		response := &AdminUpdateRoleOverrideConfigV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleOverrideConfigV3InternalServerError:
		response := &AdminUpdateRoleOverrideConfigV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleSourceV3Short get role source permission set
Get role source permission set.
*/
func (a *Client) AdminGetRoleSourceV3Short(params *AdminGetRoleSourceV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleSourceV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleSourceV3Params()
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
		ID:                 "AdminGetRoleSourceV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride/source",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleSourceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleSourceV3OK:
		response := &AdminGetRoleSourceV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRoleSourceV3BadRequest:
		response := &AdminGetRoleSourceV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleSourceV3Unauthorized:
		response := &AdminGetRoleSourceV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleSourceV3Forbidden:
		response := &AdminGetRoleSourceV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleSourceV3NotFound:
		response := &AdminGetRoleSourceV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleSourceV3InternalServerError:
		response := &AdminGetRoleSourceV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminChangeRoleOverrideConfigStatusV3Short change role override config active status
Enable or disable the target role override feature in path namespace.
Note:
This API has upsert behavior, if there is no config yet, it will create a new one first.
*/
func (a *Client) AdminChangeRoleOverrideConfigStatusV3Short(params *AdminChangeRoleOverrideConfigStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminChangeRoleOverrideConfigStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminChangeRoleOverrideConfigStatusV3Params()
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
		ID:                 "AdminChangeRoleOverrideConfigStatusV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminChangeRoleOverrideConfigStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminChangeRoleOverrideConfigStatusV3OK:
		response := &AdminChangeRoleOverrideConfigStatusV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminChangeRoleOverrideConfigStatusV3Unauthorized:
		response := &AdminChangeRoleOverrideConfigStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChangeRoleOverrideConfigStatusV3Forbidden:
		response := &AdminChangeRoleOverrideConfigStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminChangeRoleOverrideConfigStatusV3InternalServerError:
		response := &AdminChangeRoleOverrideConfigStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleNamespacePermissionV3Short get role namespace permission
Get role namespace permission set.
*/
func (a *Client) AdminGetRoleNamespacePermissionV3Short(params *AdminGetRoleNamespacePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleNamespacePermissionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleNamespacePermissionV3Params()
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
		ID:                 "AdminGetRoleNamespacePermissionV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/roleoverride/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleNamespacePermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleNamespacePermissionV3OK:
		response := &AdminGetRoleNamespacePermissionV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRoleNamespacePermissionV3Unauthorized:
		response := &AdminGetRoleNamespacePermissionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleNamespacePermissionV3Forbidden:
		response := &AdminGetRoleNamespacePermissionV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleNamespacePermissionV3NotFound:
		response := &AdminGetRoleNamespacePermissionV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleNamespacePermissionV3InternalServerError:
		response := &AdminGetRoleNamespacePermissionV3Response{}
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
