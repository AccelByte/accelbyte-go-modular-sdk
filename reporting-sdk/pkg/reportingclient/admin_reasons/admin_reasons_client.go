// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_reasons

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin reasons API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin reasons API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListReasonGroups(params *AdminListReasonGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListReasonGroupsOK, *AdminListReasonGroupsInternalServerError, error)
	AdminListReasonGroupsShort(params *AdminListReasonGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListReasonGroupsOK, error)
	CreateReasonGroup(params *CreateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonGroupCreated, *CreateReasonGroupBadRequest, *CreateReasonGroupConflict, *CreateReasonGroupInternalServerError, error)
	CreateReasonGroupShort(params *CreateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonGroupCreated, error)
	GetReasonGroup(params *GetReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetReasonGroupOK, *GetReasonGroupNotFound, *GetReasonGroupInternalServerError, error)
	GetReasonGroupShort(params *GetReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetReasonGroupOK, error)
	DeleteReasonGroup(params *DeleteReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonGroupNoContent, *DeleteReasonGroupInternalServerError, error)
	DeleteReasonGroupShort(params *DeleteReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonGroupNoContent, error)
	UpdateReasonGroup(params *UpdateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonGroupOK, *UpdateReasonGroupBadRequest, *UpdateReasonGroupConflict, *UpdateReasonGroupInternalServerError, error)
	UpdateReasonGroupShort(params *UpdateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonGroupOK, error)
	AdminGetReasons(params *AdminGetReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonsOK, *AdminGetReasonsNotFound, *AdminGetReasonsInternalServerError, error)
	AdminGetReasonsShort(params *AdminGetReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonsOK, error)
	CreateReason(params *CreateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonCreated, *CreateReasonBadRequest, *CreateReasonConflict, *CreateReasonInternalServerError, error)
	CreateReasonShort(params *CreateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonCreated, error)
	AdminGetAllReasons(params *AdminGetAllReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllReasonsOK, *AdminGetAllReasonsInternalServerError, error)
	AdminGetAllReasonsShort(params *AdminGetAllReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllReasonsOK, error)
	AdminGetUnusedReasons(params *AdminGetUnusedReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUnusedReasonsOK, *AdminGetUnusedReasonsNotFound, *AdminGetUnusedReasonsInternalServerError, error)
	AdminGetUnusedReasonsShort(params *AdminGetUnusedReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUnusedReasonsOK, error)
	AdminGetReason(params *AdminGetReasonParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonOK, *AdminGetReasonNotFound, *AdminGetReasonInternalServerError, error)
	AdminGetReasonShort(params *AdminGetReasonParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonOK, error)
	DeleteReason(params *DeleteReasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonNoContent, *DeleteReasonInternalServerError, error)
	DeleteReasonShort(params *DeleteReasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonNoContent, error)
	UpdateReason(params *UpdateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonOK, *UpdateReasonBadRequest, *UpdateReasonConflict, *UpdateReasonInternalServerError, error)
	UpdateReasonShort(params *UpdateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminListReasonGroupsShort instead.

AdminListReasonGroups list reason groups under a namespace
Return list of reason groups ID and title under given namespace.
To fetch the reasons inside a group, use get reason group endpoint.
*/
func (a *Client) AdminListReasonGroups(params *AdminListReasonGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListReasonGroupsOK, *AdminListReasonGroupsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListReasonGroupsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminListReasonGroups",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListReasonGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *AdminListReasonGroupsOK:
		return v, nil, nil

	case *AdminListReasonGroupsInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListReasonGroupsShort list reason groups under a namespace
Return list of reason groups ID and title under given namespace.
To fetch the reasons inside a group, use get reason group endpoint.
*/
func (a *Client) AdminListReasonGroupsShort(params *AdminListReasonGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListReasonGroupsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListReasonGroupsParams()
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
		ID:                 "adminListReasonGroups",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListReasonGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListReasonGroupsOK:
		return v, nil
	case *AdminListReasonGroupsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateReasonGroupShort instead.

CreateReasonGroup create a reason group
Create a reason group for easier query. You can query reasons by specifying
the group title in the list reasons query. Reason group title is case insensitive,
meaning you can't have **reason** if you already create a reason titled **Reason**
*/
func (a *Client) CreateReasonGroup(params *CreateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonGroupCreated, *CreateReasonGroupBadRequest, *CreateReasonGroupConflict, *CreateReasonGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateReasonGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createReasonGroup",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateReasonGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateReasonGroupCreated:
		return v, nil, nil, nil, nil

	case *CreateReasonGroupBadRequest:
		return nil, v, nil, nil, nil

	case *CreateReasonGroupConflict:
		return nil, nil, v, nil, nil

	case *CreateReasonGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateReasonGroupShort create a reason group
Create a reason group for easier query. You can query reasons by specifying
the group title in the list reasons query. Reason group title is case insensitive,
meaning you can't have **reason** if you already create a reason titled **Reason**
*/
func (a *Client) CreateReasonGroupShort(params *CreateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonGroupCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateReasonGroupParams()
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
		ID:                 "createReasonGroup",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateReasonGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateReasonGroupCreated:
		return v, nil
	case *CreateReasonGroupBadRequest:
		return nil, v
	case *CreateReasonGroupConflict:
		return nil, v
	case *CreateReasonGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use GetReasonGroupShort instead.

GetReasonGroup get reason group
*/
func (a *Client) GetReasonGroup(params *GetReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetReasonGroupOK, *GetReasonGroupNotFound, *GetReasonGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetReasonGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "getReasonGroup",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReasonGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *GetReasonGroupOK:
		return v, nil, nil, nil

	case *GetReasonGroupNotFound:
		return nil, v, nil, nil

	case *GetReasonGroupInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetReasonGroupShort get reason group
*/
func (a *Client) GetReasonGroupShort(params *GetReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetReasonGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetReasonGroupParams()
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
		ID:                 "getReasonGroup",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetReasonGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetReasonGroupOK:
		return v, nil
	case *GetReasonGroupNotFound:
		return nil, v
	case *GetReasonGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteReasonGroupShort instead.

DeleteReasonGroup delete a reason group
This endpoint delete a reason group for a namespace with ID.
*/
func (a *Client) DeleteReasonGroup(params *DeleteReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonGroupNoContent, *DeleteReasonGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteReasonGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteReasonGroup",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteReasonGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteReasonGroupNoContent:
		return v, nil, nil

	case *DeleteReasonGroupInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteReasonGroupShort delete a reason group
This endpoint delete a reason group for a namespace with ID.
*/
func (a *Client) DeleteReasonGroupShort(params *DeleteReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonGroupNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteReasonGroupParams()
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
		ID:                 "deleteReasonGroup",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteReasonGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteReasonGroupNoContent:
		return v, nil
	case *DeleteReasonGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateReasonGroupShort instead.

UpdateReasonGroup update a reason group
Reason group title is case insensitive, meaning you can't have **reason** if you already create a reason titled **Reason**
If no reasonIds passed when updating, the current reasons under the reason group will be kept (reasons will not be removed from the group).
*/
func (a *Client) UpdateReasonGroup(params *UpdateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonGroupOK, *UpdateReasonGroupBadRequest, *UpdateReasonGroupConflict, *UpdateReasonGroupInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateReasonGroupParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateReasonGroup",
		Method:             "PATCH",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateReasonGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateReasonGroupOK:
		return v, nil, nil, nil, nil

	case *UpdateReasonGroupBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateReasonGroupConflict:
		return nil, nil, v, nil, nil

	case *UpdateReasonGroupInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateReasonGroupShort update a reason group
Reason group title is case insensitive, meaning you can't have **reason** if you already create a reason titled **Reason**
If no reasonIds passed when updating, the current reasons under the reason group will be kept (reasons will not be removed from the group).
*/
func (a *Client) UpdateReasonGroupShort(params *UpdateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonGroupOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateReasonGroupParams()
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
		ID:                 "updateReasonGroup",
		Method:             "PATCH",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateReasonGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateReasonGroupOK:
		return v, nil
	case *UpdateReasonGroupBadRequest:
		return nil, v
	case *UpdateReasonGroupConflict:
		return nil, v
	case *UpdateReasonGroupInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetReasonsShort instead.

AdminGetReasons get list of reasons
This endpoint get reasons with pagination
*/
func (a *Client) AdminGetReasons(params *AdminGetReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonsOK, *AdminGetReasonsNotFound, *AdminGetReasonsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetReasonsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetReasons",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetReasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetReasonsOK:
		return v, nil, nil, nil

	case *AdminGetReasonsNotFound:
		return nil, v, nil, nil

	case *AdminGetReasonsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetReasonsShort get list of reasons
This endpoint get reasons with pagination
*/
func (a *Client) AdminGetReasonsShort(params *AdminGetReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetReasonsParams()
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
		ID:                 "adminGetReasons",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetReasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetReasonsOK:
		return v, nil
	case *AdminGetReasonsNotFound:
		return nil, v
	case *AdminGetReasonsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use CreateReasonShort instead.

CreateReason create a report reason
This endpoint create a reason for a namespace.
*/
func (a *Client) CreateReason(params *CreateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonCreated, *CreateReasonBadRequest, *CreateReasonConflict, *CreateReasonInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateReasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "createReason",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *CreateReasonCreated:
		return v, nil, nil, nil, nil

	case *CreateReasonBadRequest:
		return nil, v, nil, nil, nil

	case *CreateReasonConflict:
		return nil, nil, v, nil, nil

	case *CreateReasonInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateReasonShort create a report reason
This endpoint create a reason for a namespace.
*/
func (a *Client) CreateReasonShort(params *CreateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateReasonParams()
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
		ID:                 "createReason",
		Method:             "POST",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateReasonCreated:
		return v, nil
	case *CreateReasonBadRequest:
		return nil, v
	case *CreateReasonConflict:
		return nil, v
	case *CreateReasonInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetAllReasonsShort instead.

AdminGetAllReasons get all reasons
This endpoint get all reasons without pagination.
*/
func (a *Client) AdminGetAllReasons(params *AdminGetAllReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllReasonsOK, *AdminGetAllReasonsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllReasonsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetAllReasons",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/all",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllReasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllReasonsOK:
		return v, nil, nil

	case *AdminGetAllReasonsInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllReasonsShort get all reasons
This endpoint get all reasons without pagination.
*/
func (a *Client) AdminGetAllReasonsShort(params *AdminGetAllReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllReasonsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetAllReasonsParams()
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
		ID:                 "adminGetAllReasons",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/all",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetAllReasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetAllReasonsOK:
		return v, nil
	case *AdminGetAllReasonsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetUnusedReasonsShort instead.

AdminGetUnusedReasons get list of reasons that not used by moderation rules
This endpoint get reasons not used by moderation rules.
*/
func (a *Client) AdminGetUnusedReasons(params *AdminGetUnusedReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUnusedReasonsOK, *AdminGetUnusedReasonsNotFound, *AdminGetUnusedReasonsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUnusedReasonsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetUnusedReasons",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/unused",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUnusedReasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetUnusedReasonsOK:
		return v, nil, nil, nil

	case *AdminGetUnusedReasonsNotFound:
		return nil, v, nil, nil

	case *AdminGetUnusedReasonsInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUnusedReasonsShort get list of reasons that not used by moderation rules
This endpoint get reasons not used by moderation rules.
*/
func (a *Client) AdminGetUnusedReasonsShort(params *AdminGetUnusedReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUnusedReasonsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUnusedReasonsParams()
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
		ID:                 "adminGetUnusedReasons",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/unused",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUnusedReasonsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUnusedReasonsOK:
		return v, nil
	case *AdminGetUnusedReasonsNotFound:
		return nil, v
	case *AdminGetUnusedReasonsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetReasonShort instead.

AdminGetReason get a single reason
This endpoint get a single reason.
*/
func (a *Client) AdminGetReason(params *AdminGetReasonParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonOK, *AdminGetReasonNotFound, *AdminGetReasonInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetReasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetReason",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetReasonOK:
		return v, nil, nil, nil

	case *AdminGetReasonNotFound:
		return nil, v, nil, nil

	case *AdminGetReasonInternalServerError:
		return nil, nil, v, nil

	default:
		return nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetReasonShort get a single reason
This endpoint get a single reason.
*/
func (a *Client) AdminGetReasonShort(params *AdminGetReasonParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetReasonParams()
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
		ID:                 "adminGetReason",
		Method:             "GET",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetReasonOK:
		return v, nil
	case *AdminGetReasonNotFound:
		return nil, v
	case *AdminGetReasonInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use DeleteReasonShort instead.

DeleteReason delete a report reason
This endpoint delete a reason for a namespace with ID.
*/
func (a *Client) DeleteReason(params *DeleteReasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonNoContent, *DeleteReasonInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteReasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "deleteReason",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *DeleteReasonNoContent:
		return v, nil, nil

	case *DeleteReasonInternalServerError:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteReasonShort delete a report reason
This endpoint delete a reason for a namespace with ID.
*/
func (a *Client) DeleteReasonShort(params *DeleteReasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteReasonParams()
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
		ID:                 "deleteReason",
		Method:             "DELETE",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteReasonNoContent:
		return v, nil
	case *DeleteReasonInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use UpdateReasonShort instead.

UpdateReason update a report reason
This endpoint update a reason for a namespace with ID.
*/
func (a *Client) UpdateReason(params *UpdateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonOK, *UpdateReasonBadRequest, *UpdateReasonConflict, *UpdateReasonInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateReasonParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "updateReason",
		Method:             "PATCH",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *UpdateReasonOK:
		return v, nil, nil, nil, nil

	case *UpdateReasonBadRequest:
		return nil, v, nil, nil, nil

	case *UpdateReasonConflict:
		return nil, nil, v, nil, nil

	case *UpdateReasonInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateReasonShort update a report reason
This endpoint update a reason for a namespace with ID.
*/
func (a *Client) UpdateReasonShort(params *UpdateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateReasonParams()
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
		ID:                 "updateReason",
		Method:             "PATCH",
		PathPattern:        "/reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateReasonReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateReasonOK:
		return v, nil
	case *UpdateReasonBadRequest:
		return nil, v
	case *UpdateReasonConflict:
		return nil, v
	case *UpdateReasonInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
