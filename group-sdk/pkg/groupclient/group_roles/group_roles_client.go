// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group_roles

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new group roles API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for group roles API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetMemberRolesListAdminV1Short(params *GetMemberRolesListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetMemberRolesListAdminV1Response, error)
	CreateMemberRoleAdminV1Short(params *CreateMemberRoleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateMemberRoleAdminV1Response, error)
	GetSingleMemberRoleAdminV1Short(params *GetSingleMemberRoleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleMemberRoleAdminV1Response, error)
	DeleteMemberRoleAdminV1Short(params *DeleteMemberRoleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteMemberRoleAdminV1Response, error)
	UpdateMemberRoleAdminV1Short(params *UpdateMemberRoleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateMemberRoleAdminV1Response, error)
	UpdateMemberRolePermissionAdminV1Short(params *UpdateMemberRolePermissionAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateMemberRolePermissionAdminV1Response, error)
	GetMemberRolesListPublicV1Short(params *GetMemberRolesListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetMemberRolesListPublicV1Response, error)
	UpdateMemberRolePublicV1Short(params *UpdateMemberRolePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateMemberRolePublicV1Response, error)
	DeleteMemberRolePublicV1Short(params *DeleteMemberRolePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteMemberRolePublicV1Response, error)
	GetMemberRolesListPublicV2Short(params *GetMemberRolesListPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetMemberRolesListPublicV2Response, error)
	UpdateMemberRolePublicV2Short(params *UpdateMemberRolePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateMemberRolePublicV2Response, error)
	DeleteMemberRolePublicV2Short(params *DeleteMemberRolePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteMemberRolePublicV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetMemberRolesListAdminV1Short get all list of member roles
This endpoint is used to get list of member roles

Action Code: 73201
*/
func (a *Client) GetMemberRolesListAdminV1Short(params *GetMemberRolesListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetMemberRolesListAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMemberRolesListAdminV1Params()
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
		ID:                 "getMemberRolesListAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMemberRolesListAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMemberRolesListAdminV1OK:
		response := &GetMemberRolesListAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMemberRolesListAdminV1BadRequest:
		response := &GetMemberRolesListAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMemberRolesListAdminV1Unauthorized:
		response := &GetMemberRolesListAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMemberRolesListAdminV1Forbidden:
		response := &GetMemberRolesListAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMemberRolesListAdminV1InternalServerError:
		response := &GetMemberRolesListAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMemberRoleAdminV1Short create new member role
This endpoint is used to create new member role

Action Code: 73202

memberRolePermissions example value :

"action": 1

"resourceName": "GROUP:ROLE"

The changes will give user with that role have a permission to create a role for new group member
*/
func (a *Client) CreateMemberRoleAdminV1Short(params *CreateMemberRoleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateMemberRoleAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMemberRoleAdminV1Params()
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
		ID:                 "createMemberRoleAdminV1",
		Method:             "POST",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMemberRoleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateMemberRoleAdminV1Created:
		response := &CreateMemberRoleAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateMemberRoleAdminV1BadRequest:
		response := &CreateMemberRoleAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMemberRoleAdminV1Unauthorized:
		response := &CreateMemberRoleAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMemberRoleAdminV1Forbidden:
		response := &CreateMemberRoleAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMemberRoleAdminV1InternalServerError:
		response := &CreateMemberRoleAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSingleMemberRoleAdminV1Short get member role
This endpoint is used to get member role based on the role ID

Action Code: 73203
*/
func (a *Client) GetSingleMemberRoleAdminV1Short(params *GetSingleMemberRoleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleMemberRoleAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleMemberRoleAdminV1Params()
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
		ID:                 "getSingleMemberRoleAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleMemberRoleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSingleMemberRoleAdminV1OK:
		response := &GetSingleMemberRoleAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSingleMemberRoleAdminV1BadRequest:
		response := &GetSingleMemberRoleAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSingleMemberRoleAdminV1Unauthorized:
		response := &GetSingleMemberRoleAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSingleMemberRoleAdminV1Forbidden:
		response := &GetSingleMemberRoleAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSingleMemberRoleAdminV1NotFound:
		response := &GetSingleMemberRoleAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetSingleMemberRoleAdminV1InternalServerError:
		response := &GetSingleMemberRoleAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMemberRoleAdminV1Short delete member role
This endpoint is used to delete member role. Any member role can't be deleted if the specific role is applied to the configuration (admin and member role)

Action Code: 73207
*/
func (a *Client) DeleteMemberRoleAdminV1Short(params *DeleteMemberRoleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteMemberRoleAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMemberRoleAdminV1Params()
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
		ID:                 "deleteMemberRoleAdminV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMemberRoleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteMemberRoleAdminV1NoContent:
		response := &DeleteMemberRoleAdminV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteMemberRoleAdminV1BadRequest:
		response := &DeleteMemberRoleAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRoleAdminV1Unauthorized:
		response := &DeleteMemberRoleAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRoleAdminV1Forbidden:
		response := &DeleteMemberRoleAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRoleAdminV1NotFound:
		response := &DeleteMemberRoleAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRoleAdminV1InternalServerError:
		response := &DeleteMemberRoleAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMemberRoleAdminV1Short update member role
This endpoint is used to update member role

Action Code: 73204
*/
func (a *Client) UpdateMemberRoleAdminV1Short(params *UpdateMemberRoleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateMemberRoleAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMemberRoleAdminV1Params()
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
		ID:                 "updateMemberRoleAdminV1",
		Method:             "PATCH",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMemberRoleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMemberRoleAdminV1OK:
		response := &UpdateMemberRoleAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateMemberRoleAdminV1BadRequest:
		response := &UpdateMemberRoleAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRoleAdminV1Unauthorized:
		response := &UpdateMemberRoleAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRoleAdminV1Forbidden:
		response := &UpdateMemberRoleAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRoleAdminV1NotFound:
		response := &UpdateMemberRoleAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRoleAdminV1InternalServerError:
		response := &UpdateMemberRoleAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMemberRolePermissionAdminV1Short update member role permission
This endpoint is used to update member role permission. It will replace the existing permission based on the request from this endpoint

Action Code: 73205

memberRolePermissions example value :

"action": 2

"resourceName": "GROUP:ROLE"

The changes will update user role to be able to read a role of other member
*/
func (a *Client) UpdateMemberRolePermissionAdminV1Short(params *UpdateMemberRolePermissionAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateMemberRolePermissionAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMemberRolePermissionAdminV1Params()
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
		ID:                 "updateMemberRolePermissionAdminV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMemberRolePermissionAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMemberRolePermissionAdminV1OK:
		response := &UpdateMemberRolePermissionAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateMemberRolePermissionAdminV1BadRequest:
		response := &UpdateMemberRolePermissionAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePermissionAdminV1Unauthorized:
		response := &UpdateMemberRolePermissionAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePermissionAdminV1Forbidden:
		response := &UpdateMemberRolePermissionAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePermissionAdminV1NotFound:
		response := &UpdateMemberRolePermissionAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePermissionAdminV1InternalServerError:
		response := &UpdateMemberRolePermissionAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMemberRolesListPublicV1Short get all list of member roles
Required Member Role Permission: "GROUP:ROLE [READ]"

# This endpoint is used to get list of member roles

Action Code: 73201
*/
func (a *Client) GetMemberRolesListPublicV1Short(params *GetMemberRolesListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetMemberRolesListPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMemberRolesListPublicV1Params()
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
		ID:                 "getMemberRolesListPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMemberRolesListPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMemberRolesListPublicV1OK:
		response := &GetMemberRolesListPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMemberRolesListPublicV1BadRequest:
		response := &GetMemberRolesListPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMemberRolesListPublicV1Unauthorized:
		response := &GetMemberRolesListPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMemberRolesListPublicV1Forbidden:
		response := &GetMemberRolesListPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMemberRolesListPublicV1InternalServerError:
		response := &GetMemberRolesListPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMemberRolePublicV1Short assign role to group member
Required Member Role Permission: "GROUP:ROLE [UPDATE]

# This endpoint is used to assign role to group member

Action Code: 73204
*/
func (a *Client) UpdateMemberRolePublicV1Short(params *UpdateMemberRolePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateMemberRolePublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMemberRolePublicV1Params()
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
		ID:                 "updateMemberRolePublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMemberRolePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMemberRolePublicV1OK:
		response := &UpdateMemberRolePublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateMemberRolePublicV1BadRequest:
		response := &UpdateMemberRolePublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePublicV1Unauthorized:
		response := &UpdateMemberRolePublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePublicV1Forbidden:
		response := &UpdateMemberRolePublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePublicV1NotFound:
		response := &UpdateMemberRolePublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePublicV1InternalServerError:
		response := &UpdateMemberRolePublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMemberRolePublicV1Short remove role from group member
Required Member Role Permission: "GROUP:ROLE [UPDATE]"

# This endpoint is used to remove role from group member

Action Code: 73204
*/
func (a *Client) DeleteMemberRolePublicV1Short(params *DeleteMemberRolePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteMemberRolePublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMemberRolePublicV1Params()
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
		ID:                 "deleteMemberRolePublicV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMemberRolePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteMemberRolePublicV1NoContent:
		response := &DeleteMemberRolePublicV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteMemberRolePublicV1BadRequest:
		response := &DeleteMemberRolePublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV1Unauthorized:
		response := &DeleteMemberRolePublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV1Forbidden:
		response := &DeleteMemberRolePublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV1NotFound:
		response := &DeleteMemberRolePublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV1UnprocessableEntity:
		response := &DeleteMemberRolePublicV1Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV1InternalServerError:
		response := &DeleteMemberRolePublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMemberRolesListPublicV2Short get all list of member roles
This endpoint is used to get list of member roles

Action Code: 73201
*/
func (a *Client) GetMemberRolesListPublicV2Short(params *GetMemberRolesListPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetMemberRolesListPublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMemberRolesListPublicV2Params()
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
		ID:                 "getMemberRolesListPublicV2",
		Method:             "GET",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/roles",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMemberRolesListPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMemberRolesListPublicV2OK:
		response := &GetMemberRolesListPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMemberRolesListPublicV2BadRequest:
		response := &GetMemberRolesListPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMemberRolesListPublicV2Unauthorized:
		response := &GetMemberRolesListPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMemberRolesListPublicV2Forbidden:
		response := &GetMemberRolesListPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetMemberRolesListPublicV2InternalServerError:
		response := &GetMemberRolesListPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMemberRolePublicV2Short assign role to group member
Required Member Role Permission: "GROUP:ROLE [UPDATE]

# This endpoint is used to assign role to group member

Action Code: 73204
*/
func (a *Client) UpdateMemberRolePublicV2Short(params *UpdateMemberRolePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateMemberRolePublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMemberRolePublicV2Params()
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
		ID:                 "updateMemberRolePublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMemberRolePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMemberRolePublicV2OK:
		response := &UpdateMemberRolePublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateMemberRolePublicV2BadRequest:
		response := &UpdateMemberRolePublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePublicV2Unauthorized:
		response := &UpdateMemberRolePublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePublicV2Forbidden:
		response := &UpdateMemberRolePublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePublicV2NotFound:
		response := &UpdateMemberRolePublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMemberRolePublicV2InternalServerError:
		response := &UpdateMemberRolePublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMemberRolePublicV2Short remove role from group member
Required Member Role Permission: "GROUP:ROLE [UPDATE]"

# This endpoint is used to remove role from group member

Action Code: 73204
*/
func (a *Client) DeleteMemberRolePublicV2Short(params *DeleteMemberRolePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteMemberRolePublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMemberRolePublicV2Params()
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
		ID:                 "deleteMemberRolePublicV2",
		Method:             "DELETE",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMemberRolePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteMemberRolePublicV2NoContent:
		response := &DeleteMemberRolePublicV2Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteMemberRolePublicV2BadRequest:
		response := &DeleteMemberRolePublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV2Unauthorized:
		response := &DeleteMemberRolePublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV2Forbidden:
		response := &DeleteMemberRolePublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV2NotFound:
		response := &DeleteMemberRolePublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV2UnprocessableEntity:
		response := &DeleteMemberRolePublicV2Response{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMemberRolePublicV2InternalServerError:
		response := &DeleteMemberRolePublicV2Response{}
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
