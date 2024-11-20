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
	GetNamespacesShort(params *GetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesOK, error)
	CreateNamespaceShort(params *CreateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNamespaceCreated, error)
	GetNamespaceShort(params *GetNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceOK, error)
	DeleteNamespaceShort(params *DeleteNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceOK, error)
	UpdateNamespaceShort(params *UpdateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceOK, error)
	GetChildNamespacesShort(params *GetChildNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildNamespacesOK, error)
	GetNamespaceContextShort(params *GetNamespaceContextParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceContextOK, error)
	GetGameNamespacesShort(params *GetGameNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameNamespacesOK, error)
	GetNamespacePublisherShort(params *GetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacePublisherOK, error)
	ChangeNamespaceStatusShort(params *ChangeNamespaceStatusParams, authInfo runtime.ClientAuthInfoWriter) (*ChangeNamespaceStatusOK, error)
	PublicGetNamespacesShort(params *PublicGetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacesOK, error)
	GetNamespace1Short(params *GetNamespace1Params) (*GetNamespace1OK, error)
	PublicGetNamespacePublisherShort(params *PublicGetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacePublisherOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetNamespacesShort get all namespaces
Get all namespaces.
Other detail info:

  * Action code : 11303
  *  Returns : list of namespaces
*/
func (a *Client) GetNamespacesShort(params *GetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacesOK, error) {
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
		return v, nil
	case *GetNamespacesUnauthorized:
		return nil, v
	case *GetNamespacesForbidden:
		return nil, v

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
func (a *Client) CreateNamespaceShort(params *CreateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*CreateNamespaceCreated, error) {
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
		return v, nil
	case *CreateNamespaceBadRequest:
		return nil, v
	case *CreateNamespaceUnauthorized:
		return nil, v
	case *CreateNamespaceForbidden:
		return nil, v
	case *CreateNamespaceConflict:
		return nil, v

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
func (a *Client) GetNamespaceShort(params *GetNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceOK, error) {
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
		return v, nil
	case *GetNamespaceBadRequest:
		return nil, v
	case *GetNamespaceUnauthorized:
		return nil, v
	case *GetNamespaceForbidden:
		return nil, v
	case *GetNamespaceNotFound:
		return nil, v

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
func (a *Client) DeleteNamespaceShort(params *DeleteNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteNamespaceOK, error) {
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
		return v, nil
	case *DeleteNamespaceBadRequest:
		return nil, v
	case *DeleteNamespaceUnauthorized:
		return nil, v
	case *DeleteNamespaceForbidden:
		return nil, v
	case *DeleteNamespaceNotFound:
		return nil, v
	case *DeleteNamespaceConflict:
		return nil, v

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
func (a *Client) UpdateNamespaceShort(params *UpdateNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateNamespaceOK, error) {
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
		return v, nil
	case *UpdateNamespaceBadRequest:
		return nil, v
	case *UpdateNamespaceUnauthorized:
		return nil, v
	case *UpdateNamespaceForbidden:
		return nil, v
	case *UpdateNamespaceNotFound:
		return nil, v
	case *UpdateNamespaceConflict:
		return nil, v

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
func (a *Client) GetChildNamespacesShort(params *GetChildNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChildNamespacesOK, error) {
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
		return v, nil
	case *GetChildNamespacesUnauthorized:
		return nil, v
	case *GetChildNamespacesForbidden:
		return nil, v

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
func (a *Client) GetNamespaceContextShort(params *GetNamespaceContextParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespaceContextOK, error) {
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
		return v, nil
	case *GetNamespaceContextUnauthorized:
		return nil, v
	case *GetNamespaceContextForbidden:
		return nil, v

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
func (a *Client) GetGameNamespacesShort(params *GetGameNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameNamespacesOK, error) {
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
		return v, nil
	case *GetGameNamespacesUnauthorized:
		return nil, v
	case *GetGameNamespacesForbidden:
		return nil, v

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
func (a *Client) GetNamespacePublisherShort(params *GetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*GetNamespacePublisherOK, error) {
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
		return v, nil
	case *GetNamespacePublisherBadRequest:
		return nil, v
	case *GetNamespacePublisherUnauthorized:
		return nil, v
	case *GetNamespacePublisherForbidden:
		return nil, v
	case *GetNamespacePublisherNotFound:
		return nil, v

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
func (a *Client) ChangeNamespaceStatusShort(params *ChangeNamespaceStatusParams, authInfo runtime.ClientAuthInfoWriter) (*ChangeNamespaceStatusOK, error) {
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
		return v, nil
	case *ChangeNamespaceStatusBadRequest:
		return nil, v
	case *ChangeNamespaceStatusUnauthorized:
		return nil, v
	case *ChangeNamespaceStatusForbidden:
		return nil, v
	case *ChangeNamespaceStatusNotFound:
		return nil, v
	case *ChangeNamespaceStatusConflict:
		return nil, v

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
func (a *Client) PublicGetNamespacesShort(params *PublicGetNamespacesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacesOK, error) {
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
		return v, nil
	case *PublicGetNamespacesUnauthorized:
		return nil, v

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
func (a *Client) GetNamespace1Short(params *GetNamespace1Params) (*GetNamespace1OK, error) {
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
		return v, nil
	case *GetNamespace1NotFound:
		return nil, v

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
func (a *Client) PublicGetNamespacePublisherShort(params *PublicGetNamespacePublisherParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetNamespacePublisherOK, error) {
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
		return v, nil
	case *PublicGetNamespacePublisherBadRequest:
		return nil, v
	case *PublicGetNamespacePublisherUnauthorized:
		return nil, v
	case *PublicGetNamespacePublisherForbidden:
		return nil, v
	case *PublicGetNamespacePublisherNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
