// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new entitlement API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for entitlement API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryEntitlementsShort(params *QueryEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsResponse, error)
	QueryEntitlementsByItemIdsShort(params *QueryEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsByItemIdsResponse, error)
	EnableEntitlementOriginFeatureShort(params *EnableEntitlementOriginFeatureParams, authInfo runtime.ClientAuthInfoWriter) (*EnableEntitlementOriginFeatureResponse, error)
	GetEntitlementConfigInfoShort(params *GetEntitlementConfigInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementConfigInfoResponse, error)
	GrantEntitlementsShort(params *GrantEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*GrantEntitlementsResponse, error)
	RevokeEntitlementsShort(params *RevokeEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeEntitlementsResponse, error)
	GetEntitlementShort(params *GetEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementResponse, error)
	GetPlatformEntitlementConfigShort(params *GetPlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformEntitlementConfigResponse, error)
	UpdatePlatformEntitlementConfigShort(params *UpdatePlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformEntitlementConfigResponse, error)
	QueryUserEntitlementsShort(params *QueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsResponse, error)
	GrantUserEntitlementShort(params *GrantUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserEntitlementResponse, error)
	GetUserAppEntitlementByAppIDShort(params *GetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementByAppIDResponse, error)
	QueryUserEntitlementsByAppTypeShort(params *QueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsByAppTypeResponse, error)
	GetUserEntitlementsByIdsShort(params *GetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementsByIdsResponse, error)
	GetUserEntitlementByItemIDShort(params *GetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementByItemIDResponse, error)
	GetUserActiveEntitlementsByItemIdsShort(params *GetUserActiveEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserActiveEntitlementsByItemIdsResponse, error)
	GetUserEntitlementBySkuShort(params *GetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementBySkuResponse, error)
	ExistsAnyUserActiveEntitlementShort(params *ExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementResponse, error)
	ExistsAnyUserActiveEntitlementByItemIdsShort(params *ExistsAnyUserActiveEntitlementByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementByItemIdsResponse, error)
	GetUserAppEntitlementOwnershipByAppIDShort(params *GetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementOwnershipByAppIDResponse, error)
	GetUserEntitlementOwnershipByItemIDShort(params *GetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIDResponse, error)
	GetUserEntitlementOwnershipByItemIdsShort(params *GetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIdsResponse, error)
	GetUserEntitlementOwnershipBySkuShort(params *GetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipBySkuResponse, error)
	RevokeAllEntitlementsShort(params *RevokeAllEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAllEntitlementsResponse, error)
	RevokeUserEntitlementsShort(params *RevokeUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementsResponse, error)
	GetUserEntitlementShort(params *GetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementResponse, error)
	UpdateUserEntitlementShort(params *UpdateUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserEntitlementResponse, error)
	ConsumeUserEntitlementShort(params *ConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ConsumeUserEntitlementResponse, error)
	DisableUserEntitlementShort(params *DisableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserEntitlementResponse, error)
	EnableUserEntitlementShort(params *EnableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserEntitlementResponse, error)
	GetUserEntitlementHistoriesShort(params *GetUserEntitlementHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementHistoriesResponse, error)
	RevokeUserEntitlementShort(params *RevokeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementResponse, error)
	RevokeUserEntitlementByUseCountShort(params *RevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementByUseCountResponse, error)
	PreCheckRevokeUserEntitlementByUseCountShort(params *PreCheckRevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckRevokeUserEntitlementByUseCountResponse, error)
	RevokeUseCountShort(params *RevokeUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUseCountResponse, error)
	SellUserEntitlementShort(params *SellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SellUserEntitlementResponse, error)
	PublicExistsAnyMyActiveEntitlementShort(params *PublicExistsAnyMyActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyMyActiveEntitlementResponse, error)
	PublicGetMyAppEntitlementOwnershipByAppIDShort(params *PublicGetMyAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAppEntitlementOwnershipByAppIDResponse, error)
	PublicGetMyEntitlementOwnershipByItemIDShort(params *PublicGetMyEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipByItemIDResponse, error)
	PublicGetMyEntitlementOwnershipBySkuShort(params *PublicGetMyEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipBySkuResponse, error)
	PublicGetEntitlementOwnershipTokenShort(params *PublicGetEntitlementOwnershipTokenParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEntitlementOwnershipTokenResponse, error)
	PublicQueryUserEntitlementsShort(params *PublicQueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsResponse, error)
	PublicGetUserAppEntitlementByAppIDShort(params *PublicGetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementByAppIDResponse, error)
	PublicQueryUserEntitlementsByAppTypeShort(params *PublicQueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsByAppTypeResponse, error)
	PublicGetUserEntitlementsByIdsShort(params *PublicGetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementsByIdsResponse, error)
	PublicGetUserEntitlementByItemIDShort(params *PublicGetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementByItemIDResponse, error)
	PublicGetUserEntitlementBySkuShort(params *PublicGetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementBySkuResponse, error)
	PublicUserEntitlementHistoryShort(params *PublicUserEntitlementHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUserEntitlementHistoryResponse, error)
	PublicExistsAnyUserActiveEntitlementShort(params *PublicExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyUserActiveEntitlementResponse, error)
	PublicGetUserAppEntitlementOwnershipByAppIDShort(params *PublicGetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementOwnershipByAppIDResponse, error)
	PublicGetUserEntitlementOwnershipByItemIDShort(params *PublicGetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIDResponse, error)
	PublicGetUserEntitlementOwnershipByItemIdsShort(params *PublicGetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIdsResponse, error)
	PublicGetUserEntitlementOwnershipBySkuShort(params *PublicGetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipBySkuResponse, error)
	PublicGetUserEntitlementShort(params *PublicGetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementResponse, error)
	PublicConsumeUserEntitlementShort(params *PublicConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeUserEntitlementResponse, error)
	PublicSellUserEntitlementShort(params *PublicSellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSellUserEntitlementResponse, error)
	PublicSplitUserEntitlementShort(params *PublicSplitUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSplitUserEntitlementResponse, error)
	PublicTransferUserEntitlementShort(params *PublicTransferUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTransferUserEntitlementResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryEntitlementsShort query entitlements
Query entitlements.

Other detail info:

  - Returns : entitlement list
*/
func (a *Client) QueryEntitlementsShort(params *QueryEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryEntitlementsParams()
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
		ID:                 "queryEntitlements",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryEntitlementsOK:
		response := &QueryEntitlementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryEntitlementsByItemIdsShort query entitlements by item ids
Query entitlements by Item Ids.

Other detail info:

  - Returns : entitlement list
*/
func (a *Client) QueryEntitlementsByItemIdsShort(params *QueryEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryEntitlementsByItemIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryEntitlementsByItemIdsParams()
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
		ID:                 "queryEntitlementsByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryEntitlementsByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryEntitlementsByItemIdsOK:
		response := &QueryEntitlementsByItemIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableEntitlementOriginFeatureShort enable entitlement origin feature
Enable Entitlement origin feature.
Other detail info:

  - Returns : entitlement info
*/
func (a *Client) EnableEntitlementOriginFeatureShort(params *EnableEntitlementOriginFeatureParams, authInfo runtime.ClientAuthInfoWriter) (*EnableEntitlementOriginFeatureResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableEntitlementOriginFeatureParams()
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
		ID:                 "enableEntitlementOriginFeature",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/config/entitlementOrigin/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableEntitlementOriginFeatureReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableEntitlementOriginFeatureOK:
		response := &EnableEntitlementOriginFeatureResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEntitlementConfigInfoShort get entitlement config info
Get entitlement config info.
Other detail info:

  - Returns : entitlement info
*/
func (a *Client) GetEntitlementConfigInfoShort(params *GetEntitlementConfigInfoParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementConfigInfoResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEntitlementConfigInfoParams()
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
		ID:                 "getEntitlementConfigInfo",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/config/info",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEntitlementConfigInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEntitlementConfigInfoOK:
		response := &GetEntitlementConfigInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantEntitlementsShort grant entitlements to different users
Grant entitlements to multiple users, skipped granting will be treated as fail.

Notes:

Support Item Types:

  - APP
  - INGAMEITEM
  - CODE
  - SUBSCRIPTION
  - MEDIA
  - OPTIONBOX
  - LOOTBOX

Other detail info:
  - Returns : bulk grant entitlements result
*/
func (a *Client) GrantEntitlementsShort(params *GrantEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*GrantEntitlementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantEntitlementsParams()
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
		ID:                 "grantEntitlements",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/grant",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantEntitlementsOK:
		response := &GrantEntitlementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GrantEntitlementsUnprocessableEntity:
		response := &GrantEntitlementsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeEntitlementsShort revoke entitlements by ids
Revoke entitlements, skipped revocation will be treated as fail.
Other detail info:

  - Returns : bulk revoke entitlements result
*/
func (a *Client) RevokeEntitlementsShort(params *RevokeEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeEntitlementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeEntitlementsParams()
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
		ID:                 "revokeEntitlements",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeEntitlementsOK:
		response := &RevokeEntitlementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RevokeEntitlementsUnprocessableEntity:
		response := &RevokeEntitlementsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetEntitlementShort get entitlement
Get entitlement.

Other detail info:

  - Returns : entitlement
*/
func (a *Client) GetEntitlementShort(params *GetEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetEntitlementParams()
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
		ID:                 "getEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetEntitlementOK:
		response := &GetEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetEntitlementNotFound:
		response := &GetEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlatformEntitlementConfigShort get platform entitlement config list
Get platform entitlement config list.
Other detail info:

  - Returns : entitlement info
*/
func (a *Client) GetPlatformEntitlementConfigShort(params *GetPlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlatformEntitlementConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlatformEntitlementConfigParams()
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
		ID:                 "getPlatformEntitlementConfig",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/entitlement/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlatformEntitlementConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlatformEntitlementConfigOK:
		response := &GetPlatformEntitlementConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePlatformEntitlementConfigShort update platform entitlement config
Update platform entitlement config.
Other detail info:

  - Returns : platform entitlement config
*/
func (a *Client) UpdatePlatformEntitlementConfigShort(params *UpdatePlatformEntitlementConfigParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePlatformEntitlementConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePlatformEntitlementConfigParams()
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
		ID:                 "updatePlatformEntitlementConfig",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/platforms/{platform}/entitlement/config",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePlatformEntitlementConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePlatformEntitlementConfigOK:
		response := &UpdatePlatformEntitlementConfigResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePlatformEntitlementConfigNotFound:
		response := &UpdatePlatformEntitlementConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserEntitlementsShort query user entitlements
Query entitlements for a specific user.

Other detail info:

  - Returns : entitlement list
*/
func (a *Client) QueryUserEntitlementsShort(params *QueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserEntitlementsParams()
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
		ID:                 "queryUserEntitlements",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserEntitlementsOK:
		response := &QueryUserEntitlementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GrantUserEntitlementShort grant user entitlement
Grant user entitlement.

Notes:

will skip un-supported item if input un-supported item types, please use /admin/namespaces/{namespace}/users/{userId}/fulfillment endpoint if want to fulfill other item type, like coin item

Support Item Types:

  - APP
  - INGAMEITEM
  - CODE
  - SUBSCRIPTION
  - MEDIA
  - OPTIONBOX
  - LOOTBOX

Other detail info:
  - Returns : granted entitlement
*/
func (a *Client) GrantUserEntitlementShort(params *GrantUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GrantUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGrantUserEntitlementParams()
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
		ID:                 "grantUserEntitlement",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GrantUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GrantUserEntitlementCreated:
		response := &GrantUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GrantUserEntitlementNotFound:
		response := &GrantUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GrantUserEntitlementUnprocessableEntity:
		response := &GrantUserEntitlementResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserAppEntitlementByAppIDShort get user app entitlement by appid
Get user app entitlement by appId.
*/
func (a *Client) GetUserAppEntitlementByAppIDShort(params *GetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementByAppIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserAppEntitlementByAppIDParams()
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
		ID:                 "getUserAppEntitlementByAppId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserAppEntitlementByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserAppEntitlementByAppIDOK:
		response := &GetUserAppEntitlementByAppIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserAppEntitlementByAppIDNotFound:
		response := &GetUserAppEntitlementByAppIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserEntitlementsByAppTypeShort query app entitlements by apptype
Query app entitlements by appType.

Other detail info:

  - Returns : app entitlement pagination
*/
func (a *Client) QueryUserEntitlementsByAppTypeShort(params *QueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserEntitlementsByAppTypeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserEntitlementsByAppTypeParams()
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
		ID:                 "queryUserEntitlementsByAppType",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byAppType",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserEntitlementsByAppTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserEntitlementsByAppTypeOK:
		response := &QueryUserEntitlementsByAppTypeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementsByIdsShort get user entitlements by ids.
Get user entitlements by ids. This will return all entitlements regardless of its status

Other detail info:

  - Returns : entitlement list
*/
func (a *Client) GetUserEntitlementsByIdsShort(params *GetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementsByIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementsByIdsParams()
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
		ID:                 "getUserEntitlementsByIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementsByIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementsByIdsOK:
		response := &GetUserEntitlementsByIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementByItemIDShort get user entitlement by itemid
Get user entitlement by itemId.
*/
func (a *Client) GetUserEntitlementByItemIDShort(params *GetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementByItemIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementByItemIDParams()
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
		ID:                 "getUserEntitlementByItemId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementByItemIDOK:
		response := &GetUserEntitlementByItemIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserEntitlementByItemIDNotFound:
		response := &GetUserEntitlementByItemIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserActiveEntitlementsByItemIdsShort get user entitlements by itemids
Get user entitlements by itemIds.
*/
func (a *Client) GetUserActiveEntitlementsByItemIdsShort(params *GetUserActiveEntitlementsByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserActiveEntitlementsByItemIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserActiveEntitlementsByItemIdsParams()
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
		ID:                 "getUserActiveEntitlementsByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserActiveEntitlementsByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserActiveEntitlementsByItemIdsOK:
		response := &GetUserActiveEntitlementsByItemIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementBySkuShort get user entitlement by sku
Get user entitlement by sku.
*/
func (a *Client) GetUserEntitlementBySkuShort(params *GetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementBySkuResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementBySkuParams()
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
		ID:                 "getUserEntitlementBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementBySkuOK:
		response := &GetUserEntitlementBySkuResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserEntitlementBySkuNotFound:
		response := &GetUserEntitlementBySkuResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExistsAnyUserActiveEntitlementShort exists any user active entitlement
Exists any user active entitlement of specified itemIds, skus and appIds
*/
func (a *Client) ExistsAnyUserActiveEntitlementShort(params *ExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExistsAnyUserActiveEntitlementParams()
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
		ID:                 "existsAnyUserActiveEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExistsAnyUserActiveEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExistsAnyUserActiveEntitlementOK:
		response := &ExistsAnyUserActiveEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExistsAnyUserActiveEntitlementByItemIdsShort exists any user active entitlement
Exists any user active entitlement of specified items.
*/
func (a *Client) ExistsAnyUserActiveEntitlementByItemIdsShort(params *ExistsAnyUserActiveEntitlementByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*ExistsAnyUserActiveEntitlementByItemIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExistsAnyUserActiveEntitlementByItemIdsParams()
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
		ID:                 "existsAnyUserActiveEntitlementByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/anyOf",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExistsAnyUserActiveEntitlementByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExistsAnyUserActiveEntitlementByItemIdsOK:
		response := &ExistsAnyUserActiveEntitlementByItemIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserAppEntitlementOwnershipByAppIDShort get user app entitlement ownership by appid
Get user app entitlement ownership by appId.
*/
func (a *Client) GetUserAppEntitlementOwnershipByAppIDShort(params *GetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserAppEntitlementOwnershipByAppIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserAppEntitlementOwnershipByAppIDParams()
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
		ID:                 "getUserAppEntitlementOwnershipByAppId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserAppEntitlementOwnershipByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserAppEntitlementOwnershipByAppIDOK:
		response := &GetUserAppEntitlementOwnershipByAppIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementOwnershipByItemIDShort get user entitlement ownership by itemid
Get user entitlement ownership by itemId.
*/
func (a *Client) GetUserEntitlementOwnershipByItemIDShort(params *GetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementOwnershipByItemIDParams()
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
		ID:                 "getUserEntitlementOwnershipByItemId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementOwnershipByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOwnershipByItemIDOK:
		response := &GetUserEntitlementOwnershipByItemIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementOwnershipByItemIdsShort get user entitlement ownership by itemids
Get user entitlement ownership by itemIds.
*/
func (a *Client) GetUserEntitlementOwnershipByItemIdsShort(params *GetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipByItemIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementOwnershipByItemIdsParams()
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
		ID:                 "getUserEntitlementOwnershipByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementOwnershipByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOwnershipByItemIdsOK:
		response := &GetUserEntitlementOwnershipByItemIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementOwnershipBySkuShort get user entitlement ownership by sku
Get user entitlement ownership by sku.
*/
func (a *Client) GetUserEntitlementOwnershipBySkuShort(params *GetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementOwnershipBySkuResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementOwnershipBySkuParams()
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
		ID:                 "getUserEntitlementOwnershipBySku",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementOwnershipBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOwnershipBySkuOK:
		response := &GetUserEntitlementOwnershipBySkuResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeAllEntitlementsShort revoke all entitlements of a user (this api is for testing purpose only)
Revoke all entitlements of a user (This API is for testing purpose only)
Other detail info:

  - Returns : revoked entitlements count
*/
func (a *Client) RevokeAllEntitlementsShort(params *RevokeAllEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeAllEntitlementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeAllEntitlementsParams()
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
		ID:                 "revokeAllEntitlements",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeAllEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeAllEntitlementsOK:
		response := &RevokeAllEntitlementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUserEntitlementsShort revoke user's entitlements by ids
Revoke user's entitlements by ids.
Other detail info:

  - Returns : revoke entitlements count
*/
func (a *Client) RevokeUserEntitlementsShort(params *RevokeUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserEntitlementsParams()
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
		ID:                 "revokeUserEntitlements",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/revoke/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserEntitlementsOK:
		response := &RevokeUserEntitlementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementShort get user entitlement
Get user entitlement.

Other detail info:

  - Returns : entitlement
*/
func (a *Client) GetUserEntitlementShort(params *GetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementParams()
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
		ID:                 "getUserEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementOK:
		response := &GetUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetUserEntitlementNotFound:
		response := &GetUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateUserEntitlementShort update user entitlement
Update user entitlement. If update CONSUMABLE entitlement useCount to 0, the status will be CONSUMED.
Other detail info:

  - Returns : updated entitlement
*/
func (a *Client) UpdateUserEntitlementShort(params *UpdateUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateUserEntitlementParams()
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
		ID:                 "updateUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateUserEntitlementOK:
		response := &UpdateUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateUserEntitlementNotFound:
		response := &UpdateUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserEntitlementConflict:
		response := &UpdateUserEntitlementResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateUserEntitlementUnprocessableEntity:
		response := &UpdateUserEntitlementResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ConsumeUserEntitlementShort consume user entitlement
Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED.
Other detail info:

  - Returns : consumed entitlement
*/
func (a *Client) ConsumeUserEntitlementShort(params *ConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*ConsumeUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewConsumeUserEntitlementParams()
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
		ID:                 "consumeUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ConsumeUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ConsumeUserEntitlementOK:
		response := &ConsumeUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ConsumeUserEntitlementBadRequest:
		response := &ConsumeUserEntitlementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ConsumeUserEntitlementNotFound:
		response := &ConsumeUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ConsumeUserEntitlementConflict:
		response := &ConsumeUserEntitlementResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DisableUserEntitlementShort disable user entitlement
Disable user entitlement if entitlement, only active entitlement can be disable, disabled entitlement can't consume.

	Like revoke, it will lose the entitlement ownership, except disabled entitlement can enable.

Other detail info:

  - Returns : disable entitlement
*/
func (a *Client) DisableUserEntitlementShort(params *DisableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*DisableUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDisableUserEntitlementParams()
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
		ID:                 "disableUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/disable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DisableUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DisableUserEntitlementOK:
		response := &DisableUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *DisableUserEntitlementNotFound:
		response := &DisableUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DisableUserEntitlementConflict:
		response := &DisableUserEntitlementResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
EnableUserEntitlementShort enable user entitlement
Enable user entitlement.
Other detail info:

  - Returns : enable entitlement
*/
func (a *Client) EnableUserEntitlementShort(params *EnableUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*EnableUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewEnableUserEntitlementParams()
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
		ID:                 "enableUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/enable",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &EnableUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *EnableUserEntitlementOK:
		response := &EnableUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *EnableUserEntitlementNotFound:
		response := &EnableUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *EnableUserEntitlementConflict:
		response := &EnableUserEntitlementResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetUserEntitlementHistoriesShort get user entitlement history
Get user entitlement histories.

Other detail info:

  - Returns : list of entitlement history
*/
func (a *Client) GetUserEntitlementHistoriesShort(params *GetUserEntitlementHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*GetUserEntitlementHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetUserEntitlementHistoriesParams()
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
		ID:                 "getUserEntitlementHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetUserEntitlementHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetUserEntitlementHistoriesOK:
		response := &GetUserEntitlementHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUserEntitlementShort revoke user entitlement
Revoke user entitlement.
Other detail info:

  - Returns : revoke entitlement
*/
func (a *Client) RevokeUserEntitlementShort(params *RevokeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserEntitlementParams()
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
		ID:                 "revokeUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserEntitlementOK:
		response := &RevokeUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RevokeUserEntitlementNotFound:
		response := &RevokeUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUserEntitlementByUseCountShort revoke specified count of user entitlement.
Revoke specified count of user entitlement.
Other detail info:

  - Returns : The revoked entitlement
*/
func (a *Client) RevokeUserEntitlementByUseCountShort(params *RevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserEntitlementByUseCountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserEntitlementByUseCountParams()
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
		ID:                 "revokeUserEntitlementByUseCount",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserEntitlementByUseCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserEntitlementByUseCountOK:
		response := &RevokeUserEntitlementByUseCountResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RevokeUserEntitlementByUseCountNotFound:
		response := &RevokeUserEntitlementByUseCountResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PreCheckRevokeUserEntitlementByUseCountShort check if specified count of user entitlement can be revoked
Checks if specified use count of user entitlement can be revoked without actually revoking it.
Other detail info:

  - Returns : true if revokable, false otherwise
*/
func (a *Client) PreCheckRevokeUserEntitlementByUseCountShort(params *PreCheckRevokeUserEntitlementByUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckRevokeUserEntitlementByUseCountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPreCheckRevokeUserEntitlementByUseCountParams()
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
		ID:                 "preCheckRevokeUserEntitlementByUseCount",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revoke/byUseCount/preCheck",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PreCheckRevokeUserEntitlementByUseCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PreCheckRevokeUserEntitlementByUseCountOK:
		response := &PreCheckRevokeUserEntitlementByUseCountResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PreCheckRevokeUserEntitlementByUseCountNotFound:
		response := &PreCheckRevokeUserEntitlementByUseCountResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUseCountShort revoke specified use count of user entitlement
Revoke specified use count of user entitlement. please use /{entitlementId}/revoke/byUseCount endpoint instead of this endpoint
Other detail info:

  - Returns : revoke entitlement
*/
func (a *Client) RevokeUseCountShort(params *RevokeUseCountParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeUseCountResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUseCountParams()
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
		ID:                 "revokeUseCount",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/revokeByUseCount",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUseCountReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUseCountOK:
		response := &RevokeUseCountResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RevokeUseCountNotFound:
		response := &RevokeUseCountResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SellUserEntitlementShort sell user entitlement
Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:
  - Returns : entitlement
*/
func (a *Client) SellUserEntitlementShort(params *SellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*SellUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSellUserEntitlementParams()
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
		ID:                 "sellUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SellUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SellUserEntitlementOK:
		response := &SellUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SellUserEntitlementNotFound:
		response := &SellUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SellUserEntitlementConflict:
		response := &SellUserEntitlementResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicExistsAnyMyActiveEntitlementShort exists any my active entitlement
Exists any my active entitlement of specified itemIds, skus and appIds
*/
func (a *Client) PublicExistsAnyMyActiveEntitlementShort(params *PublicExistsAnyMyActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyMyActiveEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicExistsAnyMyActiveEntitlementParams()
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
		ID:                 "publicExistsAnyMyActiveEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicExistsAnyMyActiveEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicExistsAnyMyActiveEntitlementOK:
		response := &PublicExistsAnyMyActiveEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyAppEntitlementOwnershipByAppIDShort get my app entitlement ownership by appid
Get my app entitlement ownership by appId.

Other detail info:

  - Path's namespace :
  - can be filled with publisher namespace in order to get publisher namespace app entitlement ownership
*/
func (a *Client) PublicGetMyAppEntitlementOwnershipByAppIDShort(params *PublicGetMyAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyAppEntitlementOwnershipByAppIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyAppEntitlementOwnershipByAppIDParams()
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
		ID:                 "publicGetMyAppEntitlementOwnershipByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyAppEntitlementOwnershipByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyAppEntitlementOwnershipByAppIDOK:
		response := &PublicGetMyAppEntitlementOwnershipByAppIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyEntitlementOwnershipByItemIDShort get my entitlement ownership by itemid
Get my entitlement ownership by itemId.

Other detail info:

  - Path's namespace :
  - can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
  - can be filled with game namespace in order to get game namespace entitlement ownership by sku
*/
func (a *Client) PublicGetMyEntitlementOwnershipByItemIDShort(params *PublicGetMyEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipByItemIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyEntitlementOwnershipByItemIDParams()
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
		ID:                 "publicGetMyEntitlementOwnershipByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyEntitlementOwnershipByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyEntitlementOwnershipByItemIDOK:
		response := &PublicGetMyEntitlementOwnershipByItemIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetMyEntitlementOwnershipBySkuShort get my entitlement ownership by sku
Get my entitlement ownership by sku.

Other detail info:

  - Path's namespace :
  - can be filled with publisher namespace in order to get publisher namespace entitlement ownership by sku
  - can be filled with game namespace in order to get game namespace entitlement ownership by sku
*/
func (a *Client) PublicGetMyEntitlementOwnershipBySkuShort(params *PublicGetMyEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetMyEntitlementOwnershipBySkuResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetMyEntitlementOwnershipBySkuParams()
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
		ID:                 "publicGetMyEntitlementOwnershipBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownership/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetMyEntitlementOwnershipBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetMyEntitlementOwnershipBySkuOK:
		response := &PublicGetMyEntitlementOwnershipBySkuResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetEntitlementOwnershipTokenShort gets an entitlement ownership token
Gets an entitlement ownership token of specified itemIds, skus and appIds

The decoded ownership token header like below:

	{

	  "kid": "9fd4cd5f991cebe3323605cd12d3b8bfdfc73fa4",

	  "typ": "JWT",

	  "alg": "RS256"

	}

That you can get the jwks by api /platform/jwks, if the configured private key is same as IAM,

you can also get jwks from IAM endpoint.

The decoded ownership token payload like below:

	{

	 "namespace": "accelbyte",

	 "entitlements": [

	  {

	    "itemId": "4c1296291f604c199f7bb7f0ee02e5f8",

	    "appType": null,

	    "appId": null,

	    "namespace": "accelbyte",

	    "itemNamespace": "accelbyte",

	    "sku": "prime-plus"

	  },

	  {

	    "itemId": "e8f4974cf45c4e1f8d4f0c6990c518bd",

	    "appType": "GAME",

	    "appId": "omeganebula",

	    "namespace": "accelbyte",

	    "itemNamespace": "accelbyte",

	    "sku": "APPG005ON"

	  }

	 ],

	"sub": "66459eb6a4e44e6fb0040bd20c1079a5",

	"exp": 1619624360,

	"iat": 1619624060

	}

if there's no active entitlement for the specific params, the entitlements section will be omitted.
*/
func (a *Client) PublicGetEntitlementOwnershipTokenShort(params *PublicGetEntitlementOwnershipTokenParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetEntitlementOwnershipTokenResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetEntitlementOwnershipTokenParams()
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
		ID:                 "publicGetEntitlementOwnershipToken",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/me/entitlements/ownershipToken",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetEntitlementOwnershipTokenReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetEntitlementOwnershipTokenOK:
		response := &PublicGetEntitlementOwnershipTokenResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserEntitlementsShort query user entitlements
Query user entitlements for a specific user.

Other detail info:

  - Returns : entitlement list
*/
func (a *Client) PublicQueryUserEntitlementsShort(params *PublicQueryUserEntitlementsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserEntitlementsParams()
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
		ID:                 "publicQueryUserEntitlements",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserEntitlementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserEntitlementsOK:
		response := &PublicQueryUserEntitlementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserAppEntitlementByAppIDShort get user app entitlement by appid
Get user app entitlement by appId.
*/
func (a *Client) PublicGetUserAppEntitlementByAppIDShort(params *PublicGetUserAppEntitlementByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementByAppIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAppEntitlementByAppIDParams()
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
		ID:                 "publicGetUserAppEntitlementByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserAppEntitlementByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserAppEntitlementByAppIDOK:
		response := &PublicGetUserAppEntitlementByAppIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserAppEntitlementByAppIDNotFound:
		response := &PublicGetUserAppEntitlementByAppIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserEntitlementsByAppTypeShort query app entitlements by apptype
Query app entitlements by appType.

Other detail info:

  - Returns : app entitlement pagination
*/
func (a *Client) PublicQueryUserEntitlementsByAppTypeShort(params *PublicQueryUserEntitlementsByAppTypeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserEntitlementsByAppTypeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserEntitlementsByAppTypeParams()
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
		ID:                 "publicQueryUserEntitlementsByAppType",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byAppType",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserEntitlementsByAppTypeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserEntitlementsByAppTypeOK:
		response := &PublicQueryUserEntitlementsByAppTypeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementsByIdsShort get user entitlements by ids.
Get user entitlements by ids..

Other detail info:

  - Returns : entitlement list
*/
func (a *Client) PublicGetUserEntitlementsByIdsShort(params *PublicGetUserEntitlementsByIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementsByIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementsByIdsParams()
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
		ID:                 "publicGetUserEntitlementsByIds",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementsByIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementsByIdsOK:
		response := &PublicGetUserEntitlementsByIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementByItemIDShort get user entitlement by itemid
Get user entitlement by itemId.
*/
func (a *Client) PublicGetUserEntitlementByItemIDShort(params *PublicGetUserEntitlementByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementByItemIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementByItemIDParams()
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
		ID:                 "publicGetUserEntitlementByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementByItemIDOK:
		response := &PublicGetUserEntitlementByItemIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserEntitlementByItemIDNotFound:
		response := &PublicGetUserEntitlementByItemIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementBySkuShort get user entitlement by sku
Get user entitlement by sku.
*/
func (a *Client) PublicGetUserEntitlementBySkuShort(params *PublicGetUserEntitlementBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementBySkuResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementBySkuParams()
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
		ID:                 "publicGetUserEntitlementBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementBySkuOK:
		response := &PublicGetUserEntitlementBySkuResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserEntitlementBySkuNotFound:
		response := &PublicGetUserEntitlementBySkuResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicUserEntitlementHistoryShort get user entitlements histories.
Get user entitlement history

Other detail info:

  - Returns : user entitlement history list
*/
func (a *Client) PublicUserEntitlementHistoryShort(params *PublicUserEntitlementHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*PublicUserEntitlementHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicUserEntitlementHistoryParams()
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
		ID:                 "publicUserEntitlementHistory",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicUserEntitlementHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicUserEntitlementHistoryOK:
		response := &PublicUserEntitlementHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicExistsAnyUserActiveEntitlementShort exists any user active entitlement
Exists any user active entitlement of specified itemIds, skus and appIds
*/
func (a *Client) PublicExistsAnyUserActiveEntitlementShort(params *PublicExistsAnyUserActiveEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicExistsAnyUserActiveEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicExistsAnyUserActiveEntitlementParams()
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
		ID:                 "publicExistsAnyUserActiveEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/any",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicExistsAnyUserActiveEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicExistsAnyUserActiveEntitlementOK:
		response := &PublicExistsAnyUserActiveEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserAppEntitlementOwnershipByAppIDShort get user app entitlement ownership by appid
Get user app entitlement ownership by appId.
*/
func (a *Client) PublicGetUserAppEntitlementOwnershipByAppIDShort(params *PublicGetUserAppEntitlementOwnershipByAppIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserAppEntitlementOwnershipByAppIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserAppEntitlementOwnershipByAppIDParams()
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
		ID:                 "publicGetUserAppEntitlementOwnershipByAppId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byAppId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserAppEntitlementOwnershipByAppIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserAppEntitlementOwnershipByAppIDOK:
		response := &PublicGetUserAppEntitlementOwnershipByAppIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementOwnershipByItemIDShort get user entitlement ownership by itemid
Get user entitlement ownership by itemId.
*/
func (a *Client) PublicGetUserEntitlementOwnershipByItemIDShort(params *PublicGetUserEntitlementOwnershipByItemIDParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementOwnershipByItemIDParams()
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
		ID:                 "publicGetUserEntitlementOwnershipByItemId",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementOwnershipByItemIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOwnershipByItemIDOK:
		response := &PublicGetUserEntitlementOwnershipByItemIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementOwnershipByItemIdsShort get user entitlement ownership by itemids
Get user entitlement ownership by itemIds.
*/
func (a *Client) PublicGetUserEntitlementOwnershipByItemIdsShort(params *PublicGetUserEntitlementOwnershipByItemIdsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipByItemIdsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementOwnershipByItemIdsParams()
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
		ID:                 "publicGetUserEntitlementOwnershipByItemIds",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/byItemIds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementOwnershipByItemIdsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOwnershipByItemIdsOK:
		response := &PublicGetUserEntitlementOwnershipByItemIdsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementOwnershipBySkuShort get user entitlement ownership by sku
Get user entitlement ownership by sku.
*/
func (a *Client) PublicGetUserEntitlementOwnershipBySkuShort(params *PublicGetUserEntitlementOwnershipBySkuParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementOwnershipBySkuResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementOwnershipBySkuParams()
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
		ID:                 "publicGetUserEntitlementOwnershipBySku",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/ownership/bySku",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementOwnershipBySkuReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOwnershipBySkuOK:
		response := &PublicGetUserEntitlementOwnershipBySkuResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserEntitlementShort get user entitlement
Get user entitlement.

Other detail info:

  - Returns : entitlement
*/
func (a *Client) PublicGetUserEntitlementShort(params *PublicGetUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserEntitlementParams()
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
		ID:                 "publicGetUserEntitlement",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserEntitlementOK:
		response := &PublicGetUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserEntitlementNotFound:
		response := &PublicGetUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicConsumeUserEntitlementShort consume user entitlement
Consume user entitlement. If the entitlement useCount is 0, the status will be CONSUMED. Client should pass item id in options if entitlement clazz is OPTIONBOX
Other detail info:

  - Returns : consumed entitlement
*/
func (a *Client) PublicConsumeUserEntitlementShort(params *PublicConsumeUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicConsumeUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicConsumeUserEntitlementParams()
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
		ID:                 "publicConsumeUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/decrement",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicConsumeUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicConsumeUserEntitlementOK:
		response := &PublicConsumeUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicConsumeUserEntitlementBadRequest:
		response := &PublicConsumeUserEntitlementResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicConsumeUserEntitlementNotFound:
		response := &PublicConsumeUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicConsumeUserEntitlementConflict:
		response := &PublicConsumeUserEntitlementResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSellUserEntitlementShort sell user entitlement
Sell user entitlement. If the entitlement is consumable, useCount is 0, the status will be CONSUMED. If the entitlement is durable, the status will be SOLD. Other detail info:
  - Returns : entitlement
*/
func (a *Client) PublicSellUserEntitlementShort(params *PublicSellUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSellUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSellUserEntitlementParams()
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
		ID:                 "publicSellUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/sell",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSellUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSellUserEntitlementOK:
		response := &PublicSellUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSellUserEntitlementNotFound:
		response := &PublicSellUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSellUserEntitlementConflict:
		response := &PublicSellUserEntitlementResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicSplitUserEntitlementShort split user entitlement
Split a specified use count of entitlement and create a new entitlement with splitting use count.Other detail info:
  - Returns : entitlement
*/
func (a *Client) PublicSplitUserEntitlementShort(params *PublicSplitUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicSplitUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicSplitUserEntitlementParams()
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
		ID:                 "publicSplitUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/split",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicSplitUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicSplitUserEntitlementOK:
		response := &PublicSplitUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicSplitUserEntitlementNotFound:
		response := &PublicSplitUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicSplitUserEntitlementConflict:
		response := &PublicSplitUserEntitlementResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicTransferUserEntitlementShort transfer user entitlement
Transfer a specified use count from entitlement A to B..Other detail info:
  - Returns : entitlement
*/
func (a *Client) PublicTransferUserEntitlementShort(params *PublicTransferUserEntitlementParams, authInfo runtime.ClientAuthInfoWriter) (*PublicTransferUserEntitlementResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicTransferUserEntitlementParams()
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
		ID:                 "publicTransferUserEntitlement",
		Method:             "PUT",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}/transfer",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicTransferUserEntitlementReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicTransferUserEntitlementOK:
		response := &PublicTransferUserEntitlementResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicTransferUserEntitlementNotFound:
		response := &PublicTransferUserEntitlementResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicTransferUserEntitlementConflict:
		response := &PublicTransferUserEntitlementResponse{}
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
