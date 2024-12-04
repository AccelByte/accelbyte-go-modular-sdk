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
	PublicConsumeMyItemShort(params *PublicConsumeMyItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeMyItemResponse, error)
	PublicListItemsShort(params *PublicListItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListItemsResponse, error)
	PublicBulkUpdateMyItemsShort(params *PublicBulkUpdateMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkUpdateMyItemsResponse, error)
	PublicBulkRemoveMyItemsShort(params *PublicBulkRemoveMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkRemoveMyItemsResponse, error)
	PublicMoveMyItemsShort(params *PublicMoveMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMoveMyItemsResponse, error)
	PublicGetItemShort(params *PublicGetItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PublicConsumeMyItemShort to consume item

Consume user's own item.
Client should pass item ID in options if item type is OPTIONBOX
*/
func (a *Client) PublicConsumeMyItemShort(params *PublicConsumeMyItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeMyItemResponse, error) {
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
		response := &PublicConsumeMyItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicConsumeMyItemBadRequest:
		response := &PublicConsumeMyItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicConsumeMyItemNotFound:
		response := &PublicConsumeMyItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicConsumeMyItemInternalServerError:
		response := &PublicConsumeMyItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListItemsShort to list all items

Listing all user's owned items in an inventory.
The response body will be in the form of standard pagination.
*/
func (a *Client) PublicListItemsShort(params *PublicListItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListItemsResponse, error) {
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
		response := &PublicListItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListItemsBadRequest:
		response := &PublicListItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListItemsInternalServerError:
		response := &PublicListItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkUpdateMyItemsShort to bulk update items

Bulk Updating user's own items.
*/
func (a *Client) PublicBulkUpdateMyItemsShort(params *PublicBulkUpdateMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkUpdateMyItemsResponse, error) {
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
		response := &PublicBulkUpdateMyItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkUpdateMyItemsBadRequest:
		response := &PublicBulkUpdateMyItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkUpdateMyItemsNotFound:
		response := &PublicBulkUpdateMyItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkUpdateMyItemsInternalServerError:
		response := &PublicBulkUpdateMyItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkRemoveMyItemsShort to bulk remove items

Bulk remove user's own items.
*/
func (a *Client) PublicBulkRemoveMyItemsShort(params *PublicBulkRemoveMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkRemoveMyItemsResponse, error) {
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
		response := &PublicBulkRemoveMyItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkRemoveMyItemsBadRequest:
		response := &PublicBulkRemoveMyItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkRemoveMyItemsNotFound:
		response := &PublicBulkRemoveMyItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicBulkRemoveMyItemsInternalServerError:
		response := &PublicBulkRemoveMyItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicMoveMyItemsShort to move items between my inventories

Move items between inventories that is owned by the same user.
*/
func (a *Client) PublicMoveMyItemsShort(params *PublicMoveMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicMoveMyItemsResponse, error) {
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
		response := &PublicMoveMyItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicMoveMyItemsBadRequest:
		response := &PublicMoveMyItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicMoveMyItemsInternalServerError:
		response := &PublicMoveMyItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemShort to get an item

Getting an user's owned item info.
*/
func (a *Client) PublicGetItemShort(params *PublicGetItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemResponse, error) {
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
		response := &PublicGetItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetItemBadRequest:
		response := &PublicGetItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetItemNotFound:
		response := &PublicGetItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetItemInternalServerError:
		response := &PublicGetItemResponse{}
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
