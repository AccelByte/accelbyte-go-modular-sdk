// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_inventories

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new admin inventories API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for admin inventories API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListInventoriesShort(params *AdminListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoriesResponse, error)
	AdminCreateInventoryShort(params *AdminCreateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryResponse, error)
	AdminGetInventoryShort(params *AdminGetInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryResponse, error)
	AdminUpdateInventoryShort(params *AdminUpdateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryResponse, error)
	DeleteInventoryShort(params *DeleteInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteInventoryResponse, error)
	AdminUpdateUserInventoriesByInventoryCodeShort(params *AdminUpdateUserInventoriesByInventoryCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserInventoriesByInventoryCodeResponse, error)
	AdminPurchasableShort(params *AdminPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPurchasableResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListInventoriesShort to list all inventories

Listing all inventories in a namespace.
The response body will be in the form of standard pagination.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]
*/
func (a *Client) AdminListInventoriesShort(params *AdminListInventoriesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListInventoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListInventoriesParams()
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
		ID:                 "AdminListInventories",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListInventoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListInventoriesOK:
		response := &AdminListInventoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListInventoriesBadRequest:
		response := &AdminListInventoriesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListInventoriesInternalServerError:
		response := &AdminListInventoriesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateInventoryShort to create inventory

Creating an inventory.
The inventory configuration must exists otherwise it will fail.
The max slots and max upgrade slots of an inventory will be initialized according to the inventory configuration it used,
but it can be changed later when using AdminUpdateInventory endpoint.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [CREATE]
*/
func (a *Client) AdminCreateInventoryShort(params *AdminCreateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateInventoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateInventoryParams()
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
		ID:                 "AdminCreateInventory",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateInventoryCreated:
		response := &AdminCreateInventoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCreateInventoryBadRequest:
		response := &AdminCreateInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCreateInventoryInternalServerError:
		response := &AdminCreateInventoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetInventoryShort to get an inventory

Getting an inventory info.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [READ]
*/
func (a *Client) AdminGetInventoryShort(params *AdminGetInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetInventoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetInventoryParams()
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
		ID:                 "AdminGetInventory",
		Method:             "GET",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetInventoryOK:
		response := &AdminGetInventoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetInventoryBadRequest:
		response := &AdminGetInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInventoryNotFound:
		response := &AdminGetInventoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetInventoryInternalServerError:
		response := &AdminGetInventoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateInventoryShort to update inventory

Updating an inventory.
Positive value will increase MaxSlots from existing value
Negative value will decrease MaxSlots from existing value
Limited slots can not be changed to unlimited, vice versa

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]
*/
func (a *Client) AdminUpdateInventoryShort(params *AdminUpdateInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateInventoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateInventoryParams()
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
		ID:                 "AdminUpdateInventory",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateInventoryOK:
		response := &AdminUpdateInventoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateInventoryBadRequest:
		response := &AdminUpdateInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateInventoryNotFound:
		response := &AdminUpdateInventoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateInventoryInternalServerError:
		response := &AdminUpdateInventoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteInventoryShort to delete inventory

Deleting an inventory.
If an inventory still has items, it cannot be deleted.

ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [DELETE]
*/
func (a *Client) DeleteInventoryShort(params *DeleteInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteInventoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteInventoryParams()
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
		ID:                 "deleteInventory",
		Method:             "DELETE",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteInventoryNoContent:
		response := &DeleteInventoryResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteInventoryBadRequest:
		response := &DeleteInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteInventoryNotFound:
		response := &DeleteInventoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteInventoryInternalServerError:
		response := &DeleteInventoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateUserInventoriesByInventoryCodeShort to update user inventories by inventory code

Updating user inventories.
Positive value will increase MaxSlots from existing value
Negative value will decrease MaxSlots from existing value
Limited slots can not be changed to unlimited, vice versa

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]
*/
func (a *Client) AdminUpdateUserInventoriesByInventoryCodeShort(params *AdminUpdateUserInventoriesByInventoryCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateUserInventoriesByInventoryCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateUserInventoriesByInventoryCodeParams()
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
		ID:                 "AdminUpdateUserInventoriesByInventoryCode",
		Method:             "PUT",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateUserInventoriesByInventoryCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateUserInventoriesByInventoryCodeOK:
		response := &AdminUpdateUserInventoriesByInventoryCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdateUserInventoriesByInventoryCodeBadRequest:
		response := &AdminUpdateUserInventoriesByInventoryCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserInventoriesByInventoryCodeUnauthorized:
		response := &AdminUpdateUserInventoriesByInventoryCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserInventoriesByInventoryCodeForbidden:
		response := &AdminUpdateUserInventoriesByInventoryCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserInventoriesByInventoryCodeNotFound:
		response := &AdminUpdateUserInventoriesByInventoryCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdateUserInventoriesByInventoryCodeInternalServerError:
		response := &AdminUpdateUserInventoriesByInventoryCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminPurchasableShort to validate user inventory capacity when purchase ecommerce item

Validate purchase ecommerce item.

Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY [UPDATE]
*/
func (a *Client) AdminPurchasableShort(params *AdminPurchasableParams, authInfo runtime.ClientAuthInfoWriter) (*AdminPurchasableResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminPurchasableParams()
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
		ID:                 "AdminPurchasable",
		Method:             "POST",
		PathPattern:        "/inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminPurchasableReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminPurchasableNoContent:
		response := &AdminPurchasableResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminPurchasableBadRequest:
		response := &AdminPurchasableResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPurchasableNotFound:
		response := &AdminPurchasableResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPurchasableConflict:
		response := &AdminPurchasableResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminPurchasableInternalServerError:
		response := &AdminPurchasableResponse{}
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
