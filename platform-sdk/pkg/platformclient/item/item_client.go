// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new item API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for item API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListItemTypeConfigsShort(params *ListItemTypeConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*ListItemTypeConfigsResponse, error)
	CreateItemTypeConfigShort(params *CreateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemTypeConfigResponse, error)
	SearchItemTypeConfigShort(params *SearchItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemTypeConfigResponse, error)
	GetItemTypeConfigShort(params *GetItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemTypeConfigResponse, error)
	UpdateItemTypeConfigShort(params *UpdateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemTypeConfigResponse, error)
	DeleteItemTypeConfigShort(params *DeleteItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemTypeConfigResponse, error)
	SyncInGameItemShort(params *SyncInGameItemParams, authInfo runtime.ClientAuthInfoWriter) (*SyncInGameItemResponse, error)
	CreateItemShort(params *CreateItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemResponse, error)
	GetItemByAppIDShort(params *GetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemByAppIDResponse, error)
	QueryItemsShort(params *QueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryItemsResponse, error)
	ListBasicItemsByFeaturesShort(params *ListBasicItemsByFeaturesParams, authInfo runtime.ClientAuthInfoWriter) (*ListBasicItemsByFeaturesResponse, error)
	GetItemsShort(params *GetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemsResponse, error)
	GetItemBySkuShort(params *GetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemBySkuResponse, error)
	GetLocaleItemBySkuShort(params *GetLocaleItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemBySkuResponse, error)
	GetEstimatedPriceShort(params *GetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*GetEstimatedPriceResponse, error)
	GetItemIDBySkuShort(params *GetItemIDBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemIDBySkuResponse, error)
	GetBulkItemIDBySkusShort(params *GetBulkItemIDBySkusParams, authInfo runtime.ClientAuthInfoWriter) (*GetBulkItemIDBySkusResponse, error)
	BulkGetLocaleItemsShort(params *BulkGetLocaleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetLocaleItemsResponse, error)
	GetAvailablePredicateTypesShort(params *GetAvailablePredicateTypesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAvailablePredicateTypesResponse, error)
	ValidateItemPurchaseConditionShort(params *ValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateItemPurchaseConditionResponse, error)
	BulkUpdateRegionDataShort(params *BulkUpdateRegionDataParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateRegionDataResponse, error)
	SearchItemsShort(params *SearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemsResponse, error)
	QueryUncategorizedItemsShort(params *QueryUncategorizedItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUncategorizedItemsResponse, error)
	GetItemShort(params *GetItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemResponse, error)
	UpdateItemShort(params *UpdateItemParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemResponse, error)
	DeleteItemShort(params *DeleteItemParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemResponse, error)
	AcquireItemShort(params *AcquireItemParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireItemResponse, error)
	GetAppShort(params *GetAppParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppResponse, error)
	UpdateAppShort(params *UpdateAppParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppResponse, error)
	DisableItemShort(params *DisableItemParams, authInfo runtime.ClientAuthInfoWriter) (*DisableItemResponse, error)
	GetItemDynamicDataShort(params *GetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemDynamicDataResponse, error)
	EnableItemShort(params *EnableItemParams, authInfo runtime.ClientAuthInfoWriter) (*EnableItemResponse, error)
	FeatureItemShort(params *FeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*FeatureItemResponse, error)
	DefeatureItemShort(params *DefeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*DefeatureItemResponse, error)
	GetLocaleItemShort(params *GetLocaleItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemResponse, error)
	UpdateItemPurchaseConditionShort(params *UpdateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemPurchaseConditionResponse, error)
	QueryItemReferencesShort(params *QueryItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryItemReferencesResponse, error)
	ReturnItemShort(params *ReturnItemParams, authInfo runtime.ClientAuthInfoWriter) (*ReturnItemResponse, error)
	PublicGetItemByAppIDShort(params *PublicGetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemByAppIDResponse, error)
	PublicQueryItemsShort(params *PublicQueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryItemsResponse, error)
	PublicGetItemBySkuShort(params *PublicGetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemBySkuResponse, error)
	PublicGetEstimatedPriceShort(params *PublicGetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEstimatedPriceResponse, error)
	PublicBulkGetItemsShort(params *PublicBulkGetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetItemsResponse, error)
	PublicValidateItemPurchaseConditionShort(params *PublicValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateItemPurchaseConditionResponse, error)
	PublicSearchItemsShort(params *PublicSearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchItemsResponse, error)
	PublicGetAppShort(params *PublicGetAppParams) (*PublicGetAppResponse, error)
	PublicGetItemDynamicDataShort(params *PublicGetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemDynamicDataResponse, error)
	PublicGetItemShort(params *PublicGetItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemResponse, error)
	QueryItemsV2Short(params *QueryItemsV2Params, authInfo runtime.ClientAuthInfoWriter) (*QueryItemsV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListItemTypeConfigsShort get all item type configs
 [Not supported yet in AGS Shared Cloud] This API is used to get all item type configs.

Other detail info:

  * Returns : the list of items
*/
func (a *Client) ListItemTypeConfigsShort(params *ListItemTypeConfigsParams, authInfo runtime.ClientAuthInfoWriter) (*ListItemTypeConfigsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListItemTypeConfigsParams()
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
		ID:                 "listItemTypeConfigs",
		Method:             "GET",
		PathPattern:        "/platform/admin/items/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListItemTypeConfigsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListItemTypeConfigsOK:
		response := &ListItemTypeConfigsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateItemTypeConfigShort create an item type config
 [Not supported yet in AGS Shared Cloud] This API is used to create an item type config.

*  Returns : item type config data
*/
func (a *Client) CreateItemTypeConfigShort(params *CreateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemTypeConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateItemTypeConfigParams()
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
		ID:                 "createItemTypeConfig",
		Method:             "POST",
		PathPattern:        "/platform/admin/items/configs",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateItemTypeConfigCreated:
		response := &CreateItemTypeConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateItemTypeConfigBadRequest:
		response := &CreateItemTypeConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateItemTypeConfigConflict:
		response := &CreateItemTypeConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateItemTypeConfigUnprocessableEntity:
		response := &CreateItemTypeConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchItemTypeConfigShort get an item type config
 [Not supported yet in AGS Shared Cloud] This API is used to get an item type config.

Other detail info:

  * Returns : item type config data
*/
func (a *Client) SearchItemTypeConfigShort(params *SearchItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemTypeConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchItemTypeConfigParams()
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
		ID:                 "searchItemTypeConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/items/configs/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchItemTypeConfigOK:
		response := &SearchItemTypeConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SearchItemTypeConfigNotFound:
		response := &SearchItemTypeConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemTypeConfigShort get an item type config
 [Not supported yet in AGS Shared Cloud] This API is used to get an item type config.

Other detail info:

  * Returns : item type config data
*/
func (a *Client) GetItemTypeConfigShort(params *GetItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemTypeConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemTypeConfigParams()
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
		ID:                 "getItemTypeConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/items/configs/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemTypeConfigOK:
		response := &GetItemTypeConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetItemTypeConfigNotFound:
		response := &GetItemTypeConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateItemTypeConfigShort update an item type config
 [Not supported yet in AGS Shared Cloud] This API is used to update an item type config.

*  Returns : item type config data
*/
func (a *Client) UpdateItemTypeConfigShort(params *UpdateItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemTypeConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateItemTypeConfigParams()
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
		ID:                 "updateItemTypeConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/items/configs/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateItemTypeConfigOK:
		response := &UpdateItemTypeConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateItemTypeConfigNotFound:
		response := &UpdateItemTypeConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateItemTypeConfigConflict:
		response := &UpdateItemTypeConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateItemTypeConfigUnprocessableEntity:
		response := &UpdateItemTypeConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteItemTypeConfigShort delete an item type config
 [Not supported yet in AGS Shared Cloud] This API is used to delete an item type config permanently.
*/
func (a *Client) DeleteItemTypeConfigShort(params *DeleteItemTypeConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemTypeConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteItemTypeConfigParams()
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
		ID:                 "deleteItemTypeConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/items/configs/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteItemTypeConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteItemTypeConfigNoContent:
		response := &DeleteItemTypeConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteItemTypeConfigNotFound:
		response := &DeleteItemTypeConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncInGameItemShort sync an in game item
 [Not supported yet in AGS Shared Cloud] This API is used to sync an in game item in game namespace to publisher namespace, only INGAMEITEM, CODE, COINS and SEASON are supported

The synced item has an additional field targetItemId besides targetNamespace, mostly this item should not modified manually again.

Other detail info:

  * Returns : item data
*/
func (a *Client) SyncInGameItemShort(params *SyncInGameItemParams, authInfo runtime.ClientAuthInfoWriter) (*SyncInGameItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncInGameItemParams()
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
		ID:                 "syncInGameItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncInGameItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncInGameItemOK:
		response := &SyncInGameItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncInGameItemBadRequest:
		response := &SyncInGameItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncInGameItemNotFound:
		response := &SyncInGameItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncInGameItemConflict:
		response := &SyncInGameItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncInGameItemUnprocessableEntity:
		response := &SyncInGameItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateItemShort create an item
This API is used to create an item. APP item only can created in publisher namespace.

An item create example:


    {

       "categoryPath": "/games",

       "localizations": {

           "en": {

               "title":"required",

               "description":"optional",

               "longDescription":"optional",

               "localExt": {

                      "properties":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                      ],

                      "functions":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                     ]

               }

            }

       },

       "images": [

         {

               "as":"optional, image for",

               "caption":"optional",

               "height":10,

               "width":10,

               "imageUrl":"http://img-url-required",

               "smallImageUrl":"http://small-img-url-required"

         }

       ],

       "thumbnailUrl": "optional, thumbnail url",

       "status": "ACTIVE",

       "listable": true,

       "purchasable": true,

       "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

       "name": "required, also will be used as entitlement name",

       "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

       "useCount": 1(optional, required if the entitlement type is consumable),

       "stackable": false,

       "appId": "optional, required if itemType is APP",

       "appType": "GAME(optional, required if itemType is APP)",

       "seasonType": "PASS(optional, required if itemType is SEASON)",

       "baseAppId": "optional, set value of game app id if you want to link to a game",

       "targetCurrencyCode": "optional, required if itemType is COINS",

       "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

       created belongs to the publisher namespace",

       "sku": "optional, commonly unique item code",

       "regionData": {

           "US(store's default region is required)": [

             {

                "price":10,

                "discountPercentage": 0(integer, optional, range[0,100], discountedPrice = price  * ((100 - discountPercentage) * 0.01),

                  will use it to calculate discounted price if it is not 0),

                "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                "currencyCode":"code(required, example: USD)",

                "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

             }

           ]

       },

       "itemIds": [

           "itemId"

       ],

       "itemQty": {

           "itemId":1

       },

       "recurring": {

           "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

           "fixedFreeDays":0(integer, fixed free days, 0 means not set),

           "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

           "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

       },

       "tags": [

           "exampleTag24"

       ],

       "features": [

           "feature"

       ],

       "clazz": "weapon",

       "boothName": "C_campaign1",

       "displayOrder": 1000,

       "ext": {

           "properties":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ],

           "functions":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ]

       },

       "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

       "maxCount": 1(integer, optional, -1 means UNLIMITED, unset when itemType is CODE)

    }

Other detail info:

  * Returns : created item data



## Restrictions for item extension and localization extension and inventory config custom attributes


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) CreateItemShort(params *CreateItemParams, authInfo runtime.ClientAuthInfoWriter) (*CreateItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateItemParams()
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
		ID:                 "createItem",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateItemCreated:
		response := &CreateItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateItemBadRequest:
		response := &CreateItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateItemNotFound:
		response := &CreateItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateItemConflict:
		response := &CreateItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateItemUnprocessableEntity:
		response := &CreateItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemByAppIDShort get item by appid
This API is used to get the item by appId.

Other detail info:

  * Returns : the item with that appId
*/
func (a *Client) GetItemByAppIDShort(params *GetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemByAppIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemByAppIDParams()
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
		ID:                 "getItemByAppId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemByAppIDOK:
		response := &GetItemByAppIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetItemByAppIDNotFound:
		response := &GetItemByAppIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryItemsShort query items by criteria
This API is used to query items by criteria within a store.

Other detail info:

  * Returns : the list of items
*/
func (a *Client) QueryItemsShort(params *QueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryItemsParams()
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
		ID:                 "queryItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryItemsOK:
		response := &QueryItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryItemsNotFound:
		response := &QueryItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryItemsUnprocessableEntity:
		response := &QueryItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListBasicItemsByFeaturesShort list basic items by features
 [SERVICE COMMUNICATION ONLY] This API is used to list basic items by features.

Other detail info:

  * Returns : the list of basic items
*/
func (a *Client) ListBasicItemsByFeaturesShort(params *ListBasicItemsByFeaturesParams, authInfo runtime.ClientAuthInfoWriter) (*ListBasicItemsByFeaturesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListBasicItemsByFeaturesParams()
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
		ID:                 "listBasicItemsByFeatures",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byFeatures/basic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListBasicItemsByFeaturesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListBasicItemsByFeaturesOK:
		response := &ListBasicItemsByFeaturesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemsShort get items
This API is used to get items.

Other detail info:

  * Returns : the list of items info
*/
func (a *Client) GetItemsShort(params *GetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemsParams()
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
		ID:                 "getItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemsOK:
		response := &GetItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetItemsNotFound:
		response := &GetItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemBySkuShort get item by sku
This API is used to get the item by sku.

Other detail info:

  * Returns : the item with sku
*/
func (a *Client) GetItemBySkuShort(params *GetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemBySkuResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemBySkuParams()
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
		ID:                 "getItemBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemBySkuOK:
		response := &GetItemBySkuResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetItemBySkuNotFound:
		response := &GetItemBySkuResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLocaleItemBySkuShort get an item by sku in locale
This API is used to get an item by sku in specific locale. If item not exist in specific region, default region item will return.

Other detail info:

  * Returns : item data
*/
func (a *Client) GetLocaleItemBySkuShort(params *GetLocaleItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemBySkuResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLocaleItemBySkuParams()
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
		ID:                 "getLocaleItemBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/bySku/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLocaleItemBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLocaleItemBySkuOK:
		response := &GetLocaleItemBySkuResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLocaleItemBySkuNotFound:
		response := &GetLocaleItemBySkuResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEstimatedPriceShort get estimated price
This API is used to get estimated prices of a flexible pricing bundle
*/
func (a *Client) GetEstimatedPriceShort(params *GetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*GetEstimatedPriceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEstimatedPriceParams()
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
		ID:                 "getEstimatedPrice",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/estimatedPrice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEstimatedPriceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEstimatedPriceOK:
		response := &GetEstimatedPriceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetEstimatedPriceNotFound:
		response := &GetEstimatedPriceResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemIDBySkuShort get itemid by sku
 [SERVICE COMMUNICATION ONLY] This API is used to get the itemId by sku.

Other detail info:

  * Returns : the itemId with sku
*/
func (a *Client) GetItemIDBySkuShort(params *GetItemIDBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemIDBySkuResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemIDBySkuParams()
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
		ID:                 "getItemIdBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/itemId/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemIDBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemIDBySkuOK:
		response := &GetItemIDBySkuResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetItemIDBySkuNotFound:
		response := &GetItemIDBySkuResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetBulkItemIDBySkusShort get multiple itemid by sku
This API is used to get an list of itemId by list of sku.

Other detail info:

  * Returns : item data
*/
func (a *Client) GetBulkItemIDBySkusShort(params *GetBulkItemIDBySkusParams, authInfo runtime.ClientAuthInfoWriter) (*GetBulkItemIDBySkusResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetBulkItemIDBySkusParams()
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
		ID:                 "getBulkItemIdBySkus",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/itemId/bySkus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetBulkItemIDBySkusReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetBulkItemIDBySkusOK:
		response := &GetBulkItemIDBySkusResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetLocaleItemsShort bulk get locale items
This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

Other detail info:

  * Returns : the list of items info
*/
func (a *Client) BulkGetLocaleItemsShort(params *BulkGetLocaleItemsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetLocaleItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetLocaleItemsParams()
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
		ID:                 "bulkGetLocaleItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/locale/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetLocaleItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetLocaleItemsOK:
		response := &BulkGetLocaleItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetLocaleItemsNotFound:
		response := &BulkGetLocaleItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAvailablePredicateTypesShort get available predicate types
Get available predicate types.
Other detail info:

  * Returns : available predicate types
*/
func (a *Client) GetAvailablePredicateTypesShort(params *GetAvailablePredicateTypesParams, authInfo runtime.ClientAuthInfoWriter) (*GetAvailablePredicateTypesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAvailablePredicateTypesParams()
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
		ID:                 "getAvailablePredicateTypes",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/predicate/types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAvailablePredicateTypesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAvailablePredicateTypesOK:
		response := &GetAvailablePredicateTypesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAvailablePredicateTypesNotFound:
		response := &GetAvailablePredicateTypesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ValidateItemPurchaseConditionShort validate user purchase condition
This API is used to validate user purchase condition
*/
func (a *Client) ValidateItemPurchaseConditionShort(params *ValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateItemPurchaseConditionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidateItemPurchaseConditionParams()
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
		ID:                 "validateItemPurchaseCondition",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/purchase/conditions/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidateItemPurchaseConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidateItemPurchaseConditionOK:
		response := &ValidateItemPurchaseConditionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ValidateItemPurchaseConditionUnprocessableEntity:
		response := &ValidateItemPurchaseConditionResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkUpdateRegionDataShort update item's region data in bulk
This API is used to update region data of items in bulk
*/
func (a *Client) BulkUpdateRegionDataShort(params *BulkUpdateRegionDataParams, authInfo runtime.ClientAuthInfoWriter) (*BulkUpdateRegionDataResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkUpdateRegionDataParams()
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
		ID:                 "bulkUpdateRegionData",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/regiondata",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkUpdateRegionDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkUpdateRegionDataNoContent:
		response := &BulkUpdateRegionDataResponse{}

		response.IsSuccess = true

		return response, nil
	case *BulkUpdateRegionDataBadRequest:
		response := &BulkUpdateRegionDataResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateRegionDataNotFound:
		response := &BulkUpdateRegionDataResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateRegionDataConflict:
		response := &BulkUpdateRegionDataResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *BulkUpdateRegionDataUnprocessableEntity:
		response := &BulkUpdateRegionDataResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchItemsShort search items by keyword
This API is used to search items by keyword in title, description and long description within a store.

Other detail info:

  * Returns : the list of items
*/
func (a *Client) SearchItemsShort(params *SearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchItemsParams()
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
		ID:                 "searchItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchItemsOK:
		response := &SearchItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SearchItemsNotFound:
		response := &SearchItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUncategorizedItemsShort query uncategorized items
This API is used to query uncategorized items within a store.

Other detail info:

  * Returns : the list of uncategorized items
*/
func (a *Client) QueryUncategorizedItemsShort(params *QueryUncategorizedItemsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUncategorizedItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUncategorizedItemsParams()
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
		ID:                 "queryUncategorizedItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/uncategorized",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUncategorizedItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUncategorizedItemsOK:
		response := &QueryUncategorizedItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryUncategorizedItemsNotFound:
		response := &QueryUncategorizedItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryUncategorizedItemsUnprocessableEntity:
		response := &QueryUncategorizedItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemShort get an item
This API is used to get an item.

Other detail info:

  * Returns : item data
*/
func (a *Client) GetItemShort(params *GetItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemParams()
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
		ID:                 "getItem",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemOK:
		response := &GetItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetItemNotFound:
		response := &GetItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateItemShort update an item
This API is used to update an item.

An item update example:


    {

        "categoryPath": "/games",

        "localizations": {

           "en": {

               "title":"required",

               "description":"optional",

               "longDescription":"optional",

               "localExt": {

                      "properties":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                      ],

                      "functions":[

                                       {

                                           "key1":"value1",

                                           "key2":"value2"

                                       }

                     ]

               }

           }

       },

       "images": [

         {

               "as":"optional, image for",

               "caption":"optional",

               "height":10,

               "width":10,

               "imageUrl":"http://img-url-required",

               "smallImageUrl":"http://small-img-url-required"

         }

       ],

       "thumbnailUrl": "optional, thumbnail url",

       "status": "ACTIVE",

       "listable": true,

       "purchasable": true,

       "itemType": "APP(allowed: [APP,COINS,INGAMEITEM,CODE,BUNDLE])",

       "name": "optional",

       "entitlementType": "DURABLE(allowed:[DURABLE,CONSUMABLE], should be CONSUMABLE when item type is COINS)",

       "useCount": 1(optional, required if the entitlement type is consumable),

       "stackable": false,

       "appId": "optional, required if itemType is APP",

       "baseAppId": "optional, set value of game app id if you want to link to a game",

       "appType": "GAME(optional, required if itemType is APP)",

       "seasonType": "PASS(optional, required if itemType is SEASON)",

       "sku": "optional, commonly unique item code",

       "targetCurrencyCode": "optional, required if itemType is COINS",

       "targetNamespace": "optional, required when itemType is INGAMEITEM, the targetNamespace will only take effect when the item

       created belongs to the publisher namespace",

       "regionData": {

           "US(store's default region is required)": [

             {

                "price":10,

                "discountPercentage":0(integer, optional, range[0,100], discountedPrice = price*((100 - discountPercentage) * 0.01),

                  if it is not 0, will use it to calculate discounted price),

                "discountAmount":0(integer, optional, range[0,itemPrice], will use it to calculate discounted price if discountPercentage is 0),

                "currencyCode":"code(required, example: USD)",

                "currencyNamespace":"test-ns-required(allow publisher namespace if namespace is publisher namespace, allow publisher and game namespace if namespace is not publisher namespace)",

                "trialPrice":5(required while fixedTrialCycles set, should >=0 and <= price, will same as price if not present),

                "purchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "expireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountPurchaseAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'",

                "discountExpireAt":"optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

             }

           ]

       },

       "itemIds": [

           "itemId"

       ],

       "itemQty": {

           "itemId":1

       },

       "recurring": {

           "cycle":"MONTHLY(allowed: [WEEKLY,MONTHLY,QUARTERLY,YEARLY])",

           "fixedFreeDays":0(integer, fixed free days, 0 means not set),

           "fixedTrialCycles":0(integer, fixed trial cycles, 0 means not set, will not take effect if fixedFreeDays set),

           "graceDays":7(integer, recurring grace days, retry recurring charge within configured days if charge fail, default 7)

       },

       "tags": [

           "exampleTag24"

       ],

       "features": [

           "feature"

       ],

       "clazz": "weapon",

       "boothName": "C_campaign1",

       "displayOrder": 1000,

       "ext": {

           "properties":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ],

           "functions":[

               {

                   "key1":"value1",

                   "key2":"value2"

               }

           ]

       },

       "maxCountPerUser": 1(integer, optional, -1 means UNLIMITED),

       "maxCount": 1(integer, optional, -1 means UNLIMITED, new value should >= old value if both old value and new value is

       limited, unset when item type is CODE)

    }

Other detail info:

  * Returns : updated item data



## Restrictions for item extension and localization extension


1. Cannot use "." as the key name
-


    { "data.2": "value" }


2. Cannot use "$" as the prefix in key names
-


    { "$data": "value" }
*/
func (a *Client) UpdateItemShort(params *UpdateItemParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateItemParams()
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
		ID:                 "updateItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateItemOK:
		response := &UpdateItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateItemBadRequest:
		response := &UpdateItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateItemNotFound:
		response := &UpdateItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateItemConflict:
		response := &UpdateItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateItemUnprocessableEntity:
		response := &UpdateItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteItemShort delete an item
This API is used to delete an item permanently.

force: the default value should be: false. When the value is:
* false: only the items in the draft store that have never been published yet can be removed.
*  true: the item in the draft store(even been published before) can be removed.
*/
func (a *Client) DeleteItemShort(params *DeleteItemParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteItemParams()
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
		ID:                 "deleteItem",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteItemNoContent:
		response := &DeleteItemResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteItemNotFound:
		response := &DeleteItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteItemConflict:
		response := &DeleteItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcquireItemShort acquire item
 [SERVICE COMMUNICATION ONLY] This api is used for acquiring a published item while the item is maxCount limited, it will decrease the sale available count.
Other detail info:

  * Returns : acquire result
*/
func (a *Client) AcquireItemShort(params *AcquireItemParams, authInfo runtime.ClientAuthInfoWriter) (*AcquireItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcquireItemParams()
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
		ID:                 "acquireItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/acquire",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcquireItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcquireItemOK:
		response := &AcquireItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AcquireItemNotFound:
		response := &AcquireItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppShort get an app info
This API is used to get an app info.

Other detail info:

  * Returns : app data
*/
func (a *Client) GetAppShort(params *GetAppParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppParams()
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
		ID:                 "getApp",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/app",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppOK:
		response := &GetAppResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppShort update an app
This API is used to update an app.

An app update example:


    {

      "developer": "accelbyte",

      "publisher": "accelbyte",

      "websiteUrl": "http://accelbyte.io",

      "forumUrl": "http://accelbyte.io",

      "platforms": ["Windows(allowed values: Windows, MacOS, Linux, IOS, Android)"],

      "platformRequirements": {

        "Windows": [

          {

            "label":"minimum(can be minimum or recommended)",

            "osVersion":"os version",

            "processor":"processor",

            "ram":"RAM",

            "graphics":"graphics",

            "directXVersion":"directXVersion",

            "diskSpace":"diskSpace",

            "soundCard":"soundCard",

            "additionals":"additionals"

          }

         ]

      },

      "carousel": [

        {

          "type":"image(allowed values: image, video)",

          "videoSource":"generic(allowed values:generic, youtube, viemo)",

          "url":"url",

          "alt":"alternative url or text",

          "thumbnailUrl":"thumbnail url",

          "previewUrl":"preview url",

        }

      ],

      "localizations": {

        "en": {

          "slogan":"slogan",

          "announcement":"announcement",

        }

      },

      "primaryGenre": "Action",

      "genres": ["Action", "Adventure"],

      "players": ["Single"],

      "releaseDate": "optional yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

    }

Other detail info:

  * Returns : updated app data
*/
func (a *Client) UpdateAppShort(params *UpdateAppParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppParams()
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
		ID:                 "updateApp",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/app",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppOK:
		response := &UpdateAppResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateAppNotFound:
		response := &UpdateAppResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppConflict:
		response := &UpdateAppResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateAppUnprocessableEntity:
		response := &UpdateAppResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableItemShort disable an item
Disable an item.
Other detail info:

  * Returns : updated item
*/
func (a *Client) DisableItemShort(params *DisableItemParams, authInfo runtime.ClientAuthInfoWriter) (*DisableItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableItemParams()
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
		ID:                 "disableItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableItemOK:
		response := &DisableItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DisableItemNotFound:
		response := &DisableItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DisableItemConflict:
		response := &DisableItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetItemDynamicDataShort get item dynamic data
Get item dynamic data for published item.
Other detail info:

  * Returns : item dynamic data
*/
func (a *Client) GetItemDynamicDataShort(params *GetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetItemDynamicDataResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetItemDynamicDataParams()
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
		ID:                 "getItemDynamicData",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetItemDynamicDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetItemDynamicDataOK:
		response := &GetItemDynamicDataResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetItemDynamicDataNotFound:
		response := &GetItemDynamicDataResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableItemShort enable an item
Enable an item.
Other detail info:

  * Returns : updated item
*/
func (a *Client) EnableItemShort(params *EnableItemParams, authInfo runtime.ClientAuthInfoWriter) (*EnableItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableItemParams()
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
		ID:                 "enableItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableItemOK:
		response := &EnableItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *EnableItemNotFound:
		response := &EnableItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *EnableItemConflict:
		response := &EnableItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FeatureItemShort feature an item
Add a feature to an item.
Other detail info:

  * Returns : updated item
*/
func (a *Client) FeatureItemShort(params *FeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*FeatureItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFeatureItemParams()
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
		ID:                 "featureItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FeatureItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FeatureItemOK:
		response := &FeatureItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FeatureItemNotFound:
		response := &FeatureItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FeatureItemConflict:
		response := &FeatureItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DefeatureItemShort defeature an item
Remove a feature from an item.
Other detail info:

  * Returns : updated item
*/
func (a *Client) DefeatureItemShort(params *DefeatureItemParams, authInfo runtime.ClientAuthInfoWriter) (*DefeatureItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDefeatureItemParams()
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
		ID:                 "defeatureItem",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/features/{feature}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DefeatureItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DefeatureItemOK:
		response := &DefeatureItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DefeatureItemNotFound:
		response := &DefeatureItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DefeatureItemConflict:
		response := &DefeatureItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetLocaleItemShort get an item in locale
This API is used to get an item in specific locale. If item not exist in specific region, default region item will return.

Other detail info:

  * Returns : item data
*/
func (a *Client) GetLocaleItemShort(params *GetLocaleItemParams, authInfo runtime.ClientAuthInfoWriter) (*GetLocaleItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetLocaleItemParams()
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
		ID:                 "getLocaleItem",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetLocaleItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetLocaleItemOK:
		response := &GetLocaleItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetLocaleItemNotFound:
		response := &GetLocaleItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateItemPurchaseConditionShort update item purchase condition
This API is used to update item purchase condition
*/
func (a *Client) UpdateItemPurchaseConditionShort(params *UpdateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateItemPurchaseConditionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateItemPurchaseConditionParams()
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
		ID:                 "updateItemPurchaseCondition",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/purchase/condition",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateItemPurchaseConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateItemPurchaseConditionOK:
		response := &UpdateItemPurchaseConditionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateItemPurchaseConditionBadRequest:
		response := &UpdateItemPurchaseConditionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateItemPurchaseConditionNotFound:
		response := &UpdateItemPurchaseConditionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateItemPurchaseConditionConflict:
		response := &UpdateItemPurchaseConditionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateItemPurchaseConditionUnprocessableEntity:
		response := &UpdateItemPurchaseConditionResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryItemReferencesShort get item references
This API is used to get references for an item
*/
func (a *Client) QueryItemReferencesShort(params *QueryItemReferencesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryItemReferencesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryItemReferencesParams()
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
		ID:                 "queryItemReferences",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/references",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryItemReferencesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryItemReferencesOK:
		response := &QueryItemReferencesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryItemReferencesNotFound:
		response := &QueryItemReferencesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ReturnItemShort return item
 [SERVICE COMMUNICATION ONLY] This api is used for returning a published item while the item is maxCount limited, it will increase the sale available count if orderNo already acquired.
*/
func (a *Client) ReturnItemShort(params *ReturnItemParams, authInfo runtime.ClientAuthInfoWriter) (*ReturnItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewReturnItemParams()
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
		ID:                 "returnItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/items/{itemId}/return",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ReturnItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ReturnItemNoContent:
		response := &ReturnItemResponse{}

		response.IsSuccess = true

		return response, nil
	case *ReturnItemNotFound:
		response := &ReturnItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ReturnItemUnprocessableEntity:
		response := &ReturnItemResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemByAppIDShort get item by appid
This API is used to get item by appId.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the item with that appId
*/
func (a *Client) PublicGetItemByAppIDShort(params *PublicGetItemByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemByAppIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemByAppIDParams()
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
		ID:                 "publicGetItemByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemByAppIDOK:
		response := &PublicGetItemByAppIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetItemByAppIDNotFound:
		response := &PublicGetItemByAppIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryItemsShort query items by criteria
This API is used to query items by criteria within a store. If item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the list of items
*/
func (a *Client) PublicQueryItemsShort(params *PublicQueryItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryItemsParams()
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
		ID:                 "publicQueryItems",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryItemsOK:
		response := &PublicQueryItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicQueryItemsNotFound:
		response := &PublicQueryItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicQueryItemsUnprocessableEntity:
		response := &PublicQueryItemsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemBySkuShort get item by sku
This API is used to get the item by sku.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the item with sku
*/
func (a *Client) PublicGetItemBySkuShort(params *PublicGetItemBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemBySkuResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemBySkuParams()
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
		ID:                 "publicGetItemBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemBySkuOK:
		response := &PublicGetItemBySkuResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetItemBySkuNotFound:
		response := &PublicGetItemBySkuResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetEstimatedPriceShort get estimated price
This API is used to get estimated prices of item
*/
func (a *Client) PublicGetEstimatedPriceShort(params *PublicGetEstimatedPriceParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEstimatedPriceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetEstimatedPriceParams()
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
		ID:                 "publicGetEstimatedPrice",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/estimatedPrice",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetEstimatedPriceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetEstimatedPriceOK:
		response := &PublicGetEstimatedPriceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetEstimatedPriceNotFound:
		response := &PublicGetEstimatedPriceResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkGetItemsShort bulk get locale items
This API is used to bulk get locale items. If item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store items)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store items)
  *  Returns : the list of items info
*/
func (a *Client) PublicBulkGetItemsShort(params *PublicBulkGetItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkGetItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkGetItemsParams()
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
		ID:                 "publicBulkGetItems",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/locale/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkGetItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkGetItemsOK:
		response := &PublicBulkGetItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkGetItemsNotFound:
		response := &PublicBulkGetItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicValidateItemPurchaseConditionShort validate user item purchase condition
This API is used to validate user item purchase condition
*/
func (a *Client) PublicValidateItemPurchaseConditionShort(params *PublicValidateItemPurchaseConditionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicValidateItemPurchaseConditionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicValidateItemPurchaseConditionParams()
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
		ID:                 "publicValidateItemPurchaseCondition",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/purchase/conditions/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicValidateItemPurchaseConditionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicValidateItemPurchaseConditionOK:
		response := &PublicValidateItemPurchaseConditionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicValidateItemPurchaseConditionUnprocessableEntity:
		response := &PublicValidateItemPurchaseConditionResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSearchItemsShort search items by keyword
This API is used to search items by keyword in title, description and long description, It's language constrained, also if item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : the list of items
*/
func (a *Client) PublicSearchItemsShort(params *PublicSearchItemsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSearchItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSearchItemsParams()
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
		ID:                 "publicSearchItems",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSearchItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSearchItemsOK:
		response := &PublicSearchItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSearchItemsNotFound:
		response := &PublicSearchItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetAppShort get an app in locale
This API is used to get an app in locale. If app not exist in specific region, default region app will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store app)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store app)
  *  Returns : app data
*/
func (a *Client) PublicGetAppShort(params *PublicGetAppParams) (*PublicGetAppResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAppParams()
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
		ID:                 "publicGetApp",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/{itemId}/app/locale",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAppReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetAppOK:
		response := &PublicGetAppResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetAppNotFound:
		response := &PublicGetAppResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemDynamicDataShort get item dynamic data
Get item dynamic data for a published item.
Other detail info:

  * Returns : item dynamic data
*/
func (a *Client) PublicGetItemDynamicDataShort(params *PublicGetItemDynamicDataParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetItemDynamicDataResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetItemDynamicDataParams()
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
		ID:                 "publicGetItemDynamicData",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/{itemId}/dynamic",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetItemDynamicDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetItemDynamicDataOK:
		response := &PublicGetItemDynamicDataResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetItemDynamicDataNotFound:
		response := &PublicGetItemDynamicDataResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetItemShort get an item in locale
This API is used to get an item in locale. If item not exist in specific region, default region item will return.

Other detail info:

  * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
  *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
  *  Returns : item data
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
		ID:                 "publicGetItem",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/items/{itemId}/locale",
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
	case *PublicGetItemNotFound:
		response := &PublicGetItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryItemsV2Short query items by criteria
This API is used to query items by criteria within a store.

The behaviour for itemStatus query parameter:
* TRUE: Show only ACTIVE items
* FALSE: Show only INACTIVE items
* Not provided: show both ACTIVE and INACTIVE items
Other detail info:

  * Returns : the list of items
*/
func (a *Client) QueryItemsV2Short(params *QueryItemsV2Params, authInfo runtime.ClientAuthInfoWriter) (*QueryItemsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryItemsV2Params()
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
		ID:                 "queryItemsV2",
		Method:             "GET",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/items/byCriteria",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryItemsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryItemsV2OK:
		response := &QueryItemsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryItemsV2NotFound:
		response := &QueryItemsV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryItemsV2UnprocessableEntity:
		response := &QueryItemsV2Response{}
		response.Error422 = v.Payload

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
