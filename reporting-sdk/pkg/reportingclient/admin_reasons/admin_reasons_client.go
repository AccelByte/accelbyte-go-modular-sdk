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
	AdminListReasonGroupsShort(params *AdminListReasonGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListReasonGroupsResponse, error)
	CreateReasonGroupShort(params *CreateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonGroupResponse, error)
	GetReasonGroupShort(params *GetReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetReasonGroupResponse, error)
	DeleteReasonGroupShort(params *DeleteReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonGroupResponse, error)
	UpdateReasonGroupShort(params *UpdateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonGroupResponse, error)
	AdminGetReasonsShort(params *AdminGetReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonsResponse, error)
	CreateReasonShort(params *CreateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonResponse, error)
	AdminGetAllReasonsShort(params *AdminGetAllReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllReasonsResponse, error)
	AdminGetUnusedReasonsShort(params *AdminGetUnusedReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUnusedReasonsResponse, error)
	AdminGetReasonShort(params *AdminGetReasonParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonResponse, error)
	DeleteReasonShort(params *DeleteReasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonResponse, error)
	UpdateReasonShort(params *UpdateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListReasonGroupsShort list reason groups under a namespace
Return list of reason groups ID and title under given namespace.
To fetch the reasons inside a group, use get reason group endpoint.
*/
func (a *Client) AdminListReasonGroupsShort(params *AdminListReasonGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListReasonGroupsResponse, error) {
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
		response := &AdminListReasonGroupsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListReasonGroupsInternalServerError:
		response := &AdminListReasonGroupsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateReasonGroupShort create a reason group
Create a reason group for easier query. You can query reasons by specifying
the group title in the list reasons query. Reason group title is case insensitive,
meaning you can't have **reason** if you already create a reason titled **Reason**
*/
func (a *Client) CreateReasonGroupShort(params *CreateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonGroupResponse, error) {
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
		response := &CreateReasonGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateReasonGroupBadRequest:
		response := &CreateReasonGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateReasonGroupConflict:
		response := &CreateReasonGroupResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateReasonGroupInternalServerError:
		response := &CreateReasonGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetReasonGroupShort get reason group
*/
func (a *Client) GetReasonGroupShort(params *GetReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetReasonGroupResponse, error) {
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
		response := &GetReasonGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetReasonGroupNotFound:
		response := &GetReasonGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetReasonGroupInternalServerError:
		response := &GetReasonGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteReasonGroupShort delete a reason group
This endpoint delete a reason group for a namespace with ID.
*/
func (a *Client) DeleteReasonGroupShort(params *DeleteReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonGroupResponse, error) {
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
		response := &DeleteReasonGroupResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteReasonGroupInternalServerError:
		response := &DeleteReasonGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateReasonGroupShort update a reason group
Reason group title is case insensitive, meaning you can't have **reason** if you already create a reason titled **Reason**
If no reasonIds passed when updating, the current reasons under the reason group will be kept (reasons will not be removed from the group).
*/
func (a *Client) UpdateReasonGroupShort(params *UpdateReasonGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonGroupResponse, error) {
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
		response := &UpdateReasonGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateReasonGroupBadRequest:
		response := &UpdateReasonGroupResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateReasonGroupConflict:
		response := &UpdateReasonGroupResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateReasonGroupInternalServerError:
		response := &UpdateReasonGroupResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetReasonsShort get list of reasons
This endpoint get reasons with pagination
*/
func (a *Client) AdminGetReasonsShort(params *AdminGetReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonsResponse, error) {
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
		response := &AdminGetReasonsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetReasonsNotFound:
		response := &AdminGetReasonsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetReasonsInternalServerError:
		response := &AdminGetReasonsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateReasonShort create a report reason
This endpoint create a reason for a namespace.
*/
func (a *Client) CreateReasonShort(params *CreateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*CreateReasonResponse, error) {
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
		response := &CreateReasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateReasonBadRequest:
		response := &CreateReasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateReasonConflict:
		response := &CreateReasonResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateReasonInternalServerError:
		response := &CreateReasonResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetAllReasonsShort get all reasons
This endpoint get all reasons without pagination.
*/
func (a *Client) AdminGetAllReasonsShort(params *AdminGetAllReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetAllReasonsResponse, error) {
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
		response := &AdminGetAllReasonsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetAllReasonsInternalServerError:
		response := &AdminGetAllReasonsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUnusedReasonsShort get list of reasons that not used by moderation rules
This endpoint get reasons not used by moderation rules.
*/
func (a *Client) AdminGetUnusedReasonsShort(params *AdminGetUnusedReasonsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUnusedReasonsResponse, error) {
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
		response := &AdminGetUnusedReasonsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUnusedReasonsNotFound:
		response := &AdminGetUnusedReasonsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetUnusedReasonsInternalServerError:
		response := &AdminGetUnusedReasonsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetReasonShort get a single reason
This endpoint get a single reason.
*/
func (a *Client) AdminGetReasonShort(params *AdminGetReasonParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetReasonResponse, error) {
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
		response := &AdminGetReasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetReasonNotFound:
		response := &AdminGetReasonResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetReasonInternalServerError:
		response := &AdminGetReasonResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteReasonShort delete a report reason
This endpoint delete a reason for a namespace with ID.
*/
func (a *Client) DeleteReasonShort(params *DeleteReasonParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteReasonResponse, error) {
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
		response := &DeleteReasonResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteReasonInternalServerError:
		response := &DeleteReasonResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateReasonShort update a report reason
This endpoint update a reason for a namespace with ID.
*/
func (a *Client) UpdateReasonShort(params *UpdateReasonParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateReasonResponse, error) {
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
		response := &UpdateReasonResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateReasonBadRequest:
		response := &UpdateReasonResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateReasonConflict:
		response := &UpdateReasonResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateReasonInternalServerError:
		response := &UpdateReasonResponse{}
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
