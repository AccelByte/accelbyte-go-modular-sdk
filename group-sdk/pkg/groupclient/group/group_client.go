// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new group API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for group API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetGroupListAdminV1Short(params *GetGroupListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListAdminV1Response, error)
	GetSingleGroupAdminV1Short(params *GetSingleGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupAdminV1Response, error)
	DeleteGroupAdminV1Short(params *DeleteGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupAdminV1Response, error)
	GetGroupListPublicV1Short(params *GetGroupListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListPublicV1Response, error)
	CreateNewGroupPublicV1Short(params *CreateNewGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV1Response, error)
	GetSingleGroupPublicV1Short(params *GetSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupPublicV1Response, error)
	UpdateSingleGroupV1Short(params *UpdateSingleGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSingleGroupV1Response, error)
	DeleteGroupPublicV1Short(params *DeleteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV1Response, error)
	UpdatePatchSingleGroupPublicV1Short(params *UpdatePatchSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV1Response, error)
	UpdateGroupCustomAttributesPublicV1Short(params *UpdateGroupCustomAttributesPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV1Response, error)
	UpdateGroupCustomRulePublicV1Short(params *UpdateGroupCustomRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV1Response, error)
	UpdateGroupPredefinedRulePublicV1Short(params *UpdateGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV1Response, error)
	DeleteGroupPredefinedRulePublicV1Short(params *DeleteGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV1Response, error)
	GetListGroupByIDsAdminV2Short(params *GetListGroupByIDsAdminV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsAdminV2Response, error)
	CreateNewGroupPublicV2Short(params *CreateNewGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV2Response, error)
	GetListGroupByIDsV2Short(params *GetListGroupByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsV2Response, error)
	UpdatePutSingleGroupPublicV2Short(params *UpdatePutSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePutSingleGroupPublicV2Response, error)
	DeleteGroupPublicV2Short(params *DeleteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV2Response, error)
	UpdatePatchSingleGroupPublicV2Short(params *UpdatePatchSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV2Response, error)
	UpdateGroupCustomAttributesPublicV2Short(params *UpdateGroupCustomAttributesPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV2Response, error)
	UpdateGroupCustomRulePublicV2Short(params *UpdateGroupCustomRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV2Response, error)
	UpdateGroupPredefinedRulePublicV2Short(params *UpdateGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV2Response, error)
	DeleteGroupPredefinedRulePublicV2Short(params *DeleteGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetGroupListAdminV1Short get list of groups
Get list of groups. This endpoint will show any types of group

Action Code: 73301
*/
func (a *Client) GetGroupListAdminV1Short(params *GetGroupListAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupListAdminV1Params()
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
		ID:                 "getGroupListAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupListAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupListAdminV1OK:
		response := &GetGroupListAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGroupListAdminV1BadRequest:
		response := &GetGroupListAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupListAdminV1Unauthorized:
		response := &GetGroupListAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupListAdminV1Forbidden:
		response := &GetGroupListAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupListAdminV1InternalServerError:
		response := &GetGroupListAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSingleGroupAdminV1Short get single group
Get single group information. This endpoint will show the group information by the groupId

Action Code: 73306
*/
func (a *Client) GetSingleGroupAdminV1Short(params *GetSingleGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleGroupAdminV1Params()
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
		ID:                 "getSingleGroupAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleGroupAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSingleGroupAdminV1OK:
		response := &GetSingleGroupAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSingleGroupAdminV1BadRequest:
		response := &GetSingleGroupAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleGroupAdminV1Unauthorized:
		response := &GetSingleGroupAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleGroupAdminV1Forbidden:
		response := &GetSingleGroupAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleGroupAdminV1NotFound:
		response := &GetSingleGroupAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleGroupAdminV1InternalServerError:
		response := &GetSingleGroupAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupAdminV1Short delete existing group
Delete existing group. It will check whether the groupID is exist before doing the process to delete the group.

Action Code: 73302
*/
func (a *Client) DeleteGroupAdminV1Short(params *DeleteGroupAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupAdminV1Params()
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
		ID:                 "deleteGroupAdminV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupAdminV1NoContent:
		response := &DeleteGroupAdminV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGroupAdminV1BadRequest:
		response := &DeleteGroupAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupAdminV1Unauthorized:
		response := &DeleteGroupAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupAdminV1Forbidden:
		response := &DeleteGroupAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupAdminV1NotFound:
		response := &DeleteGroupAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupAdminV1InternalServerError:
		response := &DeleteGroupAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupListPublicV1Short get list of groups
Required valid user authentication

Get list of groups. This endpoint will only show OPEN and PUBLIC group type. This endpoint can search based on the group name by filling the "groupName" query parameter

Action Code: 73303
*/
func (a *Client) GetGroupListPublicV1Short(params *GetGroupListPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupListPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupListPublicV1Params()
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
		ID:                 "getGroupListPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupListPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupListPublicV1OK:
		response := &GetGroupListPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGroupListPublicV1BadRequest:
		response := &GetGroupListPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupListPublicV1Unauthorized:
		response := &GetGroupListPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupListPublicV1Forbidden:
		response := &GetGroupListPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupListPublicV1InternalServerError:
		response := &GetGroupListPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNewGroupPublicV1Short create new group
Required valid user authentication

This endpoint is used to create new group

There are some fields that needs to be fulfilled

* **groupDescription**: the description of the group (optional)
* **groupIcon**: group icon URL link (optional)
* **groupName**: name of the group
* **groupRegion**: region of the group
* **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
* **allowedAction**: available action in group service. It consist of joinGroup and createGroup
* **ruleAttribute**: attribute of the player that needs to be checked
* **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
* **ruleValue**: value that needs to be checked
* **customAttributes**: additional custom group attributes (optional)

Action Code: 73304
*/
func (a *Client) CreateNewGroupPublicV1Short(params *CreateNewGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNewGroupPublicV1Params()
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
		ID:                 "createNewGroupPublicV1",
		Method:             "POST",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNewGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNewGroupPublicV1Created:
		response := &CreateNewGroupPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateNewGroupPublicV1BadRequest:
		response := &CreateNewGroupPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateNewGroupPublicV1Unauthorized:
		response := &CreateNewGroupPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateNewGroupPublicV1Forbidden:
		response := &CreateNewGroupPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateNewGroupPublicV1Conflict:
		response := &CreateNewGroupPublicV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateNewGroupPublicV1InternalServerError:
		response := &CreateNewGroupPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSingleGroupPublicV1Short get single group
Required valid user authentication

Get single group information. This endpoint will show the group information by the groupId

Action Code: 73306
*/
func (a *Client) GetSingleGroupPublicV1Short(params *GetSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetSingleGroupPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleGroupPublicV1Params()
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
		ID:                 "getSingleGroupPublicV1",
		Method:             "GET",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSingleGroupPublicV1OK:
		response := &GetSingleGroupPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSingleGroupPublicV1BadRequest:
		response := &GetSingleGroupPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleGroupPublicV1Unauthorized:
		response := &GetSingleGroupPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleGroupPublicV1Forbidden:
		response := &GetSingleGroupPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleGroupPublicV1NotFound:
		response := &GetSingleGroupPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleGroupPublicV1InternalServerError:
		response := &GetSingleGroupPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSingleGroupV1Short update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdateSingleGroupV1Short(params *UpdateSingleGroupV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateSingleGroupV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSingleGroupV1Params()
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
		ID:                 "updateSingleGroupV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSingleGroupV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSingleGroupV1OK:
		response := &UpdateSingleGroupV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSingleGroupV1BadRequest:
		response := &UpdateSingleGroupV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSingleGroupV1Unauthorized:
		response := &UpdateSingleGroupV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSingleGroupV1Forbidden:
		response := &UpdateSingleGroupV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSingleGroupV1NotFound:
		response := &UpdateSingleGroupV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateSingleGroupV1InternalServerError:
		response := &UpdateSingleGroupV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupPublicV1Short delete existing group
Required valid user authentication

Required Member Role Permission: "GROUP [DELETE]"

Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73305
*/
func (a *Client) DeleteGroupPublicV1Short(params *DeleteGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPublicV1Params()
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
		ID:                 "deleteGroupPublicV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPublicV1NoContent:
		response := &DeleteGroupPublicV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGroupPublicV1BadRequest:
		response := &DeleteGroupPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPublicV1Unauthorized:
		response := &DeleteGroupPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPublicV1Forbidden:
		response := &DeleteGroupPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPublicV1NotFound:
		response := &DeleteGroupPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPublicV1InternalServerError:
		response := &DeleteGroupPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePatchSingleGroupPublicV1Short update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdatePatchSingleGroupPublicV1Short(params *UpdatePatchSingleGroupPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePatchSingleGroupPublicV1Params()
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
		ID:                 "updatePatchSingleGroupPublicV1",
		Method:             "PATCH",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePatchSingleGroupPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePatchSingleGroupPublicV1OK:
		response := &UpdatePatchSingleGroupPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePatchSingleGroupPublicV1BadRequest:
		response := &UpdatePatchSingleGroupPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePatchSingleGroupPublicV1Unauthorized:
		response := &UpdatePatchSingleGroupPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePatchSingleGroupPublicV1Forbidden:
		response := &UpdatePatchSingleGroupPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePatchSingleGroupPublicV1NotFound:
		response := &UpdatePatchSingleGroupPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePatchSingleGroupPublicV1InternalServerError:
		response := &UpdatePatchSingleGroupPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupCustomAttributesPublicV1Short update group custom attributes
Requires valid user authentication

Required Member Role Permission: "GROUP [UPDATE]

This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73311
*/
func (a *Client) UpdateGroupCustomAttributesPublicV1Short(params *UpdateGroupCustomAttributesPublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomAttributesPublicV1Params()
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
		ID:                 "updateGroupCustomAttributesPublicV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/attributes/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomAttributesPublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomAttributesPublicV1OK:
		response := &UpdateGroupCustomAttributesPublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGroupCustomAttributesPublicV1BadRequest:
		response := &UpdateGroupCustomAttributesPublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomAttributesPublicV1Unauthorized:
		response := &UpdateGroupCustomAttributesPublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomAttributesPublicV1Forbidden:
		response := &UpdateGroupCustomAttributesPublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomAttributesPublicV1NotFound:
		response := &UpdateGroupCustomAttributesPublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomAttributesPublicV1InternalServerError:
		response := &UpdateGroupCustomAttributesPublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupCustomRulePublicV1Short update group custom rule
Required valid user authentication

Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73308
*/
func (a *Client) UpdateGroupCustomRulePublicV1Short(params *UpdateGroupCustomRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomRulePublicV1Params()
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
		ID:                 "updateGroupCustomRulePublicV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomRulePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomRulePublicV1OK:
		response := &UpdateGroupCustomRulePublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGroupCustomRulePublicV1BadRequest:
		response := &UpdateGroupCustomRulePublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomRulePublicV1Unauthorized:
		response := &UpdateGroupCustomRulePublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomRulePublicV1Forbidden:
		response := &UpdateGroupCustomRulePublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomRulePublicV1NotFound:
		response := &UpdateGroupCustomRulePublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomRulePublicV1InternalServerError:
		response := &UpdateGroupCustomRulePublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupPredefinedRulePublicV1Short update predefined group rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

If the rule action is not defined in the group, it will be added immediately to the predefined group rule

Action Code: 73310
*/
func (a *Client) UpdateGroupPredefinedRulePublicV1Short(params *UpdateGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupPredefinedRulePublicV1Params()
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
		ID:                 "updateGroupPredefinedRulePublicV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupPredefinedRulePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupPredefinedRulePublicV1OK:
		response := &UpdateGroupPredefinedRulePublicV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGroupPredefinedRulePublicV1BadRequest:
		response := &UpdateGroupPredefinedRulePublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupPredefinedRulePublicV1Unauthorized:
		response := &UpdateGroupPredefinedRulePublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupPredefinedRulePublicV1Forbidden:
		response := &UpdateGroupPredefinedRulePublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupPredefinedRulePublicV1NotFound:
		response := &UpdateGroupPredefinedRulePublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupPredefinedRulePublicV1InternalServerError:
		response := &UpdateGroupPredefinedRulePublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupPredefinedRulePublicV1Short delete group predefined rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73309
*/
func (a *Client) DeleteGroupPredefinedRulePublicV1Short(params *DeleteGroupPredefinedRulePublicV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPredefinedRulePublicV1Params()
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
		ID:                 "deleteGroupPredefinedRulePublicV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPredefinedRulePublicV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPredefinedRulePublicV1NoContent:
		response := &DeleteGroupPredefinedRulePublicV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGroupPredefinedRulePublicV1BadRequest:
		response := &DeleteGroupPredefinedRulePublicV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPredefinedRulePublicV1Unauthorized:
		response := &DeleteGroupPredefinedRulePublicV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPredefinedRulePublicV1Forbidden:
		response := &DeleteGroupPredefinedRulePublicV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPredefinedRulePublicV1NotFound:
		response := &DeleteGroupPredefinedRulePublicV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPredefinedRulePublicV1InternalServerError:
		response := &DeleteGroupPredefinedRulePublicV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListGroupByIDsAdminV2Short get list of groups by group ids
Required valid user authentication

Get list of groups by group Ids.

Action Code: 73303
*/
func (a *Client) GetListGroupByIDsAdminV2Short(params *GetListGroupByIDsAdminV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsAdminV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListGroupByIDsAdminV2Params()
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
		ID:                 "getListGroupByIDsAdminV2",
		Method:             "POST",
		PathPattern:        "/group/v2/admin/namespaces/{namespace}/groups/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListGroupByIDsAdminV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListGroupByIDsAdminV2OK:
		response := &GetListGroupByIDsAdminV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListGroupByIDsAdminV2BadRequest:
		response := &GetListGroupByIDsAdminV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListGroupByIDsAdminV2Unauthorized:
		response := &GetListGroupByIDsAdminV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListGroupByIDsAdminV2Forbidden:
		response := &GetListGroupByIDsAdminV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListGroupByIDsAdminV2InternalServerError:
		response := &GetListGroupByIDsAdminV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNewGroupPublicV2Short create new group
Required valid user authentication

This endpoint is used to create new group

There are some fields that needs to be fulfilled

* **groupDescription**: the description of the group (optional)
* **groupIcon**: group icon URL link (optional)
* **groupName**: name of the group
* **groupRegion**: region of the group
* **groupRules**: rules for specific group. It consists of groupCustomRule that can be used to save custom rule, and groupPredefinedRules that has similar usage with configuration, but this rule only works in specific group
* **allowedAction**: available action in group service. It consist of joinGroup and inviteGroup
* **ruleAttribute**: attribute of the player that needs to be checked
* **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
* **ruleValue**: value that needs to be checked
* **customAttributes**: additional custom group attributes (optional)

Action Code: 73304
*/
func (a *Client) CreateNewGroupPublicV2Short(params *CreateNewGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*CreateNewGroupPublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNewGroupPublicV2Params()
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
		ID:                 "createNewGroupPublicV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNewGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNewGroupPublicV2Created:
		response := &CreateNewGroupPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateNewGroupPublicV2BadRequest:
		response := &CreateNewGroupPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateNewGroupPublicV2Unauthorized:
		response := &CreateNewGroupPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateNewGroupPublicV2Forbidden:
		response := &CreateNewGroupPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateNewGroupPublicV2Conflict:
		response := &CreateNewGroupPublicV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateNewGroupPublicV2InternalServerError:
		response := &CreateNewGroupPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetListGroupByIDsV2Short get list of groups by group ids
Required valid user authentication

Get list of groups by group Ids.

Action Code: 73303
*/
func (a *Client) GetListGroupByIDsV2Short(params *GetListGroupByIDsV2Params, authInfo runtime.ClientAuthInfoWriter) (*GetListGroupByIDsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetListGroupByIDsV2Params()
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
		ID:                 "getListGroupByIDsV2",
		Method:             "POST",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetListGroupByIDsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetListGroupByIDsV2OK:
		response := &GetListGroupByIDsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetListGroupByIDsV2BadRequest:
		response := &GetListGroupByIDsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListGroupByIDsV2Unauthorized:
		response := &GetListGroupByIDsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListGroupByIDsV2Forbidden:
		response := &GetListGroupByIDsV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetListGroupByIDsV2InternalServerError:
		response := &GetListGroupByIDsV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePutSingleGroupPublicV2Short update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdatePutSingleGroupPublicV2Short(params *UpdatePutSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePutSingleGroupPublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePutSingleGroupPublicV2Params()
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
		ID:                 "updatePutSingleGroupPublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePutSingleGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePutSingleGroupPublicV2OK:
		response := &UpdatePutSingleGroupPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePutSingleGroupPublicV2BadRequest:
		response := &UpdatePutSingleGroupPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePutSingleGroupPublicV2Unauthorized:
		response := &UpdatePutSingleGroupPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePutSingleGroupPublicV2Forbidden:
		response := &UpdatePutSingleGroupPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePutSingleGroupPublicV2NotFound:
		response := &UpdatePutSingleGroupPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePutSingleGroupPublicV2InternalServerError:
		response := &UpdatePutSingleGroupPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupPublicV2Short delete existing group
Required valid user authentication

Required Member Role Permission: "GROUP [DELETE]"

Delete existing group. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73305
*/
func (a *Client) DeleteGroupPublicV2Short(params *DeleteGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPublicV2Params()
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
		ID:                 "deleteGroupPublicV2",
		Method:             "DELETE",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPublicV2NoContent:
		response := &DeleteGroupPublicV2Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGroupPublicV2BadRequest:
		response := &DeleteGroupPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPublicV2Unauthorized:
		response := &DeleteGroupPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPublicV2Forbidden:
		response := &DeleteGroupPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPublicV2NotFound:
		response := &DeleteGroupPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPublicV2InternalServerError:
		response := &DeleteGroupPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePatchSingleGroupPublicV2Short update existing group
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update existing group. This endpoint supports partial update. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73307
*/
func (a *Client) UpdatePatchSingleGroupPublicV2Short(params *UpdatePatchSingleGroupPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePatchSingleGroupPublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePatchSingleGroupPublicV2Params()
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
		ID:                 "updatePatchSingleGroupPublicV2",
		Method:             "PATCH",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePatchSingleGroupPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePatchSingleGroupPublicV2OK:
		response := &UpdatePatchSingleGroupPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePatchSingleGroupPublicV2BadRequest:
		response := &UpdatePatchSingleGroupPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePatchSingleGroupPublicV2Unauthorized:
		response := &UpdatePatchSingleGroupPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePatchSingleGroupPublicV2Forbidden:
		response := &UpdatePatchSingleGroupPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePatchSingleGroupPublicV2NotFound:
		response := &UpdatePatchSingleGroupPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePatchSingleGroupPublicV2InternalServerError:
		response := &UpdatePatchSingleGroupPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupCustomAttributesPublicV2Short update group custom attributes
Requires valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

This endpoint replaces current group custom attributes entirely. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73311
*/
func (a *Client) UpdateGroupCustomAttributesPublicV2Short(params *UpdateGroupCustomAttributesPublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomAttributesPublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomAttributesPublicV2Params()
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
		ID:                 "updateGroupCustomAttributesPublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/attributes/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomAttributesPublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomAttributesPublicV2OK:
		response := &UpdateGroupCustomAttributesPublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGroupCustomAttributesPublicV2BadRequest:
		response := &UpdateGroupCustomAttributesPublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomAttributesPublicV2Unauthorized:
		response := &UpdateGroupCustomAttributesPublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomAttributesPublicV2Forbidden:
		response := &UpdateGroupCustomAttributesPublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomAttributesPublicV2NotFound:
		response := &UpdateGroupCustomAttributesPublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomAttributesPublicV2InternalServerError:
		response := &UpdateGroupCustomAttributesPublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupCustomRulePublicV2Short update group custom rule
Required valid user authentication

Update group custom rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73308
*/
func (a *Client) UpdateGroupCustomRulePublicV2Short(params *UpdateGroupCustomRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupCustomRulePublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupCustomRulePublicV2Params()
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
		ID:                 "updateGroupCustomRulePublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/custom",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupCustomRulePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupCustomRulePublicV2OK:
		response := &UpdateGroupCustomRulePublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGroupCustomRulePublicV2BadRequest:
		response := &UpdateGroupCustomRulePublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomRulePublicV2Unauthorized:
		response := &UpdateGroupCustomRulePublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomRulePublicV2Forbidden:
		response := &UpdateGroupCustomRulePublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomRulePublicV2NotFound:
		response := &UpdateGroupCustomRulePublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupCustomRulePublicV2InternalServerError:
		response := &UpdateGroupCustomRulePublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupPredefinedRulePublicV2Short update predefined group rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Update predefined group rule. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

If the rule action is not defined in the group, it will be added immediately to the predefined group rule

Action Code: 73310
*/
func (a *Client) UpdateGroupPredefinedRulePublicV2Short(params *UpdateGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupPredefinedRulePublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupPredefinedRulePublicV2Params()
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
		ID:                 "updateGroupPredefinedRulePublicV2",
		Method:             "PUT",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupPredefinedRulePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupPredefinedRulePublicV2OK:
		response := &UpdateGroupPredefinedRulePublicV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGroupPredefinedRulePublicV2BadRequest:
		response := &UpdateGroupPredefinedRulePublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupPredefinedRulePublicV2Unauthorized:
		response := &UpdateGroupPredefinedRulePublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupPredefinedRulePublicV2Forbidden:
		response := &UpdateGroupPredefinedRulePublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupPredefinedRulePublicV2NotFound:
		response := &UpdateGroupPredefinedRulePublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupPredefinedRulePublicV2InternalServerError:
		response := &UpdateGroupPredefinedRulePublicV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupPredefinedRulePublicV2Short delete group predefined rule
Required valid user authentication

Required Member Role Permission: "GROUP [UPDATE]"

Delete group predefined rule based on the allowed action. This endpoint will check the group ID of the user based on the access token and compare it with the group ID in path parameter. It will also check the member role of the user based on the access token

Action Code: 73309
*/
func (a *Client) DeleteGroupPredefinedRulePublicV2Short(params *DeleteGroupPredefinedRulePublicV2Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupPredefinedRulePublicV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupPredefinedRulePublicV2Params()
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
		ID:                 "deleteGroupPredefinedRulePublicV2",
		Method:             "DELETE",
		PathPattern:        "/group/v2/public/namespaces/{namespace}/groups/{groupId}/rules/defined/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupPredefinedRulePublicV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupPredefinedRulePublicV2NoContent:
		response := &DeleteGroupPredefinedRulePublicV2Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGroupPredefinedRulePublicV2BadRequest:
		response := &DeleteGroupPredefinedRulePublicV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPredefinedRulePublicV2Unauthorized:
		response := &DeleteGroupPredefinedRulePublicV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPredefinedRulePublicV2Forbidden:
		response := &DeleteGroupPredefinedRulePublicV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPredefinedRulePublicV2NotFound:
		response := &DeleteGroupPredefinedRulePublicV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupPredefinedRulePublicV2InternalServerError:
		response := &DeleteGroupPredefinedRulePublicV2Response{}
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
