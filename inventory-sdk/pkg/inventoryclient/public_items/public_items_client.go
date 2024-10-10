// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_items

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new public items API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for public items API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PublicConsumeMyItemShort(params *PublicConsumeMyItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeMyItemOK, error)
	PublicListItemsShort(params *PublicListItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListItemsOK, error)
	PublicBulkUpdateMyItemsShort(params *PublicBulkUpdateMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkUpdateMyItemsOK, error)
	PublicBulkRemoveMyItemsShort(params *PublicBulkRemoveMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkRemoveMyItemsOK, error)
	PublicMoveMyItemsShort(params *PublicMoveMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMoveMyItemsOK, error)
	PublicGetItemShort(params *PublicGetItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicConsumeMyItemShort to consume item

Consume user's own item.
*/
func (a *Client) PublicConsumeMyItemShort(params *PublicConsumeMyItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeMyItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicConsumeMyItemParams()
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
		ID:                 "PublicConsumeMyItem",
		Method:             "POST",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicConsumeMyItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicConsumeMyItemOK:
		return v, nil
	case *PublicConsumeMyItemBadRequest:
		return nil, v
	case *PublicConsumeMyItemNotFound:
		return nil, v
	case *PublicConsumeMyItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListItemsShort to list all items

Listing all user's owned items in an inventory.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListItemsShort(params *PublicListItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListItemsParams()
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
		ID:                 "PublicListItems",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListItemsOK:
		return v, nil
	case *PublicListItemsBadRequest:
		return nil, v
	case *PublicListItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkUpdateMyItemsShort to bulk update items

Bulk Updating user's own items.
*/
func (a *Client) PublicBulkUpdateMyItemsShort(params *PublicBulkUpdateMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkUpdateMyItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkUpdateMyItemsParams()
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
		ID:                 "PublicBulkUpdateMyItems",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkUpdateMyItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkUpdateMyItemsOK:
		return v, nil
	case *PublicBulkUpdateMyItemsBadRequest:
		return nil, v
	case *PublicBulkUpdateMyItemsNotFound:
		return nil, v
	case *PublicBulkUpdateMyItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkRemoveMyItemsShort to bulk remove items

Bulk remove user's own items.
*/
func (a *Client) PublicBulkRemoveMyItemsShort(params *PublicBulkRemoveMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkRemoveMyItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkRemoveMyItemsParams()
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
		ID:                 "PublicBulkRemoveMyItems",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkRemoveMyItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkRemoveMyItemsOK:
		return v, nil
	case *PublicBulkRemoveMyItemsBadRequest:
		return nil, v
	case *PublicBulkRemoveMyItemsNotFound:
		return nil, v
	case *PublicBulkRemoveMyItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicMoveMyItemsShort to move items between my inventories

Move items between inventories that is owned by the same user.
*/
func (a *Client) PublicMoveMyItemsShort(params *PublicMoveMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMoveMyItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicMoveMyItemsParams()
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
		ID:                 "PublicMoveMyItems",
		Method:             "POST",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/movement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicMoveMyItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicMoveMyItemsOK:
		return v, nil
	case *PublicMoveMyItemsBadRequest:
		return nil, v
	case *PublicMoveMyItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemShort to get an item

Getting an user's owned item info.
*/
func (a *Client) PublicGetItemShort(params *PublicGetItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemParams()
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
		ID:                 "PublicGetItem",
		Method:             "GET",
		PathPattern:        "/inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemOK:
		return v, nil
	case *PublicGetItemBadRequest:
		return nil, v
	case *PublicGetItemNotFound:
		return nil, v
	case *PublicGetItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
