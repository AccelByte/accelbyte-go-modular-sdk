// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_item_types

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin item types API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin item types API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListItemTypesShort(params *AdminListItemTypesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListItemTypesOK, error)
	AdminCreateItemTypeShort(params *AdminCreateItemTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateItemTypeCreated, error)
	AdminDeleteItemTypeShort(params *AdminDeleteItemTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteItemTypeNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListItemTypesShort to list itemtypes

This endpoint will list all item types in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [READ]
*/
func (a *Client) AdminListItemTypesShort(params *AdminListItemTypesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListItemTypesOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListItemTypesParams()
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
		ID:                 "AdminListItemTypes",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/itemtypes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListItemTypesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListItemTypesOK:
		return v, nil
	case *AdminListItemTypesBadRequest:
		return nil, v
	case *AdminListItemTypesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateItemTypeShort to create an itemtype

This endpoint will create a new itemtype.
The itemtype name must be unique per namespace.
It is safe to call this endpoint even if the itemtype already exists.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [CREATE]
*/
func (a *Client) AdminCreateItemTypeShort(params *AdminCreateItemTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateItemTypeCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateItemTypeParams()
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
		ID:                 "AdminCreateItemType",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/itemtypes",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateItemTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateItemTypeCreated:
		return v, nil
	case *AdminCreateItemTypeBadRequest:
		return nil, v
	case *AdminCreateItemTypeConflict:
		return nil, v
	case *AdminCreateItemTypeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteItemTypeShort to delete an item type

This endpoint will delete a item type by itemtypeName in a specified namespace.
If the itemtypeName doesn't exist in a namespace, it'll return not found.

Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [DELETE]
*/
func (a *Client) AdminDeleteItemTypeShort(params *AdminDeleteItemTypeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteItemTypeNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteItemTypeParams()
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
		ID:                 "AdminDeleteItemType",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteItemTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteItemTypeNoContent:
		return v, nil
	case *AdminDeleteItemTypeNotFound:
		return nil, v
	case *AdminDeleteItemTypeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
