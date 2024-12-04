// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_group

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin group API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin group API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	SingleAdminGetAllGroupsShort(params *SingleAdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetAllGroupsResponse, error)
	AdminCreateGroupShort(params *AdminCreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGroupResponse, error)
	SingleAdminGetGroupShort(params *SingleAdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupResponse, error)
	SingleAdminUpdateGroupShort(params *SingleAdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateGroupResponse, error)
	SingleAdminDeleteGroupShort(params *SingleAdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteGroupResponse, error)
	SingleAdminGetGroupContentsShort(params *SingleAdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupContentsResponse, error)
	AdminGetAllGroupsShort(params *AdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllGroupsResponse, error)
	AdminGetGroupShort(params *AdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupResponse, error)
	AdminUpdateGroupShort(params *AdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGroupResponse, error)
	AdminDeleteGroupShort(params *AdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGroupResponse, error)
	AdminGetGroupContentsShort(params *AdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupContentsResponse, error)
	AdminGetOfficialGroupContentsV2Short(params *AdminGetOfficialGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetOfficialGroupContentsV2Response, error)
	AdminGetUserGroupContentsV2Short(params *AdminGetUserGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupContentsV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
SingleAdminGetAllGroupsShort get all user groups
Get user group paginated
*/
func (a *Client) SingleAdminGetAllGroupsShort(params *SingleAdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetAllGroupsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetAllGroupsParams()
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
		ID:                 "SingleAdminGetAllGroups",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetAllGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetAllGroupsOK:
		response := &SingleAdminGetAllGroupsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SingleAdminGetAllGroupsBadRequest:
		response := &SingleAdminGetAllGroupsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetAllGroupsUnauthorized:
		response := &SingleAdminGetAllGroupsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetAllGroupsInternalServerError:
		response := &SingleAdminGetAllGroupsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateGroupShort create groups
Create group
*/
func (a *Client) AdminCreateGroupShort(params *AdminCreateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateGroupParams()
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
		ID:                 "AdminCreateGroup",
		Method:             "POST",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateGroupCreated:
		response := &AdminCreateGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateGroupBadRequest:
		response := &AdminCreateGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateGroupUnauthorized:
		response := &AdminCreateGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateGroupInternalServerError:
		response := &AdminCreateGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminGetGroupShort get specific user group
Get user group by group ID
*/
func (a *Client) SingleAdminGetGroupShort(params *SingleAdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetGroupParams()
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
		ID:                 "SingleAdminGetGroup",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetGroupOK:
		response := &SingleAdminGetGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SingleAdminGetGroupUnauthorized:
		response := &SingleAdminGetGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetGroupNotFound:
		response := &SingleAdminGetGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetGroupInternalServerError:
		response := &SingleAdminGetGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminUpdateGroupShort update group
Replace group name and contents with new ones.
*/
func (a *Client) SingleAdminUpdateGroupShort(params *SingleAdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminUpdateGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminUpdateGroupParams()
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
		ID:                 "SingleAdminUpdateGroup",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminUpdateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminUpdateGroupOK:
		response := &SingleAdminUpdateGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SingleAdminUpdateGroupBadRequest:
		response := &SingleAdminUpdateGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateGroupUnauthorized:
		response := &SingleAdminUpdateGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateGroupNotFound:
		response := &SingleAdminUpdateGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminUpdateGroupInternalServerError:
		response := &SingleAdminUpdateGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminDeleteGroupShort delete group
Delete group by group ID
*/
func (a *Client) SingleAdminDeleteGroupShort(params *SingleAdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminDeleteGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminDeleteGroupParams()
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
		ID:                 "SingleAdminDeleteGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminDeleteGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminDeleteGroupNoContent:
		response := &SingleAdminDeleteGroupResponse{}

		response.IsSuccess = true

		return response, nil
	case *SingleAdminDeleteGroupUnauthorized:
		response := &SingleAdminDeleteGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminDeleteGroupNotFound:
		response := &SingleAdminDeleteGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminDeleteGroupInternalServerError:
		response := &SingleAdminDeleteGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SingleAdminGetGroupContentsShort (legacy) get contents belong to a group
Get content belong to a group
*/
func (a *Client) SingleAdminGetGroupContentsShort(params *SingleAdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*SingleAdminGetGroupContentsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSingleAdminGetGroupContentsParams()
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
		ID:                 "SingleAdminGetGroupContents",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SingleAdminGetGroupContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SingleAdminGetGroupContentsOK:
		response := &SingleAdminGetGroupContentsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SingleAdminGetGroupContentsBadRequest:
		response := &SingleAdminGetGroupContentsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetGroupContentsUnauthorized:
		response := &SingleAdminGetGroupContentsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetGroupContentsNotFound:
		response := &SingleAdminGetGroupContentsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SingleAdminGetGroupContentsInternalServerError:
		response := &SingleAdminGetGroupContentsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllGroupsShort get all user groups
Get user group paginated
*/
func (a *Client) AdminGetAllGroupsShort(params *AdminGetAllGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllGroupsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllGroupsParams()
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
		ID:                 "AdminGetAllGroups",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllGroupsOK:
		response := &AdminGetAllGroupsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAllGroupsBadRequest:
		response := &AdminGetAllGroupsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllGroupsUnauthorized:
		response := &AdminGetAllGroupsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetAllGroupsInternalServerError:
		response := &AdminGetAllGroupsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetGroupShort get specific user group
Get user group by group ID
*/
func (a *Client) AdminGetGroupShort(params *AdminGetGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGroupParams()
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
		ID:                 "AdminGetGroup",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGroupOK:
		response := &AdminGetGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetGroupUnauthorized:
		response := &AdminGetGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetGroupNotFound:
		response := &AdminGetGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetGroupInternalServerError:
		response := &AdminGetGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateGroupShort update group
Replace group name and contents with new ones.
*/
func (a *Client) AdminUpdateGroupShort(params *AdminUpdateGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGroupParams()
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
		ID:                 "AdminUpdateGroup",
		Method:             "PUT",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGroupOK:
		response := &AdminUpdateGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateGroupBadRequest:
		response := &AdminUpdateGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateGroupUnauthorized:
		response := &AdminUpdateGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateGroupNotFound:
		response := &AdminUpdateGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateGroupInternalServerError:
		response := &AdminUpdateGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteGroupShort delete group
Delete group
*/
func (a *Client) AdminDeleteGroupShort(params *AdminDeleteGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGroupParams()
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
		ID:                 "AdminDeleteGroup",
		Method:             "DELETE",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGroupNoContent:
		response := &AdminDeleteGroupResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeleteGroupUnauthorized:
		response := &AdminDeleteGroupResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteGroupNotFound:
		response := &AdminDeleteGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeleteGroupInternalServerError:
		response := &AdminDeleteGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetGroupContentsShort (legacy) get contents belong to a group
Get content belong to a group
*/
func (a *Client) AdminGetGroupContentsShort(params *AdminGetGroupContentsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGroupContentsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGroupContentsParams()
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
		ID:                 "AdminGetGroupContents",
		Method:             "GET",
		PathPattern:        "/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGroupContentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGroupContentsOK:
		response := &AdminGetGroupContentsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetGroupContentsBadRequest:
		response := &AdminGetGroupContentsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetGroupContentsUnauthorized:
		response := &AdminGetGroupContentsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetGroupContentsNotFound:
		response := &AdminGetGroupContentsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetGroupContentsInternalServerError:
		response := &AdminGetGroupContentsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetOfficialGroupContentsV2Short get contents belong to a group
Get contents belong to a group
*/
func (a *Client) AdminGetOfficialGroupContentsV2Short(params *AdminGetOfficialGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetOfficialGroupContentsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetOfficialGroupContentsV2Params()
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
		ID:                 "AdminGetOfficialGroupContentsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetOfficialGroupContentsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetOfficialGroupContentsV2OK:
		response := &AdminGetOfficialGroupContentsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetOfficialGroupContentsV2BadRequest:
		response := &AdminGetOfficialGroupContentsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetOfficialGroupContentsV2Unauthorized:
		response := &AdminGetOfficialGroupContentsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetOfficialGroupContentsV2NotFound:
		response := &AdminGetOfficialGroupContentsV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetOfficialGroupContentsV2InternalServerError:
		response := &AdminGetOfficialGroupContentsV2Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserGroupContentsV2Short get contents belong to a group
Get contents belong to a group
*/
func (a *Client) AdminGetUserGroupContentsV2Short(params *AdminGetUserGroupContentsV2Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserGroupContentsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserGroupContentsV2Params()
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
		ID:                 "AdminGetUserGroupContentsV2",
		Method:             "GET",
		PathPattern:        "/ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserGroupContentsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserGroupContentsV2OK:
		response := &AdminGetUserGroupContentsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserGroupContentsV2BadRequest:
		response := &AdminGetUserGroupContentsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserGroupContentsV2Unauthorized:
		response := &AdminGetUserGroupContentsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserGroupContentsV2NotFound:
		response := &AdminGetUserGroupContentsV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUserGroupContentsV2InternalServerError:
		response := &AdminGetUserGroupContentsV2Response{}
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
