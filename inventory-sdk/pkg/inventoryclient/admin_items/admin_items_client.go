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
	AdminBulkSaveItemToInventoryShort(params *AdminBulkSaveItemToInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkSaveItemToInventoryOK, error)
	AdminSaveItemShort(params *AdminSaveItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveItemOK, error)
	AdminBulkSaveItemShort(params *AdminBulkSaveItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkSaveItemOK, error)
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
Client should pass item ID in options if item type is OPTIONBOX
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
**This endpoint is used to save purchased items to a specific inventory of the player, with the following conditions for E-commerce items:**
- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

**When configuring your request, note the following:**
- The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
- For other-sourced items, the type can be manually defined when saving the item.
You must have this permission to access this endpoint:

**Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**
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
	case *AdminSaveItemToInventoryUnauthorized:
		return nil, v
	case *AdminSaveItemToInventoryForbidden:
		return nil, v
	case *AdminSaveItemToInventoryNotFound:
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
AdminBulkSaveItemToInventoryShort bulk save items to specific inventory
**This endpoint is used for bulk saving purchased items to a specific inventory of the player, with the following conditions for E-commerce items:**
- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

**When configuring your request, note the following:**
- The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
- For other-sourced items, the type can be manually defined when saving the item.
- A maximum of 10 items can be saved in a single bulk call.

You must have this permission to access this endpoint:
**Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM[CREATE]**
*/
func (a *Client) AdminBulkSaveItemToInventoryShort(params *AdminBulkSaveItemToInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkSaveItemToInventoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkSaveItemToInventoryParams()
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
		ID:                 "AdminBulkSaveItemToInventory",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkSaveItemToInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkSaveItemToInventoryOK:
		return v, nil
	case *AdminBulkSaveItemToInventoryBadRequest:
		return nil, v
	case *AdminBulkSaveItemToInventoryUnauthorized:
		return nil, v
	case *AdminBulkSaveItemToInventoryForbidden:
		return nil, v
	case *AdminBulkSaveItemToInventoryNotFound:
		return nil, v
	case *AdminBulkSaveItemToInventoryUnprocessableEntity:
		return nil, v
	case *AdminBulkSaveItemToInventoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveItemShort to save item
**This endpoint is used to save items to the playerâs inventory based on the inventoryConfigurationCode with the following conditions:**
- If the player doesn't have the inventory for the specified inventoryConfigurationCode, a new inventory will be created.
- If the user already has one, it will be added to the existing inventory.
- If the same item exists within the inventory, the quantity (qty) will be increased.
- If the inventory is full, the item cannot be added and the request will return the âFailedâ response.
- If a player has more than one inventory and the initial inventory is full, the service will check the available slot in the other inventory following the order of their creation date and time (createdAt).
- For Ecommerce items:
>- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
>- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
>- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

You must have this permission to access this endpoint:
**Permission:ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**
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
AdminBulkSaveItemShort bulk save items to inventory
**This endpoint is used used for bulk saving purchased items to the playerâs inventory based on the inventoryConfigurationCode with the following conditions:**
- If the player doesn't have the inventory for the specified inventoryConfigurationCode, a new inventory will be created for the player.
- If the player already has one, it will be added to the existing inventory.
>- If the same item exists within the inventory, the quantity (qty) will be increased.
>- If the inventory is full, the item cannot be added and the request will return the âFailedâ response.
>- If a player has more than one inventory and the initial inventory is full, the service will check the available slot in the other inventory following the order of their creation date and time (createdAt).

- For E-commerce items:
>- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
>- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
>- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 2 in the playerâs inventory.

**When configuring your request, note the following:**
- The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
- For other-sourced items, the type can be manually defined when saving the item.
- A maximum of 10 items can be saved in a single bulk call.

You must have this permission to access this endpoint:
**Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**
*/
func (a *Client) AdminBulkSaveItemShort(params *AdminBulkSaveItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkSaveItemOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminBulkSaveItemParams()
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
		ID:                 "AdminBulkSaveItem",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminBulkSaveItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminBulkSaveItemOK:
		return v, nil
	case *AdminBulkSaveItemBadRequest:
		return nil, v
	case *AdminBulkSaveItemUnauthorized:
		return nil, v
	case *AdminBulkSaveItemForbidden:
		return nil, v
	case *AdminBulkSaveItemNotFound:
		return nil, v
	case *AdminBulkSaveItemUnprocessableEntity:
		return nil, v
	case *AdminBulkSaveItemInternalServerError:
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
