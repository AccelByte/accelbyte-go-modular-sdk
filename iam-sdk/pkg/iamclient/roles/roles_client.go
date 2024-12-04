// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new roles API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for roles API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetRolesShort(params *GetRolesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRolesResponse, error)
	CreateRoleShort(params *CreateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRoleResponse, error)
	GetRoleShort(params *GetRoleParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleResponse, error)
	UpdateRoleShort(params *UpdateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRoleResponse, error)
	DeleteRoleShort(params *DeleteRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRoleResponse, error)
	GetRoleAdminStatusShort(params *GetRoleAdminStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleAdminStatusResponse, error)
	SetRoleAsAdminShort(params *SetRoleAsAdminParams, authInfo runtime.ClientAuthInfoWriter) (*SetRoleAsAdminResponse, error)
	RemoveRoleAdminShort(params *RemoveRoleAdminParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleAdminResponse, error)
	GetRoleManagersShort(params *GetRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleManagersResponse, error)
	AddRoleManagersShort(params *AddRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleManagersResponse, error)
	RemoveRoleManagersShort(params *RemoveRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleManagersResponse, error)
	GetRoleMembersShort(params *GetRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleMembersResponse, error)
	AddRoleMembersShort(params *AddRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleMembersResponse, error)
	RemoveRoleMembersShort(params *RemoveRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleMembersResponse, error)
	UpdateRolePermissionsShort(params *UpdateRolePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRolePermissionsResponse, error)
	AddRolePermissionShort(params *AddRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddRolePermissionResponse, error)
	DeleteRolePermissionShort(params *DeleteRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRolePermissionResponse, error)
	AdminGetRolesV3Short(params *AdminGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV3Response, error)
	AdminCreateRoleV3Short(params *AdminCreateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV3Response, error)
	AdminGetRoleV3Short(params *AdminGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV3Response, error)
	AdminDeleteRoleV3Short(params *AdminDeleteRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV3Response, error)
	AdminUpdateRoleV3Short(params *AdminUpdateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV3Response, error)
	AdminGetRoleAdminStatusV3Short(params *AdminGetRoleAdminStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleAdminStatusV3Response, error)
	AdminUpdateAdminRoleStatusV3Short(params *AdminUpdateAdminRoleStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAdminRoleStatusV3Response, error)
	AdminRemoveRoleAdminV3Short(params *AdminRemoveRoleAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleAdminV3Response, error)
	AdminGetRoleManagersV3Short(params *AdminGetRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleManagersV3Response, error)
	AdminAddRoleManagersV3Short(params *AdminAddRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleManagersV3Response, error)
	AdminRemoveRoleManagersV3Short(params *AdminRemoveRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleManagersV3Response, error)
	AdminGetRoleMembersV3Short(params *AdminGetRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleMembersV3Response, error)
	AdminAddRoleMembersV3Short(params *AdminAddRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleMembersV3Response, error)
	AdminRemoveRoleMembersV3Short(params *AdminRemoveRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleMembersV3Response, error)
	AdminUpdateRolePermissionsV3Short(params *AdminUpdateRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV3Response, error)
	AdminAddRolePermissionsV3Short(params *AdminAddRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV3Response, error)
	AdminDeleteRolePermissionsV3Short(params *AdminDeleteRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV3Response, error)
	AdminDeleteRolePermissionV3Short(params *AdminDeleteRolePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionV3Response, error)
	PublicGetRolesV3Short(params *PublicGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRolesV3Response, error)
	PublicGetRoleV3Short(params *PublicGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRoleV3Response, error)
	AdminGetRolesV4Short(params *AdminGetRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV4Response, error)
	AdminCreateRoleV4Short(params *AdminCreateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV4Response, error)
	AdminGetRoleV4Short(params *AdminGetRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV4Response, error)
	AdminDeleteRoleV4Short(params *AdminDeleteRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV4Response, error)
	AdminUpdateRoleV4Short(params *AdminUpdateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV4Response, error)
	AdminUpdateRolePermissionsV4Short(params *AdminUpdateRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV4Response, error)
	AdminAddRolePermissionsV4Short(params *AdminAddRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV4Response, error)
	AdminDeleteRolePermissionsV4Short(params *AdminDeleteRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV4Response, error)
	AdminListAssignedUsersV4Short(params *AdminListAssignedUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAssignedUsersV4Response, error)
	AdminAssignUserToRoleV4Short(params *AdminAssignUserToRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAssignUserToRoleV4Response, error)
	AdminRevokeUserFromRoleV4Short(params *AdminRevokeUserFromRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRevokeUserFromRoleV4Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetRolesShort get roles
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles [GET]_**
*/
func (a *Client) GetRolesShort(params *GetRolesParams, authInfo runtime.ClientAuthInfoWriter) (*GetRolesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRolesParams()
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
		ID:                 "GetRoles",
		Method:             "GET",
		PathPattern:        "/iam/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRolesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRolesOK:
		response := &GetRolesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRolesUnauthorized:
		response := &GetRolesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRolesForbidden:
		response := &GetRolesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateRoleShort create role
## The endpoint is going to be deprecated
Role can only be assigned to other users by the role's manager.

If role is an administrator role (i.e. AdminRole == true), it will list out the role's members.

Administrator role can be created only when at least 1 manager is specified.
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles [POST]_**
*/
func (a *Client) CreateRoleShort(params *CreateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRoleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRoleParams()
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
		ID:                 "CreateRole",
		Method:             "POST",
		PathPattern:        "/iam/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateRoleCreated:
		response := &CreateRoleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateRoleBadRequest:
		response := &CreateRoleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateRoleUnauthorized:
		response := &CreateRoleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateRoleForbidden:
		response := &CreateRoleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRoleShort get role
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId} [GET]_**
*/
func (a *Client) GetRoleShort(params *GetRoleParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleParams()
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
		ID:                 "GetRole",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRoleOK:
		response := &GetRoleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRoleUnauthorized:
		response := &GetRoleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleForbidden:
		response := &GetRoleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleNotFound:
		response := &GetRoleResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRoleShort update role
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId} [PATCH]_**
*/
func (a *Client) UpdateRoleShort(params *UpdateRoleParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRoleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRoleParams()
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
		ID:                 "UpdateRole",
		Method:             "PUT",
		PathPattern:        "/iam/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRoleOK:
		response := &UpdateRoleResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateRoleBadRequest:
		response := &UpdateRoleResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateRoleUnauthorized:
		response := &UpdateRoleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateRoleForbidden:
		response := &UpdateRoleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateRoleNotFound:
		response := &UpdateRoleResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRoleShort delete role
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId} [DELETE]_**
*/
func (a *Client) DeleteRoleShort(params *DeleteRoleParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRoleResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRoleParams()
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
		ID:                 "DeleteRole",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRoleReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRoleNoContent:
		response := &DeleteRoleResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteRoleUnauthorized:
		response := &DeleteRoleResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteRoleForbidden:
		response := &DeleteRoleResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteRoleNotFound:
		response := &DeleteRoleResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRoleAdminStatusShort get role admin status
## The endpoint is going to be deprecated
Admin roles has its members listed in the role.

### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/admin [GET]_**
*/
func (a *Client) GetRoleAdminStatusShort(params *GetRoleAdminStatusParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleAdminStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleAdminStatusParams()
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
		ID:                 "GetRoleAdminStatus",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleAdminStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRoleAdminStatusOK:
		response := &GetRoleAdminStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRoleAdminStatusBadRequest:
		response := &GetRoleAdminStatusResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleAdminStatusUnauthorized:
		response := &GetRoleAdminStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleAdminStatusForbidden:
		response := &GetRoleAdminStatusResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleAdminStatusNotFound:
		response := &GetRoleAdminStatusResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetRoleAsAdminShort set role as admin role
## The endpoint is going to be deprecated
Admin roles has its members listed in the role.

Role can be set as admin role only when it has at least 1 manager.

### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/admin [POST]_**
*/
func (a *Client) SetRoleAsAdminShort(params *SetRoleAsAdminParams, authInfo runtime.ClientAuthInfoWriter) (*SetRoleAsAdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetRoleAsAdminParams()
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
		ID:                 "SetRoleAsAdmin",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetRoleAsAdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetRoleAsAdminNoContent:
		response := &SetRoleAsAdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *SetRoleAsAdminBadRequest:
		response := &SetRoleAsAdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetRoleAsAdminUnauthorized:
		response := &SetRoleAsAdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetRoleAsAdminForbidden:
		response := &SetRoleAsAdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SetRoleAsAdminNotFound:
		response := &SetRoleAsAdminResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemoveRoleAdminShort remove role admin status
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/admin [DELETE]_**
*/
func (a *Client) RemoveRoleAdminShort(params *RemoveRoleAdminParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleAdminResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveRoleAdminParams()
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
		ID:                 "RemoveRoleAdmin",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveRoleAdminReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RemoveRoleAdminNoContent:
		response := &RemoveRoleAdminResponse{}

		response.IsSuccess = true

		return response, nil
	case *RemoveRoleAdminBadRequest:
		response := &RemoveRoleAdminResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveRoleAdminUnauthorized:
		response := &RemoveRoleAdminResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveRoleAdminForbidden:
		response := &RemoveRoleAdminResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveRoleAdminNotFound:
		response := &RemoveRoleAdminResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRoleManagersShort get role managers
## The endpoint is going to be deprecated
Role can only be assigned to other users by the role's manager.

### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/managers [GET]_**
*/
func (a *Client) GetRoleManagersShort(params *GetRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleManagersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleManagersParams()
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
		ID:                 "GetRoleManagers",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleManagersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRoleManagersOK:
		response := &GetRoleManagersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRoleManagersBadRequest:
		response := &GetRoleManagersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleManagersUnauthorized:
		response := &GetRoleManagersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleManagersForbidden:
		response := &GetRoleManagersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleManagersNotFound:
		response := &GetRoleManagersResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddRoleManagersShort add role managers
## The endpoint is going to be deprecated
Role can only be assigned to other users by the role's manager.

### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/managers [POST]_**
*/
func (a *Client) AddRoleManagersShort(params *AddRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleManagersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddRoleManagersParams()
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
		ID:                 "AddRoleManagers",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddRoleManagersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddRoleManagersNoContent:
		response := &AddRoleManagersResponse{}

		response.IsSuccess = true

		return response, nil
	case *AddRoleManagersBadRequest:
		response := &AddRoleManagersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddRoleManagersUnauthorized:
		response := &AddRoleManagersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddRoleManagersForbidden:
		response := &AddRoleManagersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddRoleManagersNotFound:
		response := &AddRoleManagersResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemoveRoleManagersShort remove role managers
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/managers [DELETE]_**
*/
func (a *Client) RemoveRoleManagersShort(params *RemoveRoleManagersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleManagersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveRoleManagersParams()
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
		ID:                 "RemoveRoleManagers",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveRoleManagersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RemoveRoleManagersNoContent:
		response := &RemoveRoleManagersResponse{}

		response.IsSuccess = true

		return response, nil
	case *RemoveRoleManagersBadRequest:
		response := &RemoveRoleManagersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveRoleManagersUnauthorized:
		response := &RemoveRoleManagersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveRoleManagersForbidden:
		response := &RemoveRoleManagersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveRoleManagersNotFound:
		response := &RemoveRoleManagersResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRoleMembersShort get role members
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/members [GET]_**
*/
func (a *Client) GetRoleMembersShort(params *GetRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*GetRoleMembersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRoleMembersParams()
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
		ID:                 "GetRoleMembers",
		Method:             "GET",
		PathPattern:        "/iam/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRoleMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRoleMembersOK:
		response := &GetRoleMembersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRoleMembersBadRequest:
		response := &GetRoleMembersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleMembersUnauthorized:
		response := &GetRoleMembersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleMembersForbidden:
		response := &GetRoleMembersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetRoleMembersNotFound:
		response := &GetRoleMembersResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddRoleMembersShort add role members
## The endpoint is going to be deprecated
Admin roles has its members listed in the role.

Role can only be assigned to other users by the role's manager.

### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/members [POST]_**
*/
func (a *Client) AddRoleMembersShort(params *AddRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*AddRoleMembersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddRoleMembersParams()
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
		ID:                 "AddRoleMembers",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddRoleMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddRoleMembersNoContent:
		response := &AddRoleMembersResponse{}

		response.IsSuccess = true

		return response, nil
	case *AddRoleMembersBadRequest:
		response := &AddRoleMembersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddRoleMembersUnauthorized:
		response := &AddRoleMembersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddRoleMembersForbidden:
		response := &AddRoleMembersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddRoleMembersNotFound:
		response := &AddRoleMembersResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RemoveRoleMembersShort remove role members
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/members [DELETE]_**
*/
func (a *Client) RemoveRoleMembersShort(params *RemoveRoleMembersParams, authInfo runtime.ClientAuthInfoWriter) (*RemoveRoleMembersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRemoveRoleMembersParams()
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
		ID:                 "RemoveRoleMembers",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RemoveRoleMembersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RemoveRoleMembersNoContent:
		response := &RemoveRoleMembersResponse{}

		response.IsSuccess = true

		return response, nil
	case *RemoveRoleMembersBadRequest:
		response := &RemoveRoleMembersResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveRoleMembersUnauthorized:
		response := &RemoveRoleMembersResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveRoleMembersForbidden:
		response := &RemoveRoleMembersResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RemoveRoleMembersNotFound:
		response := &RemoveRoleMembersResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRolePermissionsShort update role permissions
## The endpoint is going to be deprecated
This endpoint will REPLACE role's permissions with the ones defined in body

Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive

Syntax reference
Fields:
1. Seconds: 0-59 * / , -
2. Minutes: 0-59 * / , -
3. Hours: 0-23 * / , -
4. Day of month: 1-31 * / , - L W
5. Month: 1-12 JAN-DEC * / , -
6. Day of week: 0-6 SUN-SAT * / , - L #
7. Year: 1970-2099 * / , -

Special characters:
1. *: all values in the fields, e.g. * in seconds fields indicates every second
2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
3. ,: separate items of a list, e.g. MON,WED,FRI in day of week
4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.

### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/permissions [POST]_**
*/
func (a *Client) UpdateRolePermissionsShort(params *UpdateRolePermissionsParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRolePermissionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRolePermissionsParams()
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
		ID:                 "UpdateRolePermissions",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRolePermissionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRolePermissionsNoContent:
		response := &UpdateRolePermissionsResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateRolePermissionsBadRequest:
		response := &UpdateRolePermissionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateRolePermissionsUnauthorized:
		response := &UpdateRolePermissionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateRolePermissionsForbidden:
		response := &UpdateRolePermissionsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateRolePermissionsNotFound:
		response := &UpdateRolePermissionsResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddRolePermissionShort add role permission
## The endpoint is going to be deprecated
This endpoint will update existing permission (bitwise OR the action) if found one with same resource, otherwise it will append a new permission

Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive

Syntax reference
Fields:
- Seconds: 0-59 * / , -
- Minutes: 0-59 * / , -
- Hours: 0-23 * / , -
- Day of month: 1-31 * / , - L W
- Month: 1-12 JAN-DEC * / , -
- Day of week: 0-6 SUN-SAT * / , - L #
- Year: 1970-2099 * / , -

Special characters:
- **: all values in the fields, e.g. * in seconds fields indicates every second
- /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
- ,: separate items of a list, e.g. MON,WED,FRI in day of week
- -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
- L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
- W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
- #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.

### Endpoint migration guide
- **Substitute endpoint(update): _/iam/v3/admin/roles/{roleId}/permissions [PUT]_**
- **Substitute endpoint(create): _/iam/v3/admin/roles/{roleId}/permissions [POST]_**
*/
func (a *Client) AddRolePermissionShort(params *AddRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*AddRolePermissionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddRolePermissionParams()
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
		ID:                 "AddRolePermission",
		Method:             "POST",
		PathPattern:        "/iam/roles/{roleId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddRolePermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddRolePermissionNoContent:
		response := &AddRolePermissionResponse{}

		response.IsSuccess = true

		return response, nil
	case *AddRolePermissionBadRequest:
		response := &AddRolePermissionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddRolePermissionUnauthorized:
		response := &AddRolePermissionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddRolePermissionForbidden:
		response := &AddRolePermissionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddRolePermissionNotFound:
		response := &AddRolePermissionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRolePermissionShort delete role permission
## The endpoint is going to be deprecated
### Endpoint migration guide
- **Substitute endpoint: _/iam/v3/admin/roles/{roleId}/permissions/{resource}/{action} [DELETE]_**
- **Substitute endpoint: _/iam/v4/admin/roles/{roleId}/permissions [DELETE]_**
*/
func (a *Client) DeleteRolePermissionShort(params *DeleteRolePermissionParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRolePermissionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRolePermissionParams()
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
		ID:                 "DeleteRolePermission",
		Method:             "DELETE",
		PathPattern:        "/iam/roles/{roleId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRolePermissionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRolePermissionNoContent:
		response := &DeleteRolePermissionResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteRolePermissionBadRequest:
		response := &DeleteRolePermissionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteRolePermissionUnauthorized:
		response := &DeleteRolePermissionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteRolePermissionForbidden:
		response := &DeleteRolePermissionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteRolePermissionNotFound:
		response := &DeleteRolePermissionResponse{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRolesV3Short get roles
action code: 10414
*/
func (a *Client) AdminGetRolesV3Short(params *AdminGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRolesV3Params()
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
		ID:                 "AdminGetRolesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRolesV3OK:
		response := &AdminGetRolesV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRolesV3BadRequest:
		response := &AdminGetRolesV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRolesV3Unauthorized:
		response := &AdminGetRolesV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRolesV3Forbidden:
		response := &AdminGetRolesV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRolesV3InternalServerError:
		response := &AdminGetRolesV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateRoleV3Short create role
Create role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- permissions: specify the permission that this role have
- managers: specify list of user that will act as the managers of this role
- members: specify list of user that will act as the members of this role
- adminRole: specify if role is for admin user (default false)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted or not (default true)

action code: 10401
*/
func (a *Client) AdminCreateRoleV3Short(params *AdminCreateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateRoleV3Params()
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
		ID:                 "AdminCreateRoleV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateRoleV3Created:
		response := &AdminCreateRoleV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateRoleV3BadRequest:
		response := &AdminCreateRoleV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateRoleV3Unauthorized:
		response := &AdminCreateRoleV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateRoleV3Forbidden:
		response := &AdminCreateRoleV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateRoleV3InternalServerError:
		response := &AdminCreateRoleV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleV3Short get role
action code: 10419
*/
func (a *Client) AdminGetRoleV3Short(params *AdminGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleV3Params()
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
		ID:                 "AdminGetRoleV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleV3OK:
		response := &AdminGetRoleV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRoleV3BadRequest:
		response := &AdminGetRoleV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleV3Unauthorized:
		response := &AdminGetRoleV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleV3Forbidden:
		response := &AdminGetRoleV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleV3NotFound:
		response := &AdminGetRoleV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleV3InternalServerError:
		response := &AdminGetRoleV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRoleV3Short delete role
action code: 10403
*/
func (a *Client) AdminDeleteRoleV3Short(params *AdminDeleteRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRoleV3Params()
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
		ID:                 "AdminDeleteRoleV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRoleV3NoContent:
		response := &AdminDeleteRoleV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteRoleV3BadRequest:
		response := &AdminDeleteRoleV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRoleV3Unauthorized:
		response := &AdminDeleteRoleV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRoleV3Forbidden:
		response := &AdminDeleteRoleV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRoleV3NotFound:
		response := &AdminDeleteRoleV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRoleV3Conflict:
		response := &AdminDeleteRoleV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRoleV3InternalServerError:
		response := &AdminDeleteRoleV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRoleV3Short update role
Update role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted or not (optional)

action code: 10402
*/
func (a *Client) AdminUpdateRoleV3Short(params *AdminUpdateRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRoleV3Params()
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
		ID:                 "AdminUpdateRoleV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRoleV3OK:
		response := &AdminUpdateRoleV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateRoleV3BadRequest:
		response := &AdminUpdateRoleV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleV3Unauthorized:
		response := &AdminUpdateRoleV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleV3Forbidden:
		response := &AdminUpdateRoleV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleV3NotFound:
		response := &AdminUpdateRoleV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleV3InternalServerError:
		response := &AdminUpdateRoleV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleAdminStatusV3Short get role admin status
Admin roles has its members listed in the role.
action code: 10420
*/
func (a *Client) AdminGetRoleAdminStatusV3Short(params *AdminGetRoleAdminStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleAdminStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleAdminStatusV3Params()
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
		ID:                 "AdminGetRoleAdminStatusV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleAdminStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleAdminStatusV3OK:
		response := &AdminGetRoleAdminStatusV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRoleAdminStatusV3BadRequest:
		response := &AdminGetRoleAdminStatusV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleAdminStatusV3Unauthorized:
		response := &AdminGetRoleAdminStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleAdminStatusV3Forbidden:
		response := &AdminGetRoleAdminStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleAdminStatusV3NotFound:
		response := &AdminGetRoleAdminStatusV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleAdminStatusV3InternalServerError:
		response := &AdminGetRoleAdminStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateAdminRoleStatusV3Short set role as admin role
Admin roles has its members listed in the role.
Role can be set as admin role only when it has at least 1 manager.
action code: 10412
*/
func (a *Client) AdminUpdateAdminRoleStatusV3Short(params *AdminUpdateAdminRoleStatusV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateAdminRoleStatusV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateAdminRoleStatusV3Params()
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
		ID:                 "AdminUpdateAdminRoleStatusV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateAdminRoleStatusV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateAdminRoleStatusV3NoContent:
		response := &AdminUpdateAdminRoleStatusV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateAdminRoleStatusV3BadRequest:
		response := &AdminUpdateAdminRoleStatusV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAdminRoleStatusV3Unauthorized:
		response := &AdminUpdateAdminRoleStatusV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAdminRoleStatusV3Forbidden:
		response := &AdminUpdateAdminRoleStatusV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAdminRoleStatusV3NotFound:
		response := &AdminUpdateAdminRoleStatusV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateAdminRoleStatusV3InternalServerError:
		response := &AdminUpdateAdminRoleStatusV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveRoleAdminV3Short remove role admin status
code: 10413
*/
func (a *Client) AdminRemoveRoleAdminV3Short(params *AdminRemoveRoleAdminV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleAdminV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveRoleAdminV3Params()
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
		ID:                 "AdminRemoveRoleAdminV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/admin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveRoleAdminV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveRoleAdminV3NoContent:
		response := &AdminRemoveRoleAdminV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminRemoveRoleAdminV3BadRequest:
		response := &AdminRemoveRoleAdminV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleAdminV3Unauthorized:
		response := &AdminRemoveRoleAdminV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleAdminV3Forbidden:
		response := &AdminRemoveRoleAdminV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleAdminV3NotFound:
		response := &AdminRemoveRoleAdminV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleAdminV3InternalServerError:
		response := &AdminRemoveRoleAdminV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleManagersV3Short get role managers
Role can only be assigned to other users by the role's manager.
action code: 10415
*/
func (a *Client) AdminGetRoleManagersV3Short(params *AdminGetRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleManagersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleManagersV3Params()
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
		ID:                 "AdminGetRoleManagersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleManagersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleManagersV3OK:
		response := &AdminGetRoleManagersV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRoleManagersV3BadRequest:
		response := &AdminGetRoleManagersV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleManagersV3Unauthorized:
		response := &AdminGetRoleManagersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleManagersV3Forbidden:
		response := &AdminGetRoleManagersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleManagersV3NotFound:
		response := &AdminGetRoleManagersV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleManagersV3InternalServerError:
		response := &AdminGetRoleManagersV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddRoleManagersV3Short add role managers
Role can only be assigned to other users by the role's manager.
action code: 10408
*/
func (a *Client) AdminAddRoleManagersV3Short(params *AdminAddRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleManagersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRoleManagersV3Params()
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
		ID:                 "AdminAddRoleManagersV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRoleManagersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddRoleManagersV3NoContent:
		response := &AdminAddRoleManagersV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminAddRoleManagersV3BadRequest:
		response := &AdminAddRoleManagersV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRoleManagersV3Unauthorized:
		response := &AdminAddRoleManagersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRoleManagersV3Forbidden:
		response := &AdminAddRoleManagersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRoleManagersV3NotFound:
		response := &AdminAddRoleManagersV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRoleManagersV3Conflict:
		response := &AdminAddRoleManagersV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveRoleManagersV3Short remove role managers
Role can only be assigned to other users by the role's manager.
action code: 10409
*/
func (a *Client) AdminRemoveRoleManagersV3Short(params *AdminRemoveRoleManagersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleManagersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveRoleManagersV3Params()
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
		ID:                 "AdminRemoveRoleManagersV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/managers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveRoleManagersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveRoleManagersV3NoContent:
		response := &AdminRemoveRoleManagersV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminRemoveRoleManagersV3BadRequest:
		response := &AdminRemoveRoleManagersV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleManagersV3Unauthorized:
		response := &AdminRemoveRoleManagersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleManagersV3Forbidden:
		response := &AdminRemoveRoleManagersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleManagersV3NotFound:
		response := &AdminRemoveRoleManagersV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleManagersV3InternalServerError:
		response := &AdminRemoveRoleManagersV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleMembersV3Short get role members
Admin roles has its members listed in the role.
action code: 10416
*/
func (a *Client) AdminGetRoleMembersV3Short(params *AdminGetRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleMembersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleMembersV3Params()
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
		ID:                 "AdminGetRoleMembersV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleMembersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleMembersV3OK:
		response := &AdminGetRoleMembersV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRoleMembersV3BadRequest:
		response := &AdminGetRoleMembersV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleMembersV3Unauthorized:
		response := &AdminGetRoleMembersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleMembersV3Forbidden:
		response := &AdminGetRoleMembersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleMembersV3NotFound:
		response := &AdminGetRoleMembersV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleMembersV3InternalServerError:
		response := &AdminGetRoleMembersV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddRoleMembersV3Short add role members
Admin roles has its members listed in the role.
Role can only be assigned to other users by the role's manager.
action code: 10410
*/
func (a *Client) AdminAddRoleMembersV3Short(params *AdminAddRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRoleMembersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRoleMembersV3Params()
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
		ID:                 "AdminAddRoleMembersV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRoleMembersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddRoleMembersV3NoContent:
		response := &AdminAddRoleMembersV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminAddRoleMembersV3BadRequest:
		response := &AdminAddRoleMembersV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRoleMembersV3Unauthorized:
		response := &AdminAddRoleMembersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRoleMembersV3Forbidden:
		response := &AdminAddRoleMembersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRoleMembersV3NotFound:
		response := &AdminAddRoleMembersV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRoleMembersV3Conflict:
		response := &AdminAddRoleMembersV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRoleMembersV3InternalServerError:
		response := &AdminAddRoleMembersV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRemoveRoleMembersV3Short remove role members
Admin roles has its members listed in the role.
Role can only be assigned to other users by the role's manager.
action code: 10411
Deprecate: Suggest to use this: AdminRevokeUserFromRoleV4
*/
func (a *Client) AdminRemoveRoleMembersV3Short(params *AdminRemoveRoleMembersV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRemoveRoleMembersV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRemoveRoleMembersV3Params()
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
		ID:                 "AdminRemoveRoleMembersV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRemoveRoleMembersV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRemoveRoleMembersV3NoContent:
		response := &AdminRemoveRoleMembersV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminRemoveRoleMembersV3BadRequest:
		response := &AdminRemoveRoleMembersV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleMembersV3Unauthorized:
		response := &AdminRemoveRoleMembersV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleMembersV3Forbidden:
		response := &AdminRemoveRoleMembersV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleMembersV3NotFound:
		response := &AdminRemoveRoleMembersV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRemoveRoleMembersV3InternalServerError:
		response := &AdminRemoveRoleMembersV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRolePermissionsV3Short update role permissions
This endpoint will REPLACE role's permissions with the ones defined in body
action code: 10405
Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
Syntax reference
Fields:
1. Seconds: 0-59 * / , -
1. Minutes: 0-59 * / , -
1. Hours: 0-23 * / , -
1. Day of month: 1-31 * / , - L W
1. Month: 1-12 JAN-DEC * / , -
1. Day of week: 0-6 SUN-SAT * / , - L #
1. Year: 1970-2099 * / , -

Special characters:
1. *: all values in the fields, e.g. * in seconds fields indicates every second
1. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
1. ,: separate items of a list, e.g. MON,WED,FRI in day of week
1. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
1. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
1. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
1. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminUpdateRolePermissionsV3Short(params *AdminUpdateRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRolePermissionsV3Params()
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
		ID:                 "AdminUpdateRolePermissionsV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRolePermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRolePermissionsV3NoContent:
		response := &AdminUpdateRolePermissionsV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateRolePermissionsV3BadRequest:
		response := &AdminUpdateRolePermissionsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRolePermissionsV3Unauthorized:
		response := &AdminUpdateRolePermissionsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRolePermissionsV3Forbidden:
		response := &AdminUpdateRolePermissionsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRolePermissionsV3NotFound:
		response := &AdminUpdateRolePermissionsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRolePermissionsV3InternalServerError:
		response := &AdminUpdateRolePermissionsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddRolePermissionsV3Short add role permissions
This endpoint will ATTACH permission(s) into the role
action code: 10404
Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
Syntax reference
Fields:
1. Seconds: 0-59 * / , -
1. Minutes: 0-59 * / , -
1. Hours: 0-23 * / , -
1. Day of month: 1-31 * / , - L W
1. Month: 1-12 JAN-DEC * / , -
1. Day of week: 0-6 SUN-SAT * / , - L #
1. Year: 1970-2099 * / , -

Special characters:
1. *: all values in the fields, e.g. * in seconds fields indicates every second
1. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
1. ,: separate items of a list, e.g. MON,WED,FRI in day of week
1. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
1. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
1. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
1. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminAddRolePermissionsV3Short(params *AdminAddRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRolePermissionsV3Params()
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
		ID:                 "AdminAddRolePermissionsV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRolePermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddRolePermissionsV3NoContent:
		response := &AdminAddRolePermissionsV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminAddRolePermissionsV3BadRequest:
		response := &AdminAddRolePermissionsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRolePermissionsV3Unauthorized:
		response := &AdminAddRolePermissionsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRolePermissionsV3Forbidden:
		response := &AdminAddRolePermissionsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRolePermissionsV3NotFound:
		response := &AdminAddRolePermissionsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRolePermissionsV3InternalServerError:
		response := &AdminAddRolePermissionsV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRolePermissionsV3Short delete role
*/
func (a *Client) AdminDeleteRolePermissionsV3Short(params *AdminDeleteRolePermissionsV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRolePermissionsV3Params()
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
		ID:                 "AdminDeleteRolePermissionsV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRolePermissionsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRolePermissionsV3NoContent:
		response := &AdminDeleteRolePermissionsV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteRolePermissionsV3Unauthorized:
		response := &AdminDeleteRolePermissionsV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRolePermissionsV3Forbidden:
		response := &AdminDeleteRolePermissionsV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRolePermissionsV3NotFound:
		response := &AdminDeleteRolePermissionsV3Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRolePermissionV3Short delete role permission
action code: 10406
*/
func (a *Client) AdminDeleteRolePermissionV3Short(params *AdminDeleteRolePermissionV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRolePermissionV3Params()
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
		ID:                 "AdminDeleteRolePermissionV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/roles/{roleId}/permissions/{resource}/{action}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRolePermissionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRolePermissionV3NoContent:
		response := &AdminDeleteRolePermissionV3Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteRolePermissionV3BadRequest:
		response := &AdminDeleteRolePermissionV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRolePermissionV3Unauthorized:
		response := &AdminDeleteRolePermissionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRolePermissionV3Forbidden:
		response := &AdminDeleteRolePermissionV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRolePermissionV3NotFound:
		response := &AdminDeleteRolePermissionV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRolePermissionV3InternalServerError:
		response := &AdminDeleteRolePermissionV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRolesV3Short get roles
This endpoint is used to get all non-admin role.
action code: 10418
*/
func (a *Client) PublicGetRolesV3Short(params *PublicGetRolesV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRolesV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRolesV3Params()
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
		ID:                 "PublicGetRolesV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRolesV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRolesV3OK:
		response := &PublicGetRolesV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetRolesV3BadRequest:
		response := &PublicGetRolesV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetRoleV3Short get public role
This endpoint is used to get non-admin role based on specify roleId.
action code : 10417
*/
func (a *Client) PublicGetRoleV3Short(params *PublicGetRoleV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetRoleV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetRoleV3Params()
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
		ID:                 "PublicGetRoleV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetRoleV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetRoleV3OK:
		response := &PublicGetRoleV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetRoleV3BadRequest:
		response := &PublicGetRoleV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetRoleV3NotFound:
		response := &PublicGetRoleV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRolesV4Short get roles
action code: 10414
*/
func (a *Client) AdminGetRolesV4Short(params *AdminGetRolesV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRolesV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRolesV4Params()
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
		ID:                 "AdminGetRolesV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRolesV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRolesV4OK:
		response := &AdminGetRolesV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRolesV4BadRequest:
		response := &AdminGetRolesV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRolesV4Unauthorized:
		response := &AdminGetRolesV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRolesV4Forbidden:
		response := &AdminGetRolesV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRolesV4InternalServerError:
		response := &AdminGetRolesV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateRoleV4Short create role
Create role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- adminRole: specify if role is for admin user (default false)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted (default true)

action code: 10401
*/
func (a *Client) AdminCreateRoleV4Short(params *AdminCreateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateRoleV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateRoleV4Params()
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
		ID:                 "AdminCreateRoleV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateRoleV4Created:
		response := &AdminCreateRoleV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateRoleV4BadRequest:
		response := &AdminCreateRoleV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateRoleV4Unauthorized:
		response := &AdminCreateRoleV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateRoleV4Forbidden:
		response := &AdminCreateRoleV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateRoleV4InternalServerError:
		response := &AdminCreateRoleV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetRoleV4Short get role
action code: 10419
*/
func (a *Client) AdminGetRoleV4Short(params *AdminGetRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetRoleV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetRoleV4Params()
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
		ID:                 "AdminGetRoleV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetRoleV4OK:
		response := &AdminGetRoleV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetRoleV4BadRequest:
		response := &AdminGetRoleV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleV4Unauthorized:
		response := &AdminGetRoleV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleV4Forbidden:
		response := &AdminGetRoleV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleV4NotFound:
		response := &AdminGetRoleV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetRoleV4InternalServerError:
		response := &AdminGetRoleV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRoleV4Short delete role
Removes role ID from user's Roles and NamespaceRoles before deleting the role.
action code: 10403
*/
func (a *Client) AdminDeleteRoleV4Short(params *AdminDeleteRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRoleV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRoleV4Params()
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
		ID:                 "AdminDeleteRoleV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRoleV4NoContent:
		response := &AdminDeleteRoleV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteRoleV4BadRequest:
		response := &AdminDeleteRoleV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRoleV4Unauthorized:
		response := &AdminDeleteRoleV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRoleV4Forbidden:
		response := &AdminDeleteRoleV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRoleV4NotFound:
		response := &AdminDeleteRoleV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRoleV4InternalServerError:
		response := &AdminDeleteRoleV4Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRoleV4Short update role
Update role request body:
- roleName: specify role name, alphanumeric, cannot have special character (required)
- adminRole: specify if role is for admin user (default false)
- isWildcard: specify if role can be assigned to wildcard (*) namespace (default false)
- deletable: specify if role can be deleted (optional)

action code: 10402
*/
func (a *Client) AdminUpdateRoleV4Short(params *AdminUpdateRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRoleV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRoleV4Params()
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
		ID:                 "AdminUpdateRoleV4",
		Method:             "PATCH",
		PathPattern:        "/iam/v4/admin/roles/{roleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRoleV4OK:
		response := &AdminUpdateRoleV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateRoleV4BadRequest:
		response := &AdminUpdateRoleV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleV4Unauthorized:
		response := &AdminUpdateRoleV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleV4Forbidden:
		response := &AdminUpdateRoleV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRoleV4NotFound:
		response := &AdminUpdateRoleV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateRolePermissionsV4Short update role permissions
This endpoint will REPLACE role's permissions with the ones defined in body
action code: 10405
Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
Syntax reference
Fields:
1. Seconds: 0-59 * / , -
2. Minutes: 0-59 * / , -
3. Hours: 0-23 * / , -
4. Day of month: 1-31 * / , - L W
5. Month: 1-12 JAN-DEC * / , -
6. Day of week: 0-6 SUN-SAT * / , - L #
7. Year: 1970-2099 * / , -

Special characters:
1. *: all values in the fields, e.g. * in seconds fields indicates every second
2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
3. ,: separate items of a list, e.g. MON,WED,FRI in day of week
4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminUpdateRolePermissionsV4Short(params *AdminUpdateRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateRolePermissionsV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateRolePermissionsV4Params()
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
		ID:                 "AdminUpdateRolePermissionsV4",
		Method:             "PUT",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateRolePermissionsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateRolePermissionsV4OK:
		response := &AdminUpdateRolePermissionsV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateRolePermissionsV4BadRequest:
		response := &AdminUpdateRolePermissionsV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRolePermissionsV4Unauthorized:
		response := &AdminUpdateRolePermissionsV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRolePermissionsV4Forbidden:
		response := &AdminUpdateRolePermissionsV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateRolePermissionsV4NotFound:
		response := &AdminUpdateRolePermissionsV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAddRolePermissionsV4Short add role permissions v4
This endpoint will ATTACH permission(s) into the role
action code: 10404

Schedule contains cron string or date range (both are UTC, also in cron syntax) to indicate when a permission and action are in effect.
Both schedule types accepts quartz compatible cron syntax e.g. * * * * * * *.
In ranged schedule, first element will be start date, and second one will be end date
If schedule is set, the scheduled action must be valid too, that is between 1 to 15, inclusive
Syntax reference
Fields:
1. Seconds: 0-59 * / , -
2. Minutes: 0-59 * / , -
3. Hours: 0-23 * / , -
4. Day of month: 1-31 * / , - L W
5. Month: 1-12 JAN-DEC * / , -
6. Day of week: 0-6 SUN-SAT * / , - L #
7. Year: 1970-2099 * / , -

Special characters:
1. *: all values in the fields, e.g. * in seconds fields indicates every second
2. /: increments of ranges, e.g. 3-59/15 in the minute field indicate the third minute of the hour and every 15 minutes thereafter
3. ,: separate items of a list, e.g. MON,WED,FRI in day of week
4. -: range, e.g. 2010-2018 indicates every year between 2010 and 2018, inclusive
5. L: last, e.g. When used in the day-of-week field, it allows you to specify constructs such as "the last Friday" (5L) of a given month. In the day-of-month field, it specifies the last day of the month.
6. W: business day, e.g. if you were to specify 15W as the value for the day-of-month field, the meaning is: "the nearest business day to the 15th of the month."
7. #: must be followed by a number between one and five. It allows you to specify constructs such as "the second Friday" of a given month.
*/
func (a *Client) AdminAddRolePermissionsV4Short(params *AdminAddRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAddRolePermissionsV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAddRolePermissionsV4Params()
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
		ID:                 "AdminAddRolePermissionsV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAddRolePermissionsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAddRolePermissionsV4OK:
		response := &AdminAddRolePermissionsV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminAddRolePermissionsV4BadRequest:
		response := &AdminAddRolePermissionsV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRolePermissionsV4Unauthorized:
		response := &AdminAddRolePermissionsV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRolePermissionsV4Forbidden:
		response := &AdminAddRolePermissionsV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAddRolePermissionsV4NotFound:
		response := &AdminAddRolePermissionsV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteRolePermissionsV4Short delete role permission v4
*/
func (a *Client) AdminDeleteRolePermissionsV4Short(params *AdminDeleteRolePermissionsV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteRolePermissionsV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteRolePermissionsV4Params()
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
		ID:                 "AdminDeleteRolePermissionsV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteRolePermissionsV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteRolePermissionsV4NoContent:
		response := &AdminDeleteRolePermissionsV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteRolePermissionsV4Unauthorized:
		response := &AdminDeleteRolePermissionsV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRolePermissionsV4Forbidden:
		response := &AdminDeleteRolePermissionsV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteRolePermissionsV4NotFound:
		response := &AdminDeleteRolePermissionsV4Response{}

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListAssignedUsersV4Short get role's assigned users
Query all users that has the specified role.
action code: 10416
*/
func (a *Client) AdminListAssignedUsersV4Short(params *AdminListAssignedUsersV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminListAssignedUsersV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListAssignedUsersV4Params()
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
		ID:                 "AdminListAssignedUsersV4",
		Method:             "GET",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListAssignedUsersV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListAssignedUsersV4OK:
		response := &AdminListAssignedUsersV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListAssignedUsersV4BadRequest:
		response := &AdminListAssignedUsersV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAssignedUsersV4Unauthorized:
		response := &AdminListAssignedUsersV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAssignedUsersV4Forbidden:
		response := &AdminListAssignedUsersV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListAssignedUsersV4NotFound:
		response := &AdminListAssignedUsersV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminAssignUserToRoleV4Short assign user to role
Parameters:
- **userId**: string (required)
- **namespace**: string (userâs namespace) (required)
- **assignedNamespaces**: array of string (namespaces to be assigned on role) (required)

action code: 10410
*/
func (a *Client) AdminAssignUserToRoleV4Short(params *AdminAssignUserToRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminAssignUserToRoleV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminAssignUserToRoleV4Params()
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
		ID:                 "AdminAssignUserToRoleV4",
		Method:             "POST",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminAssignUserToRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminAssignUserToRoleV4Created:
		response := &AdminAssignUserToRoleV4Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminAssignUserToRoleV4BadRequest:
		response := &AdminAssignUserToRoleV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAssignUserToRoleV4Unauthorized:
		response := &AdminAssignUserToRoleV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAssignUserToRoleV4Forbidden:
		response := &AdminAssignUserToRoleV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAssignUserToRoleV4NotFound:
		response := &AdminAssignUserToRoleV4Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAssignUserToRoleV4Conflict:
		response := &AdminAssignUserToRoleV4Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminAssignUserToRoleV4UnprocessableEntity:
		response := &AdminAssignUserToRoleV4Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRevokeUserFromRoleV4Short revoke user from role
Current implementation will revoke user from role in all assigned namespaces.

Parameters:
- userId: string (required)
- namespace: string (userâs namespace) (required)

action code: 10411
*/
func (a *Client) AdminRevokeUserFromRoleV4Short(params *AdminRevokeUserFromRoleV4Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRevokeUserFromRoleV4Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRevokeUserFromRoleV4Params()
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
		ID:                 "AdminRevokeUserFromRoleV4",
		Method:             "DELETE",
		PathPattern:        "/iam/v4/admin/roles/{roleId}/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRevokeUserFromRoleV4Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRevokeUserFromRoleV4NoContent:
		response := &AdminRevokeUserFromRoleV4Response{}

		response.IsSuccess = true

		return response, nil
	case *AdminRevokeUserFromRoleV4BadRequest:
		response := &AdminRevokeUserFromRoleV4Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRevokeUserFromRoleV4Unauthorized:
		response := &AdminRevokeUserFromRoleV4Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRevokeUserFromRoleV4Forbidden:
		response := &AdminRevokeUserFromRoleV4Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRevokeUserFromRoleV4NotFound:
		response := &AdminRevokeUserFromRoleV4Response{}
		response.Error404 = v.Payload

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
