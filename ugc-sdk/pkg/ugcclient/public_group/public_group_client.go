// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_group

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public group API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public group API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetGroupsShort(params *GetGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupsResponse, error)
	CreateGroupShort(params *CreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupResponse, error)
	GetGroupShort(params *GetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupResponse, error)
	UpdateGroupShort(params *UpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupResponse, error)
	DeleteGroupShort(params *DeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupResponse, error)
	GetGroupContentShort(params *GetGroupContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupContentResponse, error)
	PublicGetGroupContentsV2Short(params *PublicGetGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetGroupContentsV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetGroupsShort get all user groups
Get user groups paginated
*/
func (a *Client) GetGroupsShort(params *GetGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupsParams()
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
		ID:                 "GetGroups",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupsOK:
		response := &GetGroupsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGroupsBadRequest:
		response := &GetGroupsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupsUnauthorized:
		response := &GetGroupsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupsInternalServerError:
		response := &GetGroupsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateGroupShort create groups
Create group
*/
func (a *Client) CreateGroupShort(params *CreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateGroupParams()
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
		ID:                 "CreateGroup",
		Method:             "POST",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateGroupCreated:
		response := &CreateGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateGroupBadRequest:
		response := &CreateGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateGroupUnauthorized:
		response := &CreateGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateGroupInternalServerError:
		response := &CreateGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupShort get user's groups
Get user groups by group ID
*/
func (a *Client) GetGroupShort(params *GetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupParams()
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
		ID:                 "GetGroup",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupOK:
		response := &GetGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGroupUnauthorized:
		response := &GetGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupNotFound:
		response := &GetGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupInternalServerError:
		response := &GetGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupShort update group
Replace group name and contents with new ones
*/
func (a *Client) UpdateGroupShort(params *UpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGroupParams()
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
		ID:                 "UpdateGroup",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGroupOK:
		response := &UpdateGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateGroupBadRequest:
		response := &UpdateGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupUnauthorized:
		response := &UpdateGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupNotFound:
		response := &UpdateGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateGroupInternalServerError:
		response := &UpdateGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupShort delete group
Delete user group by group ID
*/
func (a *Client) DeleteGroupShort(params *DeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGroupParams()
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
		ID:                 "DeleteGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGroupNoContent:
		response := &DeleteGroupResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGroupUnauthorized:
		response := &DeleteGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupNotFound:
		response := &DeleteGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteGroupInternalServerError:
		response := &DeleteGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupContentShort (legacy) get contents belong to a group
Get content that belong to a group
*/
func (a *Client) GetGroupContentShort(params *GetGroupContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGroupContentParams()
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
		ID:                 "GetGroupContent",
		Method:             "GET",
		PathPattern:        "/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGroupContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGroupContentOK:
		response := &GetGroupContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGroupContentBadRequest:
		response := &GetGroupContentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupContentUnauthorized:
		response := &GetGroupContentResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupContentNotFound:
		response := &GetGroupContentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGroupContentInternalServerError:
		response := &GetGroupContentResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetGroupContentsV2Short get contents belong to a group
Get content belong to a group
*/
func (a *Client) PublicGetGroupContentsV2Short(params *PublicGetGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetGroupContentsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetGroupContentsV2Params()
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
		ID:                 "PublicGetGroupContentsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json", "application/octet-stream"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetGroupContentsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetGroupContentsV2OK:
		response := &PublicGetGroupContentsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetGroupContentsV2BadRequest:
		response := &PublicGetGroupContentsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetGroupContentsV2Unauthorized:
		response := &PublicGetGroupContentsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetGroupContentsV2NotFound:
		response := &PublicGetGroupContentsV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetGroupContentsV2InternalServerError:
		response := &PublicGetGroupContentsV2Response{}
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
