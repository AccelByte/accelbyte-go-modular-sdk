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
	AdminListClientAvailablePermissionsShort(params *AdminListClientAvailablePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientAvailablePermissionsResponse, error)
	AdminUpdateAvailablePermissionsByModuleShort(params *AdminUpdateAvailablePermissionsByModuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAvailablePermissionsByModuleResponse, error)
	AdminDeleteConfigPermissionsByGroupShort(params *AdminDeleteConfigPermissionsByGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigPermissionsByGroupResponse, error)
	AdminUpdateModulePackageShort(params *AdminUpdateModulePackageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateModulePackageResponse, error)
	AdminListClientTemplatesShort(params *AdminListClientTemplatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientTemplatesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListClientAvailablePermissionsShort list client available permissions
Lists all available client permissions.
*/
func (a *Client) AdminListClientAvailablePermissionsShort(params *AdminListClientAvailablePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientAvailablePermissionsResponse, error) {
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
		response := &AdminListClientAvailablePermissionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListClientAvailablePermissionsUnauthorized:
		response := &AdminListClientAvailablePermissionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListClientAvailablePermissionsForbidden:
		response := &AdminListClientAvailablePermissionsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAvailablePermissionsByModuleShort update or create client permissions module
Updates client available permissions. If the specified module or group does not exist, it will be automatically created.
*/
func (a *Client) AdminUpdateAvailablePermissionsByModuleShort(params *AdminUpdateAvailablePermissionsByModuleParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAvailablePermissionsByModuleResponse, error) {
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
		response := &AdminUpdateAvailablePermissionsByModuleResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateAvailablePermissionsByModuleUnauthorized:
		response := &AdminUpdateAvailablePermissionsByModuleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAvailablePermissionsByModuleForbidden:
		response := &AdminUpdateAvailablePermissionsByModuleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteConfigPermissionsByGroupShort delete client config permissions by module and group
Delete Client config permissions by module and group.
*/
func (a *Client) AdminDeleteConfigPermissionsByGroupShort(params *AdminDeleteConfigPermissionsByGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteConfigPermissionsByGroupResponse, error) {
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
		response := &AdminDeleteConfigPermissionsByGroupResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteConfigPermissionsByGroupUnauthorized:
		response := &AdminDeleteConfigPermissionsByGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteConfigPermissionsByGroupForbidden:
		response := &AdminDeleteConfigPermissionsByGroupResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateModulePackageShort set permission module package info
Sets the package info for a permission module. Ignores the module if it is not found.
*/
func (a *Client) AdminUpdateModulePackageShort(params *AdminUpdateModulePackageParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateModulePackageResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateModulePackageParams()
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
		ID:                 "AdminUpdateModulePackage",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/clientConfig/permissions/package",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateModulePackageReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateModulePackageNoContent:
		response := &AdminUpdateModulePackageResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateModulePackageUnauthorized:
		response := &AdminUpdateModulePackageResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateModulePackageForbidden:
		response := &AdminUpdateModulePackageResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListClientTemplatesShort list client templates
Lists all available client templates.
*/
func (a *Client) AdminListClientTemplatesShort(params *AdminListClientTemplatesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListClientTemplatesResponse, error) {
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
		response := &AdminListClientTemplatesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListClientTemplatesUnauthorized:
		response := &AdminListClientTemplatesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListClientTemplatesForbidden:
		response := &AdminListClientTemplatesResponse{}
		response.Error403 = v.Payload

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
