// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package view

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new view API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for view API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListViewsShort(params *ListViewsParams, authInfo runtime.ClientAuthInfoWriter) (*ListViewsOK, error)
	CreateViewShort(params *CreateViewParams, authInfo runtime.ClientAuthInfoWriter) (*CreateViewCreated, error)
	GetViewShort(params *GetViewParams, authInfo runtime.ClientAuthInfoWriter) (*GetViewOK, error)
	UpdateViewShort(params *UpdateViewParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateViewOK, error)
	DeleteViewShort(params *DeleteViewParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteViewNoContent, error)
	PublicListViewsShort(params *PublicListViewsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListViewsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListViewsShort list all views
This API is used to list all views.

Other detail info:

  * Returns : the list of views
*/
func (a *Client) ListViewsShort(params *ListViewsParams, authInfo runtime.ClientAuthInfoWriter) (*ListViewsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListViewsParams()
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
		ID:                 "listViews",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/views",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListViewsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListViewsOK:
		return v, nil
	case *ListViewsNotFound:
		return nil, v
	case *ListViewsUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateViewShort create a view
This API is used to create a view.

Other detail info:

  * Returns : created a view



## Restrictions for localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) CreateViewShort(params *CreateViewParams, authInfo runtime.ClientAuthInfoWriter) (*CreateViewCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateViewParams()
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
		ID:                 "createView",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/views",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateViewReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateViewCreated:
		return v, nil
	case *CreateViewBadRequest:
		return nil, v
	case *CreateViewNotFound:
		return nil, v
	case *CreateViewConflict:
		return nil, v
	case *CreateViewUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetViewShort get a view
This API is used to get a view.

Other detail info:

  * Returns : view data
*/
func (a *Client) GetViewShort(params *GetViewParams, authInfo runtime.ClientAuthInfoWriter) (*GetViewOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetViewParams()
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
		ID:                 "getView",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/views/{viewId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetViewReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetViewOK:
		return v, nil
	case *GetViewNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateViewShort update a view
This API is used to update a view.

Other detail info:

  * Returns : updated view data



## Restrictions for localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) UpdateViewShort(params *UpdateViewParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateViewOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateViewParams()
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
		ID:                 "updateView",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/views/{viewId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateViewReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateViewOK:
		return v, nil
	case *UpdateViewBadRequest:
		return nil, v
	case *UpdateViewNotFound:
		return nil, v
	case *UpdateViewConflict:
		return nil, v
	case *UpdateViewUnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteViewShort delete a view
This API is used to delete a view.It will also delete all the related sections
*/
func (a *Client) DeleteViewShort(params *DeleteViewParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteViewNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteViewParams()
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
		ID:                 "deleteView",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/views/{viewId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteViewReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteViewNoContent:
		return v, nil
	case *DeleteViewNotFound:
		return nil, v
	case *DeleteViewConflict:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListViewsShort get all views
This API is used to get all views.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store views)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store views)
  *  Returns : all views
*/
func (a *Client) PublicListViewsShort(params *PublicListViewsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListViewsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListViewsParams()
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
		ID:                 "publicListViews",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/views",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListViewsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListViewsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
