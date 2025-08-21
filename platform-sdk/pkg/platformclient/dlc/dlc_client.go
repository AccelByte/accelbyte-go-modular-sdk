// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new dlc API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for dlc API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetDLCItemConfigHistoryShort(params *GetDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigHistoryResponse, error)
	RestoreDLCItemConfigHistoryShort(params *RestoreDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*RestoreDLCItemConfigHistoryResponse, error)
	GetDLCItemConfigShort(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigResponse, error)
	UpdateDLCItemConfigShort(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigResponse, error)
	DeleteDLCItemConfigShort(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigResponse, error)
	GetPlatformDLCConfigShort(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigResponse, error)
	UpdatePlatformDLCConfigShort(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigResponse, error)
	DeletePlatformDLCConfigShort(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigResponse, error)
	GetUserDLCByPlatformShort(params *GetUserDLCByPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCByPlatformResponse, error)
	GetUserDLCShort(params *GetUserDLCParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCResponse, error)
	GeDLCDurableRewardShortMapShort(params *GeDLCDurableRewardShortMapParams, authInfo runtime.ClientAuthInfoWriter) (*GeDLCDurableRewardShortMapResponse, error)
	SyncEpicGameDLCShort(params *SyncEpicGameDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGameDLCResponse, error)
	SyncOculusDLCShort(params *SyncOculusDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusDLCResponse, error)
	PublicSyncPsnDLCInventoryShort(params *PublicSyncPsnDLCInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryResponse, error)
	PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort(params *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsResponse, error)
	SyncSteamDLCShort(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCResponse, error)
	SyncXboxDLCShort(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCResponse, error)
	PublicGetMyDLCContentShort(params *PublicGetMyDLCContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyDLCContentResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetDLCItemConfigHistoryShort get dlc item config history
Get DLC item config history.
*/
func (a *Client) GetDLCItemConfigHistoryShort(params *GetDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDLCItemConfigHistoryParams()
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
		ID:                 "getDLCItemConfigHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDLCItemConfigHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDLCItemConfigHistoryOK:
		response := &GetDLCItemConfigHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetDLCItemConfigHistoryNotFound:
		response := &GetDLCItemConfigHistoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RestoreDLCItemConfigHistoryShort restore dlc item config history
Restore DLC item config history.
*/
func (a *Client) RestoreDLCItemConfigHistoryShort(params *RestoreDLCItemConfigHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*RestoreDLCItemConfigHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRestoreDLCItemConfigHistoryParams()
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
		ID:                 "restoreDLCItemConfigHistory",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/history/{id}/restore",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RestoreDLCItemConfigHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RestoreDLCItemConfigHistoryNoContent:
		response := &RestoreDLCItemConfigHistoryResponse{}

		response.IsSuccess = true

		return response, nil
	case *RestoreDLCItemConfigHistoryNotFound:
		response := &RestoreDLCItemConfigHistoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetDLCItemConfigShort get dlc item config
Get DLC item config.
*/
func (a *Client) GetDLCItemConfigShort(params *GetDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetDLCItemConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetDLCItemConfigParams()
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
		ID:                 "getDLCItemConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetDLCItemConfigOK:
		response := &GetDLCItemConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetDLCItemConfigNotFound:
		response := &GetDLCItemConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateDLCItemConfigShort update dlc item config
Update DLC item config. Other detail info:
  - Returns : updated DLC item config
*/
func (a *Client) UpdateDLCItemConfigShort(params *UpdateDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateDLCItemConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateDLCItemConfigParams()
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
		ID:                 "updateDLCItemConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateDLCItemConfigOK:
		response := &UpdateDLCItemConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateDLCItemConfigBadRequest:
		response := &UpdateDLCItemConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateDLCItemConfigNotFound:
		response := &UpdateDLCItemConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateDLCItemConfigConflict:
		response := &UpdateDLCItemConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateDLCItemConfigUnprocessableEntity:
		response := &UpdateDLCItemConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteDLCItemConfigShort delete a dlc item config
delete a DLC item config.
*/
func (a *Client) DeleteDLCItemConfigShort(params *DeleteDLCItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteDLCItemConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteDLCItemConfigParams()
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
		ID:                 "deleteDLCItemConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteDLCItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteDLCItemConfigNoContent:
		response := &DeleteDLCItemConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlatformDLCConfigShort get platform dlc config
Get Platform DLC config.
*/
func (a *Client) GetPlatformDLCConfigShort(params *GetPlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformDLCConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformDLCConfigParams()
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
		ID:                 "getPlatformDLCConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlatformDLCConfigOK:
		response := &GetPlatformDLCConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPlatformDLCConfigNotFound:
		response := &GetPlatformDLCConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePlatformDLCConfigShort update platform dlc config
Update Platform DLC config. Other detail info:
  - Returns : updated Platform DLC config

## Restrictions for platform dlc map

1. Cannot use "." as the key name
-

	{ "data.2": "value" }

2. Cannot use "$" as the prefix in key names
-

	{ "$data": "value" }
*/
func (a *Client) UpdatePlatformDLCConfigShort(params *UpdatePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformDLCConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformDLCConfigParams()
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
		ID:                 "updatePlatformDLCConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformDLCConfigOK:
		response := &UpdatePlatformDLCConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePlatformDLCConfigUnprocessableEntity:
		response := &UpdatePlatformDLCConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePlatformDLCConfigShort delete a platform dlc config
delete a Platform DLC config.
*/
func (a *Client) DeletePlatformDLCConfigShort(params *DeletePlatformDLCConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlatformDLCConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlatformDLCConfigParams()
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
		ID:                 "deletePlatformDLCConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/dlc/config/platformMap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlatformDLCConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlatformDLCConfigNoContent:
		response := &DeletePlatformDLCConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserDLCByPlatformShort get user dlc by platform
Get user dlc by platform.
Other detail info:

  - Returns : user dlc
*/
func (a *Client) GetUserDLCByPlatformShort(params *GetUserDLCByPlatformParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCByPlatformResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserDLCByPlatformParams()
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
		ID:                 "getUserDLCByPlatform",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/dlc",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserDLCByPlatformReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserDLCByPlatformOK:
		response := &GetUserDLCByPlatformResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserDLCShort get user dlc records
Get user dlc records.
Note: includeAllNamespaces means this endpoint will return user dlcs from all namespace, example scenario isadmin may need to check the user dlcs before unlink a 3rd party account, so the user dlcs should be from all namespaces because unlinking is a platform level action
Other detail info:

  - Returns : user dlc
*/
func (a *Client) GetUserDLCShort(params *GetUserDLCParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserDLCResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserDLCParams()
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
		ID:                 "getUserDLC",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/dlc/records",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserDLCOK:
		response := &GetUserDLCResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GeDLCDurableRewardShortMapShort get dlc durable reward simple map
Get dlc reward simple map, only return the sku of durable item reward.
*/
func (a *Client) GeDLCDurableRewardShortMapShort(params *GeDLCDurableRewardShortMapParams, authInfo runtime.ClientAuthInfoWriter) (*GeDLCDurableRewardShortMapResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGeDLCDurableRewardShortMapParams()
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
		ID:                 "geDLCDurableRewardShortMap",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/dlc/rewards/durable/map",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GeDLCDurableRewardShortMapReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GeDLCDurableRewardShortMapOK:
		response := &GeDLCDurableRewardShortMapResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GeDLCDurableRewardShortMapNotFound:
		response := &GeDLCDurableRewardShortMapResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncEpicGameDLCShort sync epic games dlc items
Sync epic games dlc items
*/
func (a *Client) SyncEpicGameDLCShort(params *SyncEpicGameDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGameDLCResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncEpicGameDLCParams()
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
		ID:                 "syncEpicGameDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/epicgames/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncEpicGameDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncEpicGameDLCNoContent:
		response := &SyncEpicGameDLCResponse{}

		response.IsSuccess = true

		return response, nil
	case *SyncEpicGameDLCBadRequest:
		response := &SyncEpicGameDLCResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncEpicGameDLCNotFound:
		response := &SyncEpicGameDLCResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncOculusDLCShort sync oculus dlc.
Sync oculus dlc
*/
func (a *Client) SyncOculusDLCShort(params *SyncOculusDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusDLCResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncOculusDLCParams()
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
		ID:                 "syncOculusDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/oculus/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncOculusDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncOculusDLCNoContent:
		response := &SyncOculusDLCResponse{}

		response.IsSuccess = true

		return response, nil
	case *SyncOculusDLCBadRequest:
		response := &SyncOculusDLCResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncOculusDLCNotFound:
		response := &SyncOculusDLCResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSyncPsnDLCInventoryShort synchronize with dlc entitlements in psn store.
Synchronize with dlc entitlements in PSN Store.Other detail info:
  - Returns : result of synchronization
*/
func (a *Client) PublicSyncPsnDLCInventoryShort(params *PublicSyncPsnDLCInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSyncPsnDLCInventoryParams()
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
		ID:                 "publicSyncPsnDlcInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSyncPsnDLCInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDLCInventoryNoContent:
		response := &PublicSyncPsnDLCInventoryResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicSyncPsnDLCInventoryBadRequest:
		response := &PublicSyncPsnDLCInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSyncPsnDLCInventoryNotFound:
		response := &PublicSyncPsnDLCInventoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort synchronize with dlc entitlements in psn store with multiple service labels.
Synchronize with dlc entitlements in PSN Store with multiple service labels.Other detail info:
  - Returns : result of synchronization
*/
func (a *Client) PublicSyncPsnDLCInventoryWithMultipleServiceLabelsShort(params *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSyncPsnDLCInventoryWithMultipleServiceLabelsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSyncPsnDLCInventoryWithMultipleServiceLabelsParams()
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
		ID:                 "publicSyncPsnDlcInventoryWithMultipleServiceLabels",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/psn/sync/multiServiceLabels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNoContent:
		response := &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsBadRequest:
		response := &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSyncPsnDLCInventoryWithMultipleServiceLabelsNotFound:
		response := &PublicSyncPsnDLCInventoryWithMultipleServiceLabelsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamDLCShort sync steam dlc.
Sync steam dlc
*/
func (a *Client) SyncSteamDLCShort(params *SyncSteamDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamDLCResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamDLCParams()
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
		ID:                 "syncSteamDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/steam/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSteamDLCNoContent:
		response := &SyncSteamDLCResponse{}

		response.IsSuccess = true

		return response, nil
	case *SyncSteamDLCBadRequest:
		response := &SyncSteamDLCResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncSteamDLCNotFound:
		response := &SyncSteamDLCResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncXboxDLCShort sync xbox dlc items.
Sync Xbox inventory's dlc items
*/
func (a *Client) SyncXboxDLCShort(params *SyncXboxDLCParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxDLCResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncXboxDLCParams()
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
		ID:                 "syncXboxDLC",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/dlc/xbl/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncXboxDLCReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncXboxDLCNoContent:
		response := &SyncXboxDLCResponse{}

		response.IsSuccess = true

		return response, nil
	case *SyncXboxDLCBadRequest:
		response := &SyncXboxDLCResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncXboxDLCNotFound:
		response := &SyncXboxDLCResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyDLCContentShort get user dlc reward contents
Get user dlc reward contents. If includeAllNamespaces is false, will only return the dlc synced from the current namespace
Other detail info:

  - Returns : user dlc
*/
func (a *Client) PublicGetMyDLCContentShort(params *PublicGetMyDLCContentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyDLCContentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyDLCContentParams()
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
		ID:                 "publicGetMyDLCContent",
		Method:             "GET",
		PathPattern:        "/platform/public/users/me/dlc/content",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyDLCContentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyDLCContentOK:
		response := &PublicGetMyDLCContentResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
