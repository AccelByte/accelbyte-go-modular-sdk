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
	GetGroupsShort(params *GetGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupsOK, error)
	CreateGroupShort(params *CreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupCreated, error)
	GetGroupShort(params *GetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupOK, error)
	UpdateGroupShort(params *UpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupOK, error)
	DeleteGroupShort(params *DeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupNoContent, error)
	GetGroupContentShort(params *GetGroupContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupContentOK, error)
	PublicGetGroupContentsV2Short(params *PublicGetGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetGroupContentsV2OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetGroupsShort get all user groups
Get user groups paginated
*/
func (a *Client) GetGroupsShort(params *GetGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupsOK, error) {
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
		return v, nil
	case *GetGroupsBadRequest:
		return nil, v
	case *GetGroupsUnauthorized:
		return nil, v
	case *GetGroupsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateGroupShort create groups
Create group
*/
func (a *Client) CreateGroupShort(params *CreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateGroupCreated, error) {
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
		return v, nil
	case *CreateGroupBadRequest:
		return nil, v
	case *CreateGroupUnauthorized:
		return nil, v
	case *CreateGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupShort get user's groups
Get user groups by group ID
*/
func (a *Client) GetGroupShort(params *GetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupOK, error) {
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
		return v, nil
	case *GetGroupUnauthorized:
		return nil, v
	case *GetGroupNotFound:
		return nil, v
	case *GetGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGroupShort update group
Replace group name and contents with new ones
*/
func (a *Client) UpdateGroupShort(params *UpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGroupOK, error) {
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
		return v, nil
	case *UpdateGroupBadRequest:
		return nil, v
	case *UpdateGroupUnauthorized:
		return nil, v
	case *UpdateGroupNotFound:
		return nil, v
	case *UpdateGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGroupShort delete group
Delete user group by group ID
*/
func (a *Client) DeleteGroupShort(params *DeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGroupNoContent, error) {
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
		return v, nil
	case *DeleteGroupUnauthorized:
		return nil, v
	case *DeleteGroupNotFound:
		return nil, v
	case *DeleteGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGroupContentShort (legacy) get contents belong to a group
Get content that belong to a group
*/
func (a *Client) GetGroupContentShort(params *GetGroupContentParams, authInfo runtime.ClientAuthInfoWriter) (*GetGroupContentOK, error) {
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
		return v, nil
	case *GetGroupContentBadRequest:
		return nil, v
	case *GetGroupContentUnauthorized:
		return nil, v
	case *GetGroupContentNotFound:
		return nil, v
	case *GetGroupContentInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetGroupContentsV2Short get contents belong to a group
Get content belong to a group
*/
func (a *Client) PublicGetGroupContentsV2Short(params *PublicGetGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetGroupContentsV2OK, error) {
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
		return v, nil
	case *PublicGetGroupContentsV2BadRequest:
		return nil, v
	case *PublicGetGroupContentsV2Unauthorized:
		return nil, v
	case *PublicGetGroupContentsV2NotFound:
		return nil, v
	case *PublicGetGroupContentsV2InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
