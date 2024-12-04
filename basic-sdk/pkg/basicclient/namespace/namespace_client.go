// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetNamespacesShort(params *GetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesResponse, error)
	CreateNamespaceShort(params *CreateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNamespaceResponse, error)
	GetNamespaceShort(params *GetNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceResponse, error)
	DeleteNamespaceShort(params *DeleteNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceResponse, error)
	UpdateNamespaceShort(params *UpdateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceResponse, error)
	GetChildNamespacesShort(params *GetChildNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildNamespacesResponse, error)
	GetNamespaceContextShort(params *GetNamespaceContextParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceContextResponse, error)
	GetGameNamespacesShort(params *GetGameNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameNamespacesResponse, error)
	GetNamespacePublisherShort(params *GetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacePublisherResponse, error)
	ChangeNamespaceStatusShort(params *ChangeNamespaceStatusParams, authInfo runtime.ClientAuthInfoWriter) (*ChangeNamespaceStatusResponse, error)
	PublicGetNamespacesShort(params *PublicGetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacesResponse, error)
	GetNamespace1Short(params *GetNamespace1Params) (*GetNamespace1Response, error)
	PublicGetNamespacePublisherShort(params *PublicGetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacePublisherResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetNamespacesShort get all namespaces
Get all namespaces.
Other detail info:

  * Action code : 11303
  *  Returns : list of namespaces
*/
func (a *Client) GetNamespacesShort(params *GetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespacesParams()
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
		ID:                 "getNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespacesOK:
		response := &GetNamespacesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNamespacesUnauthorized:
		response := &GetNamespacesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNamespacesForbidden:
		response := &GetNamespacesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateNamespaceShort create a namespace
Create a namespace.
By default the namespace is enabled.
In multi tenant mode, parentNamespace will be automatically filled with requester namespace if the requester is using studio or publisher token, and it will be filled with studio namespace if the requester uses game token. An oauth client will also be created and the id will be returned.
displayName rule:


  * Alphanumeric lowercase and uppercase are allowed
  * Allowed Special Character: ',. -
  * Must start and end with alphanumeric
  * Spaces and special character are allowed but cannot appear twice in a row


Other detail info:

  * Action code : 11301
  *  Returns : created namespace
*/
func (a *Client) CreateNamespaceShort(params *CreateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateNamespaceParams()
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
		ID:                 "createNamespace",
		Method:             "POST",
		PathPattern:        "/basic/v1/admin/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateNamespaceCreated:
		response := &CreateNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateNamespaceBadRequest:
		response := &CreateNamespaceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNamespaceUnauthorized:
		response := &CreateNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNamespaceForbidden:
		response := &CreateNamespaceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateNamespaceConflict:
		response := &CreateNamespaceResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNamespaceShort get a namespace
Get a namespace.
In multi tenant mode, parentNamespace will be returned.
Other detail info:

  * Action code : 11304
  *  Returns : namespace
*/
func (a *Client) GetNamespaceShort(params *GetNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespaceParams()
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
		ID:                 "getNamespace",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespaceOK:
		response := &GetNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNamespaceBadRequest:
		response := &GetNamespaceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNamespaceUnauthorized:
		response := &GetNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNamespaceForbidden:
		response := &GetNamespaceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNamespaceNotFound:
		response := &GetNamespaceResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteNamespaceShort delete a namespace
Delete a namespace.
Other detail info:

  * Action code : 11307
  *  Returns : deleted namespace
*/
func (a *Client) DeleteNamespaceShort(params *DeleteNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteNamespaceParams()
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
		ID:                 "deleteNamespace",
		Method:             "DELETE",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteNamespaceOK:
		response := &DeleteNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DeleteNamespaceBadRequest:
		response := &DeleteNamespaceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNamespaceUnauthorized:
		response := &DeleteNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNamespaceForbidden:
		response := &DeleteNamespaceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNamespaceNotFound:
		response := &DeleteNamespaceResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteNamespaceConflict:
		response := &DeleteNamespaceResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateNamespaceShort update namespace basic info
Update namespace basic info.
displayName rule:


  * Alphanumeric lowercase and uppercase are allowed
  * Allowed Special Character: ',. -
  * Must start and end with alphanumeric
  * Spaces and special character are allowed but cannot appear twice in a row


Other detail info:

  * Action code : 11302
  *  Returns : updated namespace
*/
func (a *Client) UpdateNamespaceShort(params *UpdateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateNamespaceParams()
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
		ID:                 "updateNamespace",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateNamespaceOK:
		response := &UpdateNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateNamespaceBadRequest:
		response := &UpdateNamespaceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNamespaceUnauthorized:
		response := &UpdateNamespaceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNamespaceForbidden:
		response := &UpdateNamespaceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNamespaceNotFound:
		response := &UpdateNamespaceResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateNamespaceConflict:
		response := &UpdateNamespaceResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetChildNamespacesShort get child namespaces
Get child namespaces.
If input namespace is publisher namespace, then it will return its all studio namespace.
If input namespace is studio namespace, then it will return its all game namespace.
Other detail info:

  * Returns : list of child namespaces
*/
func (a *Client) GetChildNamespacesShort(params *GetChildNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildNamespacesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChildNamespacesParams()
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
		ID:                 "getChildNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/child",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChildNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetChildNamespacesOK:
		response := &GetChildNamespacesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetChildNamespacesUnauthorized:
		response := &GetChildNamespacesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetChildNamespacesForbidden:
		response := &GetChildNamespacesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNamespaceContextShort get context of namespace
Get context of namespace.
Other detail info:

  * Returns : context of namespace
*/
func (a *Client) GetNamespaceContextShort(params *GetNamespaceContextParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceContextResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespaceContextParams()
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
		ID:                 "getNamespaceContext",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/context",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespaceContextReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespaceContextOK:
		response := &GetNamespaceContextResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNamespaceContextUnauthorized:
		response := &GetNamespaceContextResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNamespaceContextForbidden:
		response := &GetNamespaceContextResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameNamespacesShort get game namespaces
Get game namespaces.
In multi tenant mode, a given super admin namespace will return all game namespaces of studio namespaces
Other detail info:

  * Action code : 11308
  *  Returns : list of namespaces
*/
func (a *Client) GetGameNamespacesShort(params *GetGameNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameNamespacesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameNamespacesParams()
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
		ID:                 "getGameNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/game",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameNamespacesOK:
		response := &GetGameNamespacesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGameNamespacesUnauthorized:
		response := &GetGameNamespacesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetGameNamespacesForbidden:
		response := &GetGameNamespacesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNamespacePublisherShort get namespace info related publisher namespace
Get namespace info related publisher namespace.
Other detail info:

  * Action code : 11305
  *  Returns : Namespace info related publisher namespace
*/
func (a *Client) GetNamespacePublisherShort(params *GetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacePublisherResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespacePublisherParams()
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
		ID:                 "getNamespacePublisher",
		Method:             "GET",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespacePublisherReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespacePublisherOK:
		response := &GetNamespacePublisherResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNamespacePublisherBadRequest:
		response := &GetNamespacePublisherResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNamespacePublisherUnauthorized:
		response := &GetNamespacePublisherResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNamespacePublisherForbidden:
		response := &GetNamespacePublisherResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetNamespacePublisherNotFound:
		response := &GetNamespacePublisherResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ChangeNamespaceStatusShort change namespace status
Change a namespace status.
Other detail info:

  * Action code : 11306
  *  Returns : updated namespace
*/
func (a *Client) ChangeNamespaceStatusShort(params *ChangeNamespaceStatusParams, authInfo runtime.ClientAuthInfoWriter) (*ChangeNamespaceStatusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChangeNamespaceStatusParams()
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
		ID:                 "changeNamespaceStatus",
		Method:             "PATCH",
		PathPattern:        "/basic/v1/admin/namespaces/{namespace}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChangeNamespaceStatusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ChangeNamespaceStatusOK:
		response := &ChangeNamespaceStatusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ChangeNamespaceStatusBadRequest:
		response := &ChangeNamespaceStatusResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ChangeNamespaceStatusUnauthorized:
		response := &ChangeNamespaceStatusResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ChangeNamespaceStatusForbidden:
		response := &ChangeNamespaceStatusResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ChangeNamespaceStatusNotFound:
		response := &ChangeNamespaceStatusResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ChangeNamespaceStatusConflict:
		response := &ChangeNamespaceStatusResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetNamespacesShort get all namespaces
Get all namespaces.
Other detail info:

  * Action code : 11303
  *  Returns : list of namespaces
*/
func (a *Client) PublicGetNamespacesShort(params *PublicGetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespacesParams()
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
		ID:                 "publicGetNamespaces",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespacesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespacesOK:
		response := &PublicGetNamespacesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetNamespacesUnauthorized:
		response := &PublicGetNamespacesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetNamespace1Short get a namespace info
Get a namespace info.
Other detail info:

  * Returns : namespace info
*/
func (a *Client) GetNamespace1Short(params *GetNamespace1Params) (*GetNamespace1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetNamespace1Params()
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
		ID:                 "getNamespace_1",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetNamespace1Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetNamespace1OK:
		response := &GetNamespace1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetNamespace1NotFound:
		response := &GetNamespace1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetNamespacePublisherShort get namespace info related publisher namespace
Get namespace info related publisher namespace.
Other detail info:

  * Action code : 11305
  *  Returns : Namespace info related publisher namespace
*/
func (a *Client) PublicGetNamespacePublisherShort(params *PublicGetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacePublisherResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetNamespacePublisherParams()
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
		ID:                 "publicGetNamespacePublisher",
		Method:             "GET",
		PathPattern:        "/basic/v1/public/namespaces/{namespace}/publisher",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetNamespacePublisherReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetNamespacePublisherOK:
		response := &PublicGetNamespacePublisherResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetNamespacePublisherBadRequest:
		response := &PublicGetNamespacePublisherResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetNamespacePublisherUnauthorized:
		response := &PublicGetNamespacePublisherResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetNamespacePublisherForbidden:
		response := &PublicGetNamespacePublisherResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetNamespacePublisherNotFound:
		response := &PublicGetNamespacePublisherResponse{}
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
