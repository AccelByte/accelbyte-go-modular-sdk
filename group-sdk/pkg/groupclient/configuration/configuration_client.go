// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListGroupConfigurationAdminV1Short(params *ListGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGroupConfigurationAdminV1Response, error)
	CreateGroupConfigurationAdminV1Short(params *CreateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupConfigurationAdminV1Response, error)
	InitiateGroupConfigurationAdminV1Short(params *InitiateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*InitiateGroupConfigurationAdminV1Response, error)
	GetGroupConfigurationAdminV1Short(params *GetGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupConfigurationAdminV1Response, error)
	DeleteGroupConfigurationV1Short(params *DeleteGroupConfigurationV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationV1Response, error)
	UpdateGroupConfigurationAdminV1Short(params *UpdateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationAdminV1Response, error)
	UpdateGroupConfigurationGlobalRuleAdminV1Short(params *UpdateGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationGlobalRuleAdminV1Response, error)
	DeleteGroupConfigurationGlobalRuleAdminV1Short(params *DeleteGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationGlobalRuleAdminV1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListGroupConfigurationAdminV1Short list group configuration
This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration

Action Code: 73101
*/
func (a *Client) ListGroupConfigurationAdminV1Short(params *ListGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*ListGroupConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListGroupConfigurationAdminV1Params()
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
		ID:                 "listGroupConfigurationAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListGroupConfigurationAdminV1OK:
		response := &ListGroupConfigurationAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListGroupConfigurationAdminV1BadRequest:
		response := &ListGroupConfigurationAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListGroupConfigurationAdminV1Unauthorized:
		response := &ListGroupConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListGroupConfigurationAdminV1Forbidden:
		response := &ListGroupConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListGroupConfigurationAdminV1NotFound:
		response := &ListGroupConfigurationAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListGroupConfigurationAdminV1InternalServerError:
		response := &ListGroupConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateGroupConfigurationAdminV1Short create new configuration
This endpoint is used to create new configuration. Before creating the configuration, make sure that member role for admin and group member are already created before.

For each of the global rule, it will be the rule detail that consists of these fields:

* **ruleAttribute**: attribute of the player that needs to be checked
* **ruleCriteria**: criteria of the value. The value will be in enum of EQUAL, MINIMUM, MAXIMUM
* **ruleValue**: value that needs to be checked

Allowed Action can only be filled with any available action in the Group Service. For the configuration, the only value is **"createGroup"**

Action Code: 73103
*/
func (a *Client) CreateGroupConfigurationAdminV1Short(params *CreateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateGroupConfigurationAdminV1Params()
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
		ID:                 "createGroupConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateGroupConfigurationAdminV1Created:
		response := &CreateGroupConfigurationAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateGroupConfigurationAdminV1BadRequest:
		response := &CreateGroupConfigurationAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateGroupConfigurationAdminV1Unauthorized:
		response := &CreateGroupConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateGroupConfigurationAdminV1Forbidden:
		response := &CreateGroupConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateGroupConfigurationAdminV1Conflict:
		response := &CreateGroupConfigurationAdminV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateGroupConfigurationAdminV1InternalServerError:
		response := &CreateGroupConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
InitiateGroupConfigurationAdminV1Short initiate configuration
This endpoint is used to initiate configuration.
This endpoint will automatically create default configuration and member roles with default permission
Default Permission for admin role will cover these permission:
- Permission to invite user to group
- Permission to accept or reject join request
- Permission to kick group member

Default max member value will be 50 and global rules will be empty
Action Code: 73104
*/
func (a *Client) InitiateGroupConfigurationAdminV1Short(params *InitiateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*InitiateGroupConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewInitiateGroupConfigurationAdminV1Params()
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
		ID:                 "initiateGroupConfigurationAdminV1",
		Method:             "POST",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/initiate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &InitiateGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *InitiateGroupConfigurationAdminV1Created:
		response := &InitiateGroupConfigurationAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *InitiateGroupConfigurationAdminV1Unauthorized:
		response := &InitiateGroupConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InitiateGroupConfigurationAdminV1Forbidden:
		response := &InitiateGroupConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InitiateGroupConfigurationAdminV1Conflict:
		response := &InitiateGroupConfigurationAdminV1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *InitiateGroupConfigurationAdminV1InternalServerError:
		response := &InitiateGroupConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupConfigurationAdminV1Short get existing configuration
This endpoint is used to get existing configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration

Action Code: 73101
*/
func (a *Client) GetGroupConfigurationAdminV1Short(params *GetGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*GetGroupConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupConfigurationAdminV1Params()
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
		ID:                 "getGroupConfigurationAdminV1",
		Method:             "GET",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupConfigurationAdminV1OK:
		response := &GetGroupConfigurationAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGroupConfigurationAdminV1BadRequest:
		response := &GetGroupConfigurationAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupConfigurationAdminV1Unauthorized:
		response := &GetGroupConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupConfigurationAdminV1Forbidden:
		response := &GetGroupConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupConfigurationAdminV1NotFound:
		response := &GetGroupConfigurationAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGroupConfigurationAdminV1InternalServerError:
		response := &GetGroupConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupConfigurationV1Short delete group configuration
This endpoint is used to delete group configuration. This Configuration is used as the main rule of the service. Each namespace will have its own configuration

Action Code: 73101
*/
func (a *Client) DeleteGroupConfigurationV1Short(params *DeleteGroupConfigurationV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupConfigurationV1Params()
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
		ID:                 "deleteGroupConfigurationV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupConfigurationV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupConfigurationV1NoContent:
		response := &DeleteGroupConfigurationV1Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGroupConfigurationV1BadRequest:
		response := &DeleteGroupConfigurationV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGroupConfigurationV1Unauthorized:
		response := &DeleteGroupConfigurationV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGroupConfigurationV1Forbidden:
		response := &DeleteGroupConfigurationV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGroupConfigurationV1NotFound:
		response := &DeleteGroupConfigurationV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGroupConfigurationV1InternalServerError:
		response := &DeleteGroupConfigurationV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupConfigurationAdminV1Short update existing configuration
This endpoint is used to update existing configuration. groupAdminRoleId and groupMemberRoleId won't be able to be updated. User can try to change the member role permission instead for each of those member role

Action Code: 73102
*/
func (a *Client) UpdateGroupConfigurationAdminV1Short(params *UpdateGroupConfigurationAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupConfigurationAdminV1Params()
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
		ID:                 "updateGroupConfigurationAdminV1",
		Method:             "PATCH",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupConfigurationAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupConfigurationAdminV1OK:
		response := &UpdateGroupConfigurationAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGroupConfigurationAdminV1BadRequest:
		response := &UpdateGroupConfigurationAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGroupConfigurationAdminV1Unauthorized:
		response := &UpdateGroupConfigurationAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGroupConfigurationAdminV1Forbidden:
		response := &UpdateGroupConfigurationAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGroupConfigurationAdminV1NotFound:
		response := &UpdateGroupConfigurationAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGroupConfigurationAdminV1InternalServerError:
		response := &UpdateGroupConfigurationAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupConfigurationGlobalRuleAdminV1Short update existing configuration global rule
This endpoint is used to update existing global rule configuration based on the allowed action. It will replace the permission with the request

Action Code: 73106
*/
func (a *Client) UpdateGroupConfigurationGlobalRuleAdminV1Short(params *UpdateGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupConfigurationGlobalRuleAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupConfigurationGlobalRuleAdminV1Params()
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
		ID:                 "updateGroupConfigurationGlobalRuleAdminV1",
		Method:             "PUT",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupConfigurationGlobalRuleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupConfigurationGlobalRuleAdminV1OK:
		response := &UpdateGroupConfigurationGlobalRuleAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGroupConfigurationGlobalRuleAdminV1BadRequest:
		response := &UpdateGroupConfigurationGlobalRuleAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGroupConfigurationGlobalRuleAdminV1Unauthorized:
		response := &UpdateGroupConfigurationGlobalRuleAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGroupConfigurationGlobalRuleAdminV1Forbidden:
		response := &UpdateGroupConfigurationGlobalRuleAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGroupConfigurationGlobalRuleAdminV1NotFound:
		response := &UpdateGroupConfigurationGlobalRuleAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateGroupConfigurationGlobalRuleAdminV1InternalServerError:
		response := &UpdateGroupConfigurationGlobalRuleAdminV1Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupConfigurationGlobalRuleAdminV1Short delete existing configuration global rule based on allowed action
This endpoint is used to delete existing global rule configuration based on the allowed action. It will not give any error if the allowed action is not existed in the global rule

Action Code: 73105
*/
func (a *Client) DeleteGroupConfigurationGlobalRuleAdminV1Short(params *DeleteGroupConfigurationGlobalRuleAdminV1Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupConfigurationGlobalRuleAdminV1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupConfigurationGlobalRuleAdminV1Params()
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
		ID:                 "deleteGroupConfigurationGlobalRuleAdminV1",
		Method:             "DELETE",
		PathPattern:        "/group/v1/admin/namespaces/{namespace}/configuration/{configurationCode}/rules/{allowedAction}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupConfigurationGlobalRuleAdminV1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupConfigurationGlobalRuleAdminV1OK:
		response := &DeleteGroupConfigurationGlobalRuleAdminV1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteGroupConfigurationGlobalRuleAdminV1BadRequest:
		response := &DeleteGroupConfigurationGlobalRuleAdminV1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGroupConfigurationGlobalRuleAdminV1Unauthorized:
		response := &DeleteGroupConfigurationGlobalRuleAdminV1Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGroupConfigurationGlobalRuleAdminV1Forbidden:
		response := &DeleteGroupConfigurationGlobalRuleAdminV1Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGroupConfigurationGlobalRuleAdminV1NotFound:
		response := &DeleteGroupConfigurationGlobalRuleAdminV1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGroupConfigurationGlobalRuleAdminV1InternalServerError:
		response := &DeleteGroupConfigurationGlobalRuleAdminV1Response{}
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
