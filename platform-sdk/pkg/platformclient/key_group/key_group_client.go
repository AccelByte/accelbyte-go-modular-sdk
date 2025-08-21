// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package key_group

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new key group API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for key group API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryKeyGroupsShort(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsResponse, error)
	CreateKeyGroupShort(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupResponse, error)
	GetKeyGroupByBoothNameShort(params *GetKeyGroupByBoothNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupByBoothNameResponse, error)
	GetKeyGroupShort(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupResponse, error)
	UpdateKeyGroupShort(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupResponse, error)
	GetKeyGroupDynamicShort(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicResponse, error)
	ListKeysShort(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysResponse, error)
	UploadKeysShort(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryKeyGroupsShort query key groups
Query key groups, if name is presented, it's fuzzy match.
Other detail info:
  - Returns : slice of key group
*/
func (a *Client) QueryKeyGroupsShort(params *QueryKeyGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryKeyGroupsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryKeyGroupsParams()
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
		ID:                 "queryKeyGroups",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryKeyGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryKeyGroupsOK:
		response := &QueryKeyGroupsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateKeyGroupShort create key group
Create key group.
Other detail info:
  - Returns : created key group
*/
func (a *Client) CreateKeyGroupShort(params *CreateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateKeyGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateKeyGroupParams()
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
		ID:                 "createKeyGroup",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateKeyGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateKeyGroupCreated:
		response := &CreateKeyGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateKeyGroupConflict:
		response := &CreateKeyGroupResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateKeyGroupUnprocessableEntity:
		response := &CreateKeyGroupResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyGroupByBoothNameShort get key group by booth name
Get key group.
Other detail info:
  - Returns : key group info
*/
func (a *Client) GetKeyGroupByBoothNameShort(params *GetKeyGroupByBoothNameParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupByBoothNameResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupByBoothNameParams()
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
		ID:                 "getKeyGroupByBoothName",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/byBoothName",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyGroupByBoothNameReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyGroupByBoothNameOK:
		response := &GetKeyGroupByBoothNameResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetKeyGroupByBoothNameNotFound:
		response := &GetKeyGroupByBoothNameResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyGroupShort get key group
Get key group.
Other detail info:
  - Returns : key group info
*/
func (a *Client) GetKeyGroupShort(params *GetKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupParams()
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
		ID:                 "getKeyGroup",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyGroupOK:
		response := &GetKeyGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetKeyGroupNotFound:
		response := &GetKeyGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateKeyGroupShort update key group
Update key group.
Other detail info:
  - Returns : updated key group
*/
func (a *Client) UpdateKeyGroupShort(params *UpdateKeyGroupParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateKeyGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateKeyGroupParams()
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
		ID:                 "updateKeyGroup",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateKeyGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateKeyGroupOK:
		response := &UpdateKeyGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateKeyGroupNotFound:
		response := &UpdateKeyGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateKeyGroupConflict:
		response := &UpdateKeyGroupResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateKeyGroupUnprocessableEntity:
		response := &UpdateKeyGroupResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetKeyGroupDynamicShort get key group dynamic
Get key group dynamic.
Other detail info:
  - Returns : key group info
*/
func (a *Client) GetKeyGroupDynamicShort(params *GetKeyGroupDynamicParams, authInfo runtime.ClientAuthInfoWriter) (*GetKeyGroupDynamicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetKeyGroupDynamicParams()
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
		ID:                 "getKeyGroupDynamic",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetKeyGroupDynamicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetKeyGroupDynamicOK:
		response := &GetKeyGroupDynamicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetKeyGroupDynamicNotFound:
		response := &GetKeyGroupDynamicResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListKeysShort list keys of a key group
This API is used to list keys of a key group.
Other detail info:
  - Returns : keys
*/
func (a *Client) ListKeysShort(params *ListKeysParams, authInfo runtime.ClientAuthInfoWriter) (*ListKeysResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListKeysParams()
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
		ID:                 "listKeys",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListKeysReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListKeysOK:
		response := &ListKeysResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UploadKeysShort upload keys to key group
This API is used to upload keys with csv format to a key group.

Other detail info:
  - Returns : item data
*/
func (a *Client) UploadKeysShort(params *UploadKeysParams, authInfo runtime.ClientAuthInfoWriter) (*UploadKeysResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUploadKeysParams()
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
		ID:                 "uploadKeys",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}/keys",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UploadKeysReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UploadKeysOK:
		response := &UploadKeysResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UploadKeysBadRequest:
		response := &UploadKeysResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UploadKeysNotFound:
		response := &UploadKeysResponse{}
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
