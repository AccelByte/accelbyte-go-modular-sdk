// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new iap API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for iap API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAppleIAPConfigShort(params *GetAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleIAPConfigResponse, error)
	UpdateAppleIAPConfigShort(params *UpdateAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleIAPConfigResponse, error)
	DeleteAppleIAPConfigShort(params *DeleteAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppleIAPConfigResponse, error)
	UpdateAppleP8FileShort(params *UpdateAppleP8FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleP8FileResponse, error)
	GetEpicGamesIAPConfigShort(params *GetEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetEpicGamesIAPConfigResponse, error)
	UpdateEpicGamesIAPConfigShort(params *UpdateEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEpicGamesIAPConfigResponse, error)
	DeleteEpicGamesIAPConfigShort(params *DeleteEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteEpicGamesIAPConfigResponse, error)
	GetGoogleIAPConfigShort(params *GetGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetGoogleIAPConfigResponse, error)
	UpdateGoogleIAPConfigShort(params *UpdateGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleIAPConfigResponse, error)
	DeleteGoogleIAPConfigShort(params *DeleteGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGoogleIAPConfigResponse, error)
	UpdateGoogleP12FileShort(params *UpdateGoogleP12FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleP12FileResponse, error)
	GetIAPItemConfigShort(params *GetIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemConfigResponse, error)
	UpdateIAPItemConfigShort(params *UpdateIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateIAPItemConfigResponse, error)
	DeleteIAPItemConfigShort(params *DeleteIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteIAPItemConfigResponse, error)
	GetOculusIAPConfigShort(params *GetOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetOculusIAPConfigResponse, error)
	UpdateOculusIAPConfigShort(params *UpdateOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOculusIAPConfigResponse, error)
	DeleteOculusIAPConfigShort(params *DeleteOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusIAPConfigResponse, error)
	GetPlayStationIAPConfigShort(params *GetPlayStationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayStationIAPConfigResponse, error)
	UpdatePlaystationIAPConfigShort(params *UpdatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlaystationIAPConfigResponse, error)
	DeletePlaystationIAPConfigShort(params *DeletePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlaystationIAPConfigResponse, error)
	ValidateExistedPlaystationIAPConfigShort(params *ValidateExistedPlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateExistedPlaystationIAPConfigResponse, error)
	ValidatePlaystationIAPConfigShort(params *ValidatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidatePlaystationIAPConfigResponse, error)
	GetSteamIAPConfigShort(params *GetSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSteamIAPConfigResponse, error)
	UpdateSteamIAPConfigShort(params *UpdateSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSteamIAPConfigResponse, error)
	DeleteSteamIAPConfigShort(params *DeleteSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSteamIAPConfigResponse, error)
	GetTwitchIAPConfigShort(params *GetTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetTwitchIAPConfigResponse, error)
	UpdateTwitchIAPConfigShort(params *UpdateTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTwitchIAPConfigResponse, error)
	DeleteTwitchIAPConfigShort(params *DeleteTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTwitchIAPConfigResponse, error)
	GetXblIAPConfigShort(params *GetXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblIAPConfigResponse, error)
	UpdateXblIAPConfigShort(params *UpdateXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblIAPConfigResponse, error)
	DeleteXblAPConfigShort(params *DeleteXblAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteXblAPConfigResponse, error)
	UpdateXblBPCertFileShort(params *UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblBPCertFileResponse, error)
	QueryAbnormalTransactionsShort(params *QueryAbnormalTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAbnormalTransactionsResponse, error)
	AdminGetSteamJobInfoShort(params *AdminGetSteamJobInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSteamJobInfoResponse, error)
	AdminResetSteamJobTimeShort(params *AdminResetSteamJobTimeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetSteamJobTimeResponse, error)
	AdminRefundIAPOrderShort(params *AdminRefundIAPOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRefundIAPOrderResponse, error)
	QuerySteamReportHistoriesShort(params *QuerySteamReportHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySteamReportHistoriesResponse, error)
	GetIAPOrderConsumeDetailsShort(params *GetIAPOrderConsumeDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPOrderConsumeDetailsResponse, error)
	QueryUserIAPOrdersShort(params *QueryUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPOrdersResponse, error)
	QueryAllUserIAPOrdersShort(params *QueryAllUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAllUserIAPOrdersResponse, error)
	QueryUserIAPConsumeHistoryShort(params *QueryUserIAPConsumeHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPConsumeHistoryResponse, error)
	MockFulfillIAPItemShort(params *MockFulfillIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*MockFulfillIAPItemResponse, error)
	AdminGetIAPOrderLineItemsShort(params *AdminGetIAPOrderLineItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetIAPOrderLineItemsResponse, error)
	AdminSyncSteamAbnormalTransactionShort(params *AdminSyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamAbnormalTransactionResponse, error)
	AdminSyncSteamIAPByTransactionShort(params *AdminSyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamIAPByTransactionResponse, error)
	GetAppleConfigVersionShort(params *GetAppleConfigVersionParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleConfigVersionResponse, error)
	GetIAPItemMappingShort(params *GetIAPItemMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemMappingResponse, error)
	SyncTwitchDropsEntitlementShort(params *SyncTwitchDropsEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlementResponse, error)
	PublicFulfillAppleIAPItemShort(params *PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillAppleIAPItemResponse, error)
	SyncEpicGamesInventoryShort(params *SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGamesInventoryResponse, error)
	PublicFulfillGoogleIAPItemShort(params *PublicFulfillGoogleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillGoogleIAPItemResponse, error)
	SyncOculusConsumableEntitlementsShort(params *SyncOculusConsumableEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusConsumableEntitlementsResponse, error)
	PublicReconcilePlayStationStoreShort(params *PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreResponse, error)
	PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort(params *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreWithMultipleServiceLabelsResponse, error)
	SyncSteamInventoryShort(params *SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamInventoryResponse, error)
	SyncSteamAbnormalTransactionShort(params *SyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamAbnormalTransactionResponse, error)
	SyncSteamIAPByTransactionShort(params *SyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamIAPByTransactionResponse, error)
	SyncTwitchDropsEntitlement1Short(params *SyncTwitchDropsEntitlement1Params, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlement1Response, error)
	SyncXboxInventoryShort(params *SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxInventoryResponse, error)
	V2PublicFulfillAppleIAPItemShort(params *V2PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*V2PublicFulfillAppleIAPItemResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAppleIAPConfigShort get apple iap config
Get apple iap config.
Other detail info:
              * Returns : apple iap config
*/
func (a *Client) GetAppleIAPConfigShort(params *GetAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppleIAPConfigParams()
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
		ID:                 "getAppleIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppleIAPConfigOK:
		response := &GetAppleIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppleIAPConfigShort update apple iap config
Update apple iap config. Other detail info:
              * Returns : updated apple iap config
*/
func (a *Client) UpdateAppleIAPConfigShort(params *UpdateAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppleIAPConfigParams()
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
		ID:                 "updateAppleIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppleIAPConfigOK:
		response := &UpdateAppleIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteAppleIAPConfigShort delete apple iap config
Delete apple iap config.
*/
func (a *Client) DeleteAppleIAPConfigShort(params *DeleteAppleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAppleIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAppleIAPConfigParams()
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
		ID:                 "deleteAppleIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAppleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAppleIAPConfigNoContent:
		response := &DeleteAppleIAPConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateAppleP8FileShort upload apple store p8 file
Upload Apple Store p8 file.
Other detail info:
              * Returns : updated apple iap config
*/
func (a *Client) UpdateAppleP8FileShort(params *UpdateAppleP8FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateAppleP8FileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateAppleP8FileParams()
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
		ID:                 "updateAppleP8File",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/apple/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateAppleP8FileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateAppleP8FileOK:
		response := &UpdateAppleP8FileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEpicGamesIAPConfigShort get epicgames iap config
Get epic games iap config.
Other detail info:
              * Returns : epic games iap config
*/
func (a *Client) GetEpicGamesIAPConfigShort(params *GetEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetEpicGamesIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEpicGamesIAPConfigParams()
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
		ID:                 "getEpicGamesIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/epicgames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEpicGamesIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEpicGamesIAPConfigOK:
		response := &GetEpicGamesIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateEpicGamesIAPConfigShort update epic games iap config
Update epic games iap config. Other detail info:
              * Returns : updated epic games iap config
*/
func (a *Client) UpdateEpicGamesIAPConfigShort(params *UpdateEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateEpicGamesIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateEpicGamesIAPConfigParams()
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
		ID:                 "updateEpicGamesIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/epicgames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateEpicGamesIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateEpicGamesIAPConfigOK:
		response := &UpdateEpicGamesIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteEpicGamesIAPConfigShort delete epic games iap config
Delete epic games iap config.
*/
func (a *Client) DeleteEpicGamesIAPConfigShort(params *DeleteEpicGamesIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteEpicGamesIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteEpicGamesIAPConfigParams()
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
		ID:                 "deleteEpicGamesIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/epicgames",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteEpicGamesIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteEpicGamesIAPConfigNoContent:
		response := &DeleteEpicGamesIAPConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGoogleIAPConfigShort get google iap config
Get google iap config.
Other detail info:
              * Returns : google iap config
*/
func (a *Client) GetGoogleIAPConfigShort(params *GetGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetGoogleIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGoogleIAPConfigParams()
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
		ID:                 "getGoogleIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGoogleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGoogleIAPConfigOK:
		response := &GetGoogleIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGoogleIAPConfigShort update google iap config
Update google iap config. Other detail info:
              * Returns : updated google iap config
*/
func (a *Client) UpdateGoogleIAPConfigShort(params *UpdateGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGoogleIAPConfigParams()
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
		ID:                 "updateGoogleIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGoogleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGoogleIAPConfigOK:
		response := &UpdateGoogleIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGoogleIAPConfigShort delete google iap config
Delete google iap config.
*/
func (a *Client) DeleteGoogleIAPConfigShort(params *DeleteGoogleIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGoogleIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGoogleIAPConfigParams()
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
		ID:                 "deleteGoogleIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGoogleIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGoogleIAPConfigNoContent:
		response := &DeleteGoogleIAPConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateGoogleP12FileShort upload google play p12 file
Upload google play p12 file.
Other detail info:
              * Returns : updated google iap config
*/
func (a *Client) UpdateGoogleP12FileShort(params *UpdateGoogleP12FileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateGoogleP12FileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateGoogleP12FileParams()
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
		ID:                 "updateGoogleP12File",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/google/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateGoogleP12FileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateGoogleP12FileOK:
		response := &UpdateGoogleP12FileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIAPItemConfigShort get iap item config
Get iap item config.
*/
func (a *Client) GetIAPItemConfigShort(params *GetIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIAPItemConfigParams()
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
		ID:                 "getIAPItemConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIAPItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIAPItemConfigOK:
		response := &GetIAPItemConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetIAPItemConfigNotFound:
		response := &GetIAPItemConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateIAPItemConfigShort update iap item config
Update iap item config. Other detail info:
              * Returns : updated iap item config
*/
func (a *Client) UpdateIAPItemConfigShort(params *UpdateIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateIAPItemConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateIAPItemConfigParams()
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
		ID:                 "updateIAPItemConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateIAPItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateIAPItemConfigOK:
		response := &UpdateIAPItemConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateIAPItemConfigBadRequest:
		response := &UpdateIAPItemConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateIAPItemConfigConflict:
		response := &UpdateIAPItemConfigResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateIAPItemConfigUnprocessableEntity:
		response := &UpdateIAPItemConfigResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteIAPItemConfigShort delete a iap item config
delete a iap item config.
*/
func (a *Client) DeleteIAPItemConfigShort(params *DeleteIAPItemConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteIAPItemConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteIAPItemConfigParams()
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
		ID:                 "deleteIAPItemConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/item",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteIAPItemConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteIAPItemConfigNoContent:
		response := &DeleteIAPItemConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetOculusIAPConfigShort get oculus iap config
Get oculus iap config.
Other detail info:
              * Returns : steam iap config
*/
func (a *Client) GetOculusIAPConfigShort(params *GetOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetOculusIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetOculusIAPConfigParams()
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
		ID:                 "getOculusIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetOculusIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetOculusIAPConfigOK:
		response := &GetOculusIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateOculusIAPConfigShort update oculus iap config
Update oculus iap config. Other detail info:
              * Returns : updated steam iap config
*/
func (a *Client) UpdateOculusIAPConfigShort(params *UpdateOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateOculusIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateOculusIAPConfigParams()
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
		ID:                 "updateOculusIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateOculusIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateOculusIAPConfigOK:
		response := &UpdateOculusIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteOculusIAPConfigShort delete oculus iap config
Delete oculus iap config.
*/
func (a *Client) DeleteOculusIAPConfigShort(params *DeleteOculusIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteOculusIAPConfigParams()
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
		ID:                 "deleteOculusIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteOculusIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteOculusIAPConfigNoContent:
		response := &DeleteOculusIAPConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayStationIAPConfigShort get playstation iap config
Get playstation iap config.
Other detail info:
              * Returns : playstation iap config
*/
func (a *Client) GetPlayStationIAPConfigShort(params *GetPlayStationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayStationIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayStationIAPConfigParams()
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
		ID:                 "getPlayStationIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayStationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayStationIAPConfigOK:
		response := &GetPlayStationIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePlaystationIAPConfigShort update playstation iap config
Update playstation iap config. Other detail info:
              * Returns : updated playstation iap config
*/
func (a *Client) UpdatePlaystationIAPConfigShort(params *UpdatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlaystationIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlaystationIAPConfigParams()
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
		ID:                 "updatePlaystationIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlaystationIAPConfigOK:
		response := &UpdatePlaystationIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePlaystationIAPConfigBadRequest:
		response := &UpdatePlaystationIAPConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeletePlaystationIAPConfigShort delete playstation iap config
Delete playstation iap config.
*/
func (a *Client) DeletePlaystationIAPConfigShort(params *DeletePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePlaystationIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePlaystationIAPConfigParams()
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
		ID:                 "deletePlaystationIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePlaystationIAPConfigNoContent:
		response := &DeletePlaystationIAPConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ValidateExistedPlaystationIAPConfigShort validate existed playstation iap config
Validate playstation iap config. Other detail info:
              * Returns : Test Results
*/
func (a *Client) ValidateExistedPlaystationIAPConfigShort(params *ValidateExistedPlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidateExistedPlaystationIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidateExistedPlaystationIAPConfigParams()
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
		ID:                 "validateExistedPlaystationIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidateExistedPlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidateExistedPlaystationIAPConfigOK:
		response := &ValidateExistedPlaystationIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ValidatePlaystationIAPConfigShort validate playstation iap config
Validate playstation iap config. Other detail info:
              * Returns : Test Results
*/
func (a *Client) ValidatePlaystationIAPConfigShort(params *ValidatePlaystationIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*ValidatePlaystationIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidatePlaystationIAPConfigParams()
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
		ID:                 "validatePlaystationIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/playstation/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidatePlaystationIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidatePlaystationIAPConfigOK:
		response := &ValidatePlaystationIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSteamIAPConfigShort get steam iap config
Get steam iap config.
Other detail info:
              * Returns : steam iap config
*/
func (a *Client) GetSteamIAPConfigShort(params *GetSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetSteamIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSteamIAPConfigParams()
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
		ID:                 "getSteamIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSteamIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSteamIAPConfigOK:
		response := &GetSteamIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSteamIAPConfigShort update steam iap config
Update steam iap config. Other detail info:
              * Returns : updated steam iap config
*/
func (a *Client) UpdateSteamIAPConfigShort(params *UpdateSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSteamIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSteamIAPConfigParams()
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
		ID:                 "updateSteamIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSteamIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSteamIAPConfigOK:
		response := &UpdateSteamIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSteamIAPConfigBadRequest:
		response := &UpdateSteamIAPConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSteamIAPConfigShort delete steam iap config
Delete steam iap config.
*/
func (a *Client) DeleteSteamIAPConfigShort(params *DeleteSteamIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSteamIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSteamIAPConfigParams()
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
		ID:                 "deleteSteamIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/steam",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSteamIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSteamIAPConfigNoContent:
		response := &DeleteSteamIAPConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetTwitchIAPConfigShort get twitch iap config
Get twitch iap config.
Other detail info:
              * Returns : twitch iap config
*/
func (a *Client) GetTwitchIAPConfigShort(params *GetTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetTwitchIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetTwitchIAPConfigParams()
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
		ID:                 "getTwitchIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/twitch",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetTwitchIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetTwitchIAPConfigOK:
		response := &GetTwitchIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateTwitchIAPConfigShort update twitch iap config
Update twitch iap config. Other detail info:
              * Returns : updated twitch iap config
*/
func (a *Client) UpdateTwitchIAPConfigShort(params *UpdateTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateTwitchIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateTwitchIAPConfigParams()
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
		ID:                 "updateTwitchIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/twitch",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateTwitchIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateTwitchIAPConfigOK:
		response := &UpdateTwitchIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteTwitchIAPConfigShort delete twitch iap config
Delete twitch iap config.
*/
func (a *Client) DeleteTwitchIAPConfigShort(params *DeleteTwitchIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteTwitchIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteTwitchIAPConfigParams()
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
		ID:                 "deleteTwitchIAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/twitch",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteTwitchIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteTwitchIAPConfigNoContent:
		response := &DeleteTwitchIAPConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetXblIAPConfigShort get xbox iap config
Get xbox iap config.
Other detail info:
              * Returns : xbox iap config
*/
func (a *Client) GetXblIAPConfigShort(params *GetXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetXblIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetXblIAPConfigParams()
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
		ID:                 "getXblIAPConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetXblIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetXblIAPConfigOK:
		response := &GetXblIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXblIAPConfigShort update xbl iap config
Update xbl iap config. Other detail info:
              * Returns : updated xbl iap config
*/
func (a *Client) UpdateXblIAPConfigShort(params *UpdateXblIAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblIAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXblIAPConfigParams()
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
		ID:                 "updateXblIAPConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXblIAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXblIAPConfigOK:
		response := &UpdateXblIAPConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteXblAPConfigShort delete xbl iap config
Delete xbl iap config.
*/
func (a *Client) DeleteXblAPConfigShort(params *DeleteXblAPConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteXblAPConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteXblAPConfigParams()
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
		ID:                 "deleteXblAPConfig",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteXblAPConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteXblAPConfigNoContent:
		response := &DeleteXblAPConfigResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateXblBPCertFileShort upload xbl business partner cert file
Upload xbl business partner cert file.
Other detail info:
              * Returns : updated xbl iap config
*/
func (a *Client) UpdateXblBPCertFileShort(params *UpdateXblBPCertFileParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateXblBPCertFileResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateXblBPCertFileParams()
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
		ID:                 "updateXblBPCertFile",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/xbl/cert",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateXblBPCertFileReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateXblBPCertFileOK:
		response := &UpdateXblBPCertFileResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateXblBPCertFileBadRequest:
		response := &UpdateXblBPCertFileResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAbnormalTransactionsShort query steam abnormal transactions

*/
func (a *Client) QueryAbnormalTransactionsShort(params *QueryAbnormalTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAbnormalTransactionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAbnormalTransactionsParams()
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
		ID:                 "queryAbnormalTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/abnormal_transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAbnormalTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAbnormalTransactionsOK:
		response := &QueryAbnormalTransactionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetSteamJobInfoShort query steam report job info
Query steam report info
*/
func (a *Client) AdminGetSteamJobInfoShort(params *AdminGetSteamJobInfoParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetSteamJobInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetSteamJobInfoParams()
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
		ID:                 "adminGetSteamJobInfo",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/job",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetSteamJobInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetSteamJobInfoOK:
		response := &AdminGetSteamJobInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminResetSteamJobTimeShort reset steam report job with a special time

*/
func (a *Client) AdminResetSteamJobTimeShort(params *AdminResetSteamJobTimeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminResetSteamJobTimeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminResetSteamJobTimeParams()
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
		ID:                 "adminResetSteamJobTime",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/job/reset",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminResetSteamJobTimeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminResetSteamJobTimeOK:
		response := &AdminResetSteamJobTimeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRefundIAPOrderShort refund iap order
Only support steam transaction mode
*/
func (a *Client) AdminRefundIAPOrderShort(params *AdminRefundIAPOrderParams, authInfo runtime.ClientAuthInfoWriter) (*AdminRefundIAPOrderResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRefundIAPOrderParams()
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
		ID:                 "adminRefundIAPOrder",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRefundIAPOrderReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRefundIAPOrderOK:
		response := &AdminRefundIAPOrderResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminRefundIAPOrderNoContent:
		response := &AdminRefundIAPOrderResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminRefundIAPOrderBadRequest:
		response := &AdminRefundIAPOrderResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRefundIAPOrderNotFound:
		response := &AdminRefundIAPOrderResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRefundIAPOrderConflict:
		response := &AdminRefundIAPOrderResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QuerySteamReportHistoriesShort get iap steam report process histories, default sort by created at

*/
func (a *Client) QuerySteamReportHistoriesShort(params *QuerySteamReportHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySteamReportHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySteamReportHistoriesParams()
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
		ID:                 "querySteamReportHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/steam/report/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySteamReportHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySteamReportHistoriesOK:
		response := &QuerySteamReportHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIAPOrderConsumeDetailsShort get iap order consume details by iap order number.
Get IAP Order Consume Details by IAP Order Number.
*/
func (a *Client) GetIAPOrderConsumeDetailsShort(params *GetIAPOrderConsumeDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPOrderConsumeDetailsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIAPOrderConsumeDetailsParams()
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
		ID:                 "getIAPOrderConsumeDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/{iapOrderNo}/consumedetails",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIAPOrderConsumeDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIAPOrderConsumeDetailsOK:
		response := &GetIAPOrderConsumeDetailsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserIAPOrdersShort query iap orders
Query IAP orders.
Other detail info:
              * Returns : paginated iap orders
*/
func (a *Client) QueryUserIAPOrdersShort(params *QueryUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPOrdersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserIAPOrdersParams()
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
		ID:                 "queryUserIAPOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserIAPOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserIAPOrdersOK:
		response := &QueryUserIAPOrdersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAllUserIAPOrdersShort query all user iap orders
Query all user IAP orders.
Other detail info:
              * Returns : list of iap orders
*/
func (a *Client) QueryAllUserIAPOrdersShort(params *QueryAllUserIAPOrdersParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAllUserIAPOrdersResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAllUserIAPOrdersParams()
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
		ID:                 "queryAllUserIAPOrders",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/all",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAllUserIAPOrdersReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAllUserIAPOrdersOK:
		response := &QueryAllUserIAPOrdersResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserIAPConsumeHistoryShort query iap consume history
Query IAP consume history.
Other detail info:
              * Returns : paginated iap consume history
*/
func (a *Client) QueryUserIAPConsumeHistoryShort(params *QueryUserIAPConsumeHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserIAPConsumeHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserIAPConsumeHistoryParams()
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
		ID:                 "queryUserIAPConsumeHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/consume/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserIAPConsumeHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserIAPConsumeHistoryOK:
		response := &QueryUserIAPConsumeHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MockFulfillIAPItemShort mock fulfill iap item.
 [TEST FACILITY ONLY] Forbidden in live environment. Mock fulfill iap item without validate receipt.Other detail info:
              * Returns :
*/
func (a *Client) MockFulfillIAPItemShort(params *MockFulfillIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*MockFulfillIAPItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMockFulfillIAPItemParams()
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
		ID:                 "mockFulfillIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MockFulfillIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MockFulfillIAPItemNoContent:
		response := &MockFulfillIAPItemResponse{}

		response.IsSuccess = true

		return response, nil
	case *MockFulfillIAPItemBadRequest:
		response := &MockFulfillIAPItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MockFulfillIAPItemNotFound:
		response := &MockFulfillIAPItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MockFulfillIAPItemConflict:
		response := &MockFulfillIAPItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetIAPOrderLineItemsShort query iap order line items
Query IAP order ine items.
Other detail info:
              * Returns : paginated iap orders
*/
func (a *Client) AdminGetIAPOrderLineItemsShort(params *AdminGetIAPOrderLineItemsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetIAPOrderLineItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetIAPOrderLineItemsParams()
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
		ID:                 "adminGetIAPOrderLineItems",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/orders/{iapOrderNo}/line_items",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetIAPOrderLineItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetIAPOrderLineItemsOK:
		response := &AdminGetIAPOrderLineItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncSteamAbnormalTransactionShort sync abnormal transaction, sync steam order by transaction. only works when steam sync mode is transaction.

*/
func (a *Client) AdminSyncSteamAbnormalTransactionShort(params *AdminSyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamAbnormalTransactionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncSteamAbnormalTransactionParams()
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
		ID:                 "adminSyncSteamAbnormalTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncSteamAbnormalTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncSteamAbnormalTransactionOK:
		response := &AdminSyncSteamAbnormalTransactionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSyncSteamAbnormalTransactionBadRequest:
		response := &AdminSyncSteamAbnormalTransactionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncSteamAbnormalTransactionNotFound:
		response := &AdminSyncSteamAbnormalTransactionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncSteamAbnormalTransactionConflict:
		response := &AdminSyncSteamAbnormalTransactionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncSteamIAPByTransactionShort manual sync steam transaction. only works when steam sync mode is transaction.

*/
func (a *Client) AdminSyncSteamIAPByTransactionShort(params *AdminSyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncSteamIAPByTransactionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncSteamIAPByTransactionParams()
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
		ID:                 "adminSyncSteamIAPByTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncSteamIAPByTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncSteamIAPByTransactionOK:
		response := &AdminSyncSteamIAPByTransactionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSyncSteamIAPByTransactionBadRequest:
		response := &AdminSyncSteamIAPByTransactionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncSteamIAPByTransactionNotFound:
		response := &AdminSyncSteamIAPByTransactionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminSyncSteamIAPByTransactionConflict:
		response := &AdminSyncSteamIAPByTransactionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAppleConfigVersionShort get apple config version
Get apple config version.
*/
func (a *Client) GetAppleConfigVersionShort(params *GetAppleConfigVersionParams, authInfo runtime.ClientAuthInfoWriter) (*GetAppleConfigVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAppleConfigVersionParams()
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
		ID:                 "getAppleConfigVersion",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/iap/apple/config/version",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAppleConfigVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAppleConfigVersionOK:
		response := &GetAppleConfigVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAppleConfigVersionNotFound:
		response := &GetAppleConfigVersionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetIAPItemMappingShort get iap item mapping
Get iap item mapping.
*/
func (a *Client) GetIAPItemMappingShort(params *GetIAPItemMappingParams, authInfo runtime.ClientAuthInfoWriter) (*GetIAPItemMappingResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetIAPItemMappingParams()
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
		ID:                 "getIAPItemMapping",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/iap/item/mapping",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetIAPItemMappingReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetIAPItemMappingOK:
		response := &GetIAPItemMappingResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetIAPItemMappingNotFound:
		response := &GetIAPItemMappingResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncTwitchDropsEntitlementShort sync my game twitch drops entitlements.
Sync my game twitch drops entitlements.
*/
func (a *Client) SyncTwitchDropsEntitlementShort(params *SyncTwitchDropsEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncTwitchDropsEntitlementParams()
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
		ID:                 "syncTwitchDropsEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/iap/twitch/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncTwitchDropsEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncTwitchDropsEntitlementOK:
		response := &SyncTwitchDropsEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncTwitchDropsEntitlementBadRequest:
		response := &SyncTwitchDropsEntitlementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicFulfillAppleIAPItemShort fulfill apple iap item.
Verify apple iap receipt and fulfill item. don't support subscriptionOther detail info:
              * Returns :
*/
func (a *Client) PublicFulfillAppleIAPItemShort(params *PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillAppleIAPItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicFulfillAppleIAPItemParams()
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
		ID:                 "publicFulfillAppleIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicFulfillAppleIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicFulfillAppleIAPItemNoContent:
		response := &PublicFulfillAppleIAPItemResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicFulfillAppleIAPItemBadRequest:
		response := &PublicFulfillAppleIAPItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicFulfillAppleIAPItemNotFound:
		response := &PublicFulfillAppleIAPItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicFulfillAppleIAPItemConflict:
		response := &PublicFulfillAppleIAPItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncEpicGamesInventoryShort sync epic games inventory.
Sync epic games inventory's items.Other detail info:
              * Returns :
*/
func (a *Client) SyncEpicGamesInventoryShort(params *SyncEpicGamesInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncEpicGamesInventoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncEpicGamesInventoryParams()
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
		ID:                 "syncEpicGamesInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/epicgames/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncEpicGamesInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncEpicGamesInventoryOK:
		response := &SyncEpicGamesInventoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncEpicGamesInventoryBadRequest:
		response := &SyncEpicGamesInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncEpicGamesInventoryNotFound:
		response := &SyncEpicGamesInventoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicFulfillGoogleIAPItemShort fulfill google iap item.
Verify google iap receipt and fulfill item.Other detail info:
              * Returns :
*/
func (a *Client) PublicFulfillGoogleIAPItemShort(params *PublicFulfillGoogleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*PublicFulfillGoogleIAPItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicFulfillGoogleIAPItemParams()
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
		ID:                 "publicFulfillGoogleIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/google/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicFulfillGoogleIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicFulfillGoogleIAPItemOK:
		response := &PublicFulfillGoogleIAPItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicFulfillGoogleIAPItemBadRequest:
		response := &PublicFulfillGoogleIAPItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicFulfillGoogleIAPItemNotFound:
		response := &PublicFulfillGoogleIAPItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicFulfillGoogleIAPItemConflict:
		response := &PublicFulfillGoogleIAPItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncOculusConsumableEntitlementsShort sync oculus entitlements.
Sync Oculus entitlements.Other detail info:
              * Returns :
*/
func (a *Client) SyncOculusConsumableEntitlementsShort(params *SyncOculusConsumableEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*SyncOculusConsumableEntitlementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncOculusConsumableEntitlementsParams()
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
		ID:                 "syncOculusConsumableEntitlements",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/oculus/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncOculusConsumableEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncOculusConsumableEntitlementsOK:
		response := &SyncOculusConsumableEntitlementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncOculusConsumableEntitlementsBadRequest:
		response := &SyncOculusConsumableEntitlementsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncOculusConsumableEntitlementsNotFound:
		response := &SyncOculusConsumableEntitlementsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReconcilePlayStationStoreShort synchronize with entitlements in psn store.
Synchronize with entitlements in PSN Store.Other detail info:
              * Returns : result of synchronization
*/
func (a *Client) PublicReconcilePlayStationStoreShort(params *PublicReconcilePlayStationStoreParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReconcilePlayStationStoreParams()
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
		ID:                 "publicReconcilePlayStationStore",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReconcilePlayStationStoreReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReconcilePlayStationStoreOK:
		response := &PublicReconcilePlayStationStoreResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicReconcilePlayStationStoreBadRequest:
		response := &PublicReconcilePlayStationStoreResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReconcilePlayStationStoreNotFound:
		response := &PublicReconcilePlayStationStoreResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort synchronize with entitlements in psn store with multiple service labels.
Synchronize with entitlements in PSN Store with multiple service labels.Other detail info:
              * Returns : result of synchronization
*/
func (a *Client) PublicReconcilePlayStationStoreWithMultipleServiceLabelsShort(params *PublicReconcilePlayStationStoreWithMultipleServiceLabelsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicReconcilePlayStationStoreWithMultipleServiceLabelsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicReconcilePlayStationStoreWithMultipleServiceLabelsParams()
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
		ID:                 "publicReconcilePlayStationStoreWithMultipleServiceLabels",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/psn/sync/multiServiceLabels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicReconcilePlayStationStoreWithMultipleServiceLabelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsOK:
		response := &PublicReconcilePlayStationStoreWithMultipleServiceLabelsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsBadRequest:
		response := &PublicReconcilePlayStationStoreWithMultipleServiceLabelsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicReconcilePlayStationStoreWithMultipleServiceLabelsNotFound:
		response := &PublicReconcilePlayStationStoreWithMultipleServiceLabelsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamInventoryShort sync steam inventory.
Sync steam inventory's items.Other detail info:
              * Returns :
*/
func (a *Client) SyncSteamInventoryShort(params *SyncSteamInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamInventoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamInventoryParams()
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
		ID:                 "syncSteamInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/steam/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSteamInventoryNoContent:
		response := &SyncSteamInventoryResponse{}

		response.IsSuccess = true

		return response, nil
	case *SyncSteamInventoryBadRequest:
		response := &SyncSteamInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncSteamInventoryNotFound:
		response := &SyncSteamInventoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamAbnormalTransactionShort sync abnormal transaction, sync steam order by transaction. only works when steam sync mode is transaction.

*/
func (a *Client) SyncSteamAbnormalTransactionShort(params *SyncSteamAbnormalTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamAbnormalTransactionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamAbnormalTransactionParams()
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
		ID:                 "syncSteamAbnormalTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncAbnormalTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamAbnormalTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSteamAbnormalTransactionOK:
		response := &SyncSteamAbnormalTransactionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncSteamAbnormalTransactionBadRequest:
		response := &SyncSteamAbnormalTransactionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncSteamAbnormalTransactionNotFound:
		response := &SyncSteamAbnormalTransactionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncSteamAbnormalTransactionConflict:
		response := &SyncSteamAbnormalTransactionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSteamIAPByTransactionShort sync steam in app purchase by transaction.
Sync steam in app purchase by transaction.Other detail info:
              * Returns :
*/
func (a *Client) SyncSteamIAPByTransactionShort(params *SyncSteamIAPByTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSteamIAPByTransactionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSteamIAPByTransactionParams()
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
		ID:                 "syncSteamIAPByTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/steam/syncByTransaction",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSteamIAPByTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSteamIAPByTransactionOK:
		response := &SyncSteamIAPByTransactionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncSteamIAPByTransactionBadRequest:
		response := &SyncSteamIAPByTransactionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncSteamIAPByTransactionNotFound:
		response := &SyncSteamIAPByTransactionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncSteamIAPByTransactionConflict:
		response := &SyncSteamIAPByTransactionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncTwitchDropsEntitlement1Short sync twitch drops entitlements.
Sync twitch drops entitlements.Other detail info:
              * Returns :
*/
func (a *Client) SyncTwitchDropsEntitlement1Short(params *SyncTwitchDropsEntitlement1Params, authInfo runtime.ClientAuthInfoWriter) (*SyncTwitchDropsEntitlement1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncTwitchDropsEntitlement1Params()
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
		ID:                 "syncTwitchDropsEntitlement_1",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/twitch/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncTwitchDropsEntitlement1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncTwitchDropsEntitlement1NoContent:
		response := &SyncTwitchDropsEntitlement1Response{}

		response.IsSuccess = true

		return response, nil
	case *SyncTwitchDropsEntitlement1BadRequest:
		response := &SyncTwitchDropsEntitlement1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncXboxInventoryShort sync xbox inventory.
Sync Xbox inventory's items.Other detail info:
              * Returns :
*/
func (a *Client) SyncXboxInventoryShort(params *SyncXboxInventoryParams, authInfo runtime.ClientAuthInfoWriter) (*SyncXboxInventoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncXboxInventoryParams()
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
		ID:                 "syncXboxInventory",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/xbl/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncXboxInventoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncXboxInventoryOK:
		response := &SyncXboxInventoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncXboxInventoryBadRequest:
		response := &SyncXboxInventoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncXboxInventoryNotFound:
		response := &SyncXboxInventoryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
V2PublicFulfillAppleIAPItemShort fulfill apple iap item v2.
Verify apple iap transaction and fulfill item, support subscriptionOther detail info:
              * Returns :
*/
func (a *Client) V2PublicFulfillAppleIAPItemShort(params *V2PublicFulfillAppleIAPItemParams, authInfo runtime.ClientAuthInfoWriter) (*V2PublicFulfillAppleIAPItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewV2PublicFulfillAppleIAPItemParams()
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
		ID:                 "V2PublicFulfillAppleIAPItem",
		Method:             "PUT",
		PathPattern:        "/platform/v2/public/namespaces/{namespace}/users/{userId}/iap/apple/receipt",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &V2PublicFulfillAppleIAPItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *V2PublicFulfillAppleIAPItemNoContent:
		response := &V2PublicFulfillAppleIAPItemResponse{}

		response.IsSuccess = true

		return response, nil
	case *V2PublicFulfillAppleIAPItemBadRequest:
		response := &V2PublicFulfillAppleIAPItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *V2PublicFulfillAppleIAPItemNotFound:
		response := &V2PublicFulfillAppleIAPItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *V2PublicFulfillAppleIAPItemConflict:
		response := &V2PublicFulfillAppleIAPItemResponse{}
		response.Error409 = v.Payload

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
