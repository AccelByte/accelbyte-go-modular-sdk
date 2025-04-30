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
	AdminListItemsShort(params *AdminListItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListItemsResponse, error)
	AdminGetInventoryItemShort(params *AdminGetInventoryItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryItemResponse, error)
	AdminConsumeUserItemShort(params *AdminConsumeUserItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminConsumeUserItemResponse, error)
	AdminBulkUpdateMyItemsShort(params *AdminBulkUpdateMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateMyItemsResponse, error)
	AdminSaveItemToInventoryShort(params *AdminSaveItemToInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveItemToInventoryResponse, error)
	AdminBulkRemoveItemsShort(params *AdminBulkRemoveItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkRemoveItemsResponse, error)
	AdminBulkSaveItemToInventoryShort(params *AdminBulkSaveItemToInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkSaveItemToInventoryResponse, error)
	AdminSaveItemShort(params *AdminSaveItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveItemResponse, error)
	AdminBulkSaveItemShort(params *AdminBulkSaveItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkSaveItemResponse, error)
	AdminSyncUserEntitlementsShort(params *AdminSyncUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncUserEntitlementsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListItemsShort to list all items

Listing all items in an inventory.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]
*/
func (a *Client) AdminListItemsShort(params *AdminListItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListItemsResponse, error) {
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
		response := &AdminListItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListItemsBadRequest:
		response := &AdminListItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListItemsInternalServerError:
		response := &AdminListItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInventoryItemShort to get an item

Getting an item info.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]
*/
func (a *Client) AdminGetInventoryItemShort(params *AdminGetInventoryItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryItemResponse, error) {
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
		response := &AdminGetInventoryItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetInventoryItemBadRequest:
		response := &AdminGetInventoryItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInventoryItemNotFound:
		response := &AdminGetInventoryItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInventoryItemInternalServerError:
		response := &AdminGetInventoryItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) AdminConsumeUserItemShort(params *AdminConsumeUserItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminConsumeUserItemResponse, error) {
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
		response := &AdminConsumeUserItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminConsumeUserItemBadRequest:
		response := &AdminConsumeUserItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminConsumeUserItemNotFound:
		response := &AdminConsumeUserItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminConsumeUserItemInternalServerError:
		response := &AdminConsumeUserItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) AdminBulkUpdateMyItemsShort(params *AdminBulkUpdateMyItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkUpdateMyItemsResponse, error) {
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
		response := &AdminBulkUpdateMyItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkUpdateMyItemsBadRequest:
		response := &AdminBulkUpdateMyItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateMyItemsNotFound:
		response := &AdminBulkUpdateMyItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkUpdateMyItemsInternalServerError:
		response := &AdminBulkUpdateMyItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSaveItemToInventoryShort to save item to specific inventory
**This endpoint is used to save purchased items to a specific inventory of the player, with the following conditions for E-commerce items:**
- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 10 in the playerâs inventory.

**When configuring your request, note the following:**
- The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
- For other-sourced items, the type can be manually defined when saving the item.
You must have this permission to access this endpoint:

**Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**
*/
func (a *Client) AdminSaveItemToInventoryShort(params *AdminSaveItemToInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveItemToInventoryResponse, error) {
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
		response := &AdminSaveItemToInventoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSaveItemToInventoryBadRequest:
		response := &AdminSaveItemToInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveItemToInventoryUnauthorized:
		response := &AdminSaveItemToInventoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveItemToInventoryForbidden:
		response := &AdminSaveItemToInventoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveItemToInventoryNotFound:
		response := &AdminSaveItemToInventoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveItemToInventoryInternalServerError:
		response := &AdminSaveItemToInventoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkRemoveItemsShort to bulk remove items

Bulk remove user's own items'.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [DELETE]
*/
func (a *Client) AdminBulkRemoveItemsShort(params *AdminBulkRemoveItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkRemoveItemsResponse, error) {
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
		response := &AdminBulkRemoveItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkRemoveItemsBadRequest:
		response := &AdminBulkRemoveItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkRemoveItemsNotFound:
		response := &AdminBulkRemoveItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkRemoveItemsInternalServerError:
		response := &AdminBulkRemoveItemsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminBulkSaveItemToInventoryShort bulk save items to specific inventory
**This endpoint is used for bulk saving purchased items to a specific inventory of the player, with the following conditions for E-commerce items:**
- Attributes such as slotUsed, serverCustomAttributes, customAttributes, and type will be overridden by the attributes configured in the AccelByte Gaming Services (AGS) Store.
- Storing E-commerce items in a particular slot will follow its entitlement and item configuration, such as durable, consumable, stackable and non-stackable.
- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 10 in the playerâs inventory.

**When configuring your request, note the following:**
- The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
- For other-sourced items, the type can be manually defined when saving the item.
- A maximum of 10 items can be saved in a single bulk call.

You must have this permission to access this endpoint:
**Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM[CREATE]**
*/
func (a *Client) AdminBulkSaveItemToInventoryShort(params *AdminBulkSaveItemToInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkSaveItemToInventoryResponse, error) {
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
		response := &AdminBulkSaveItemToInventoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkSaveItemToInventoryBadRequest:
		response := &AdminBulkSaveItemToInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemToInventoryUnauthorized:
		response := &AdminBulkSaveItemToInventoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemToInventoryForbidden:
		response := &AdminBulkSaveItemToInventoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemToInventoryNotFound:
		response := &AdminBulkSaveItemToInventoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemToInventoryUnprocessableEntity:
		response := &AdminBulkSaveItemToInventoryResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemToInventoryInternalServerError:
		response := &AdminBulkSaveItemToInventoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
>- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 10 in the playerâs inventory.

You must have this permission to access this endpoint:
**Permission:ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**
*/
func (a *Client) AdminSaveItemShort(params *AdminSaveItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSaveItemResponse, error) {
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
		response := &AdminSaveItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSaveItemBadRequest:
		response := &AdminSaveItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSaveItemInternalServerError:
		response := &AdminSaveItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
>- The quantity is dynamically set based on an itemâs useCount configured in Store. When saving an item, the specified quantity will be multiplied by configured useCount for that particular item. For example, if an Item is configured with a useCount of 5 in the AGS Store and it is saved with a qty of 2, the itemâs quantity will be stored as 10 in the playerâs inventory.

**When configuring your request, note the following:**
- The source field is mandatory for determining the source of the item. The supported values are OTHER (for items coming from other sources) and E-commerce for items coming from the E-commerce integration.
- For other-sourced items, the type can be manually defined when saving the item.
- A maximum of 10 items can be saved in a single bulk call.

You must have this permission to access this endpoint:
**Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [CREATE]**
*/
func (a *Client) AdminBulkSaveItemShort(params *AdminBulkSaveItemParams, authInfo runtime.ClientAuthInfoWriter) (*AdminBulkSaveItemResponse, error) {
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
		response := &AdminBulkSaveItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminBulkSaveItemBadRequest:
		response := &AdminBulkSaveItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemUnauthorized:
		response := &AdminBulkSaveItemResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemForbidden:
		response := &AdminBulkSaveItemResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemNotFound:
		response := &AdminBulkSaveItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemUnprocessableEntity:
		response := &AdminBulkSaveItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminBulkSaveItemInternalServerError:
		response := &AdminBulkSaveItemResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) AdminSyncUserEntitlementsShort(params *AdminSyncUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncUserEntitlementsResponse, error) {
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
		response := &AdminSyncUserEntitlementsResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminSyncUserEntitlementsBadRequest:
		response := &AdminSyncUserEntitlementsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncUserEntitlementsUnauthorized:
		response := &AdminSyncUserEntitlementsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncUserEntitlementsForbidden:
		response := &AdminSyncUserEntitlementsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncUserEntitlementsNotFound:
		response := &AdminSyncUserEntitlementsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncUserEntitlementsInternalServerError:
		response := &AdminSyncUserEntitlementsResponse{}
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
