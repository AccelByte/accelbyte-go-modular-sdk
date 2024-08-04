// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package clients_config_v3

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new clients config v3 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for clients config v3 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListClientAvailablePermissionsShort(params *AdminListClientAvailablePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientAvailablePermissionsOK, error)
	AdminUpdateAvailablePermissionsByModuleShort(params *AdminUpdateAvailablePermissionsByModuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAvailablePermissionsByModuleNoContent, error)
	AdminDeleteConfigPermissionsByGroupShort(params *AdminDeleteConfigPermissionsByGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigPermissionsByGroupNoContent, error)
	AdminListClientTemplatesShort(params *AdminListClientTemplatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientTemplatesOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListClientAvailablePermissionsShort list client available permissions
List Client available permissions
*/
func (a *Client) AdminListClientAvailablePermissionsShort(params *AdminListClientAvailablePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientAvailablePermissionsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListClientAvailablePermissionsParams()
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
		ID:                 "AdminListClientAvailablePermissions",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListClientAvailablePermissionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListClientAvailablePermissionsOK:
		return v, nil
	case *AdminListClientAvailablePermissionsUnauthorized:
		return nil, v
	case *AdminListClientAvailablePermissionsForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAvailablePermissionsByModuleShort update or create client permissions module
Update Client available permissions, if module or group not exists, it will auto create.
*/
func (a *Client) AdminUpdateAvailablePermissionsByModuleShort(params *AdminUpdateAvailablePermissionsByModuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAvailablePermissionsByModuleNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAvailablePermissionsByModuleParams()
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
		ID:                 "AdminUpdateAvailablePermissionsByModule",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAvailablePermissionsByModuleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAvailablePermissionsByModuleNoContent:
		return v, nil
	case *AdminUpdateAvailablePermissionsByModuleUnauthorized:
		return nil, v
	case *AdminUpdateAvailablePermissionsByModuleForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteConfigPermissionsByGroupShort delete client config permissions by module and group
Delete Client config permissions by module and group.
*/
func (a *Client) AdminDeleteConfigPermissionsByGroupShort(params *AdminDeleteConfigPermissionsByGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigPermissionsByGroupNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteConfigPermissionsByGroupParams()
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
		ID:                 "AdminDeleteConfigPermissionsByGroup",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteConfigPermissionsByGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteConfigPermissionsByGroupNoContent:
		return v, nil
	case *AdminDeleteConfigPermissionsByGroupUnauthorized:
		return nil, v
	case *AdminDeleteConfigPermissionsByGroupForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListClientTemplatesShort list client templates
List client templates
*/
func (a *Client) AdminListClientTemplatesShort(params *AdminListClientTemplatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientTemplatesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListClientTemplatesParams()
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
		ID:                 "AdminListClientTemplates",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/clientConfig/templates",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListClientTemplatesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListClientTemplatesOK:
		return v, nil
	case *AdminListClientTemplatesUnauthorized:
		return nil, v
	case *AdminListClientTemplatesForbidden:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
