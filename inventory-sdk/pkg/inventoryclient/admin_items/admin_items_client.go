// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_items

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin items API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin items API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListItemsShort(params *AdminListItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListItemsOK, error)
	AdminGetInventoryItemShort(params *AdminGetInventoryItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryItemOK, error)
	AdminConsumeUserItemShort(params *AdminConsumeUserItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminConsumeUserItemOK, error)
	AdminBulkUpdateMyItemsShort(params *AdminBulkUpdateMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateMyItemsOK, error)
	AdminSaveItemToInventoryShort(params *AdminSaveItemToInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveItemToInventoryOK, error)
	AdminBulkRemoveItemsShort(params *AdminBulkRemoveItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkRemoveItemsOK, error)
	AdminSaveItemShort(params *AdminSaveItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveItemOK, error)
	AdminSyncUserEntitlementsShort(params *AdminSyncUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncUserEntitlementsNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListItemsShort to list all items

Listing all items in an inventory.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]
*/
func (a *Client) AdminListItemsShort(params *AdminListItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListItemsParams()
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
		ID:                 "AdminListItems",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListItemsOK:
		return v, nil
	case *AdminListItemsBadRequest:
		return nil, v
	case *AdminListItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInventoryItemShort to get an item

Getting an item info.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]
*/
func (a *Client) AdminGetInventoryItemShort(params *AdminGetInventoryItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInventoryItemParams()
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
		ID:                 "AdminGetInventoryItem",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInventoryItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInventoryItemOK:
		return v, nil
	case *AdminGetInventoryItemBadRequest:
		return nil, v
	case *AdminGetInventoryItemNotFound:
		return nil, v
	case *AdminGetInventoryItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminConsumeUserItemShort to consume item

Consume user's own item

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]
*/
func (a *Client) AdminConsumeUserItemShort(params *AdminConsumeUserItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminConsumeUserItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminConsumeUserItemParams()
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
		ID:                 "AdminConsumeUserItem",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminConsumeUserItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminConsumeUserItemOK:
		return v, nil
	case *AdminConsumeUserItemBadRequest:
		return nil, v
	case *AdminConsumeUserItemNotFound:
		return nil, v
	case *AdminConsumeUserItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkUpdateMyItemsShort to bulk update items

Bulk Updating user's own items.
Tags will be auto-created.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]
*/
func (a *Client) AdminBulkUpdateMyItemsShort(params *AdminBulkUpdateMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateMyItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkUpdateMyItemsParams()
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
		ID:                 "AdminBulkUpdateMyItems",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkUpdateMyItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkUpdateMyItemsOK:
		return v, nil
	case *AdminBulkUpdateMyItemsBadRequest:
		return nil, v
	case *AdminBulkUpdateMyItemsNotFound:
		return nil, v
	case *AdminBulkUpdateMyItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveItemToInventoryShort to save item to specific inventory

Saving an item to specific inventory.
The item will be saved in specific user's inventory,

If the item already exists, its qty will be increased,
so no new item with same sourceItemId will be created

Tags will be auto-created.
ItemType will be auto-created.

For Ecommerce item, this fields will be override by ecommerce configuration
(slotUsed, serverCustomAttributes, customAttributes, type)

For Ecommerce items, the quantity saved is dynamically adjusted based on an item's useCount configured in Store.
When saving items, the quantity specified for each item will be multiplied by the useCount.
i.e. If the store item is configured with a useCount of 5
and the quantity of a particular item is set to 2 during saving, it will be stored as 10.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]
*/
func (a *Client) AdminSaveItemToInventoryShort(params *AdminSaveItemToInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveItemToInventoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSaveItemToInventoryParams()
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
		ID:                 "AdminSaveItemToInventory",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSaveItemToInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSaveItemToInventoryOK:
		return v, nil
	case *AdminSaveItemToInventoryBadRequest:
		return nil, v
	case *AdminSaveItemToInventoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkRemoveItemsShort to bulk remove items

Bulk remove user's own items'.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [DELETE]
*/
func (a *Client) AdminBulkRemoveItemsShort(params *AdminBulkRemoveItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkRemoveItemsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkRemoveItemsParams()
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
		ID:                 "AdminBulkRemoveItems",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkRemoveItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkRemoveItemsOK:
		return v, nil
	case *AdminBulkRemoveItemsBadRequest:
		return nil, v
	case *AdminBulkRemoveItemsNotFound:
		return nil, v
	case *AdminBulkRemoveItemsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveItemShort to save item

Saving an item.
The item will be saved in user's inventory,
If it doesn't exist it'll be created.

If the item already exists, its qty will be increased,
so no new item with same sourceItemId will be created

Tags will be auto-created.
ItemType will be auto-created.

For Ecommerce item, this fields will be override by ecommerce configuration
(slotUsed, serverCustomAttributes, customAttributes, type)

For Ecommerce items, the quantity saved is dynamically adjusted based on an item's useCount configured in Store.
When saving items, the quantity specified for each item will be multiplied by the useCount.
i.e. If the store item is configured with a useCount of 5
and the quantity of a particular item is set to 2 during saving, it will be stored as 10.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]
*/
func (a *Client) AdminSaveItemShort(params *AdminSaveItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSaveItemParams()
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
		ID:                 "AdminSaveItem",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSaveItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSaveItemOK:
		return v, nil
	case *AdminSaveItemBadRequest:
		return nil, v
	case *AdminSaveItemInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncUserEntitlementsShort to sync user's entitlements to e-commerce

Sync user's entitlement from e-commerce service to inventory for non exist item at user inventory.
will skip the item if already exist at user inventory.
Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [UPDATE]
*/
func (a *Client) AdminSyncUserEntitlementsShort(params *AdminSyncUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncUserEntitlementsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncUserEntitlementsParams()
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
		ID:                 "AdminSyncUserEntitlements",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncUserEntitlementsNoContent:
		return v, nil
	case *AdminSyncUserEntitlementsBadRequest:
		return nil, v
	case *AdminSyncUserEntitlementsUnauthorized:
		return nil, v
	case *AdminSyncUserEntitlementsForbidden:
		return nil, v
	case *AdminSyncUserEntitlementsNotFound:
		return nil, v
	case *AdminSyncUserEntitlementsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
