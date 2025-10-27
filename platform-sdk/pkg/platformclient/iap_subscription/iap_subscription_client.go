// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap_subscription

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new iap subscription API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for iap subscription API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListOculusSubscriptionGroupsShort(params *ListOculusSubscriptionGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*ListOculusSubscriptionGroupsResponse, error)
	CreateOculusSubscriptionGroupShort(params *CreateOculusSubscriptionGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateOculusSubscriptionGroupResponse, error)
	DeleteOculusSubscriptionGroupShort(params *DeleteOculusSubscriptionGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusSubscriptionGroupResponse, error)
	ListOculusSubscriptionGroupTierShort(params *ListOculusSubscriptionGroupTierParams, authInfo runtime.ClientAuthInfoWriter) (*ListOculusSubscriptionGroupTierResponse, error)
	AddTierIntoMetaQuestSubscriptionGroupShort(params *AddTierIntoMetaQuestSubscriptionGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddTierIntoMetaQuestSubscriptionGroupResponse, error)
	DeleteOculusSubscriptionTierShort(params *DeleteOculusSubscriptionTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusSubscriptionTierResponse, error)
	QueryThirdPartySubscriptionShort(params *QueryThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartySubscriptionResponse, error)
	QueryUserThirdPartySubscriptionShort(params *QueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionResponse, error)
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort(params *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByGroupIDResponse, error)
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort(params *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByProductIDResponse, error)
	QueryUserThirdPartySubscriptionTransactionsShort(params *QueryUserThirdPartySubscriptionTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionTransactionsResponse, error)
	GetThirdPartySubscriptionDetailsShort(params *GetThirdPartySubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartySubscriptionDetailsResponse, error)
	GetSubscriptionHistoryShort(params *GetSubscriptionHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionHistoryResponse, error)
	SyncSubscriptionTransactionShort(params *SyncSubscriptionTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionTransactionResponse, error)
	GetThirdPartyUserSubscriptionDetailsShort(params *GetThirdPartyUserSubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyUserSubscriptionDetailsResponse, error)
	SyncSubscriptionShort(params *SyncSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionResponse, error)
	PublicQueryUserThirdPartySubscriptionShort(params *PublicQueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserThirdPartySubscriptionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListOculusSubscriptionGroupsShort list all of ags meta quest(oculus) subscriptions group
List Meta Quest(Oculus) subscriptions group
*/
func (a *Client) ListOculusSubscriptionGroupsShort(params *ListOculusSubscriptionGroupsParams, authInfo runtime.ClientAuthInfoWriter) (*ListOculusSubscriptionGroupsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListOculusSubscriptionGroupsParams()
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
		ID:                 "listOculusSubscriptionGroups",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListOculusSubscriptionGroupsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListOculusSubscriptionGroupsOK:
		response := &ListOculusSubscriptionGroupsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateOculusSubscriptionGroupShort create ags meta quest(oculus) subscriptions group
Create subscriptions group
*/
func (a *Client) CreateOculusSubscriptionGroupShort(params *CreateOculusSubscriptionGroupParams, authInfo runtime.ClientAuthInfoWriter) (*CreateOculusSubscriptionGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateOculusSubscriptionGroupParams()
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
		ID:                 "createOculusSubscriptionGroup",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateOculusSubscriptionGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateOculusSubscriptionGroupOK:
		response := &CreateOculusSubscriptionGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateOculusSubscriptionGroupConflict:
		response := &CreateOculusSubscriptionGroupResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteOculusSubscriptionGroupShort delete a ags meta quest(oculus) subscriptions group
can't delete it if this subscription group is used.
*/
func (a *Client) DeleteOculusSubscriptionGroupShort(params *DeleteOculusSubscriptionGroupParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusSubscriptionGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteOculusSubscriptionGroupParams()
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
		ID:                 "deleteOculusSubscriptionGroup",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group/{sku}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteOculusSubscriptionGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteOculusSubscriptionGroupNoContent:
		response := &DeleteOculusSubscriptionGroupResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteOculusSubscriptionGroupNotFound:
		response := &DeleteOculusSubscriptionGroupResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteOculusSubscriptionGroupConflict:
		response := &DeleteOculusSubscriptionGroupResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ListOculusSubscriptionGroupTierShort list all tier of ags meta quest(oculus) subscriptions group
List All Tier of AGS Meta Quest(Oculus) subscriptions group
*/
func (a *Client) ListOculusSubscriptionGroupTierShort(params *ListOculusSubscriptionGroupTierParams, authInfo runtime.ClientAuthInfoWriter) (*ListOculusSubscriptionGroupTierResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListOculusSubscriptionGroupTierParams()
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
		ID:                 "listOculusSubscriptionGroupTier",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/group/{sku}/tiers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListOculusSubscriptionGroupTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListOculusSubscriptionGroupTierOK:
		response := &ListOculusSubscriptionGroupTierResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddTierIntoMetaQuestSubscriptionGroupShort create meta quest(oculus) subscriptions tier
Create Meta Quest(Oculus) subscriptions tier
*/
func (a *Client) AddTierIntoMetaQuestSubscriptionGroupShort(params *AddTierIntoMetaQuestSubscriptionGroupParams, authInfo runtime.ClientAuthInfoWriter) (*AddTierIntoMetaQuestSubscriptionGroupResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddTierIntoMetaQuestSubscriptionGroupParams()
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
		ID:                 "addTierIntoMetaQuestSubscriptionGroup",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/tier",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddTierIntoMetaQuestSubscriptionGroupReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddTierIntoMetaQuestSubscriptionGroupOK:
		response := &AddTierIntoMetaQuestSubscriptionGroupResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AddTierIntoMetaQuestSubscriptionGroupConflict:
		response := &AddTierIntoMetaQuestSubscriptionGroupResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteOculusSubscriptionTierShort delete a ags meta quest(oculus) subscriptions tier
*/
func (a *Client) DeleteOculusSubscriptionTierShort(params *DeleteOculusSubscriptionTierParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteOculusSubscriptionTierResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteOculusSubscriptionTierParams()
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
		ID:                 "deleteOculusSubscriptionTier",
		Method:             "DELETE",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/config/oculus/subscription/tier/{sku}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteOculusSubscriptionTierReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteOculusSubscriptionTierNoContent:
		response := &DeleteOculusSubscriptionTierResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteOculusSubscriptionTierNotFound:
		response := &DeleteOculusSubscriptionTierResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteOculusSubscriptionTierConflict:
		response := &DeleteOculusSubscriptionTierResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryThirdPartySubscriptionShort query subscriptions.
Query subscriptions, default sort by updatedAt Other detail info:
  - Returns :
*/
func (a *Client) QueryThirdPartySubscriptionShort(params *QueryThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryThirdPartySubscriptionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryThirdPartySubscriptionParams()
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
		ID:                 "queryThirdPartySubscription",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/iap/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryThirdPartySubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryThirdPartySubscriptionOK:
		response := &QueryThirdPartySubscriptionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserThirdPartySubscriptionShort query user subscription.
Query user subscription, default sort by updatedAtOther detail info:
  - Returns :
*/
func (a *Client) QueryUserThirdPartySubscriptionShort(params *QueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserThirdPartySubscriptionParams()
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
		ID:                 "queryUserThirdPartySubscription",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserThirdPartySubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserThirdPartySubscriptionOK:
		response := &QueryUserThirdPartySubscriptionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort get user third party platform subscription ownership by subscription group id
Get user third party subscription by subscription group id.
*/
func (a *Client) GetThirdPartyPlatformSubscriptionOwnershipByGroupIDShort(params *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByGroupIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams()
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
		ID:                 "getThirdPartyPlatformSubscriptionOwnershipByGroupId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byGroupId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyPlatformSubscriptionOwnershipByGroupIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDOK:
		response := &GetThirdPartyPlatformSubscriptionOwnershipByGroupIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort get user third party platform subscription ownership by subscription product id
Get user third party subscription by subscription product id.
*/
func (a *Client) GetThirdPartyPlatformSubscriptionOwnershipByProductIDShort(params *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyPlatformSubscriptionOwnershipByProductIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParams()
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
		ID:                 "getThirdPartyPlatformSubscriptionOwnershipByProductId",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}/ownership/byProductId",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyPlatformSubscriptionOwnershipByProductIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyPlatformSubscriptionOwnershipByProductIDOK:
		response := &GetThirdPartyPlatformSubscriptionOwnershipByProductIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryUserThirdPartySubscriptionTransactionsShort admin query user subscription transactions.
Admin query user subscription transactions, default sort by startAt timeOther detail info:
  - Returns :
*/
func (a *Client) QueryUserThirdPartySubscriptionTransactionsShort(params *QueryUserThirdPartySubscriptionTransactionsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryUserThirdPartySubscriptionTransactionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryUserThirdPartySubscriptionTransactionsParams()
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
		ID:                 "queryUserThirdPartySubscriptionTransactions",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryUserThirdPartySubscriptionTransactionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryUserThirdPartySubscriptionTransactionsOK:
		response := &QueryUserThirdPartySubscriptionTransactionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetThirdPartySubscriptionDetailsShort admin get user subscription transaction details.
Admin get user subscription details.Other detail info:
  - Returns :
*/
func (a *Client) GetThirdPartySubscriptionDetailsShort(params *GetThirdPartySubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartySubscriptionDetailsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartySubscriptionDetailsParams()
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
		ID:                 "getThirdPartySubscriptionDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartySubscriptionDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartySubscriptionDetailsOK:
		response := &GetThirdPartySubscriptionDetailsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetThirdPartySubscriptionDetailsNotFound:
		response := &GetThirdPartySubscriptionDetailsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSubscriptionHistoryShort get user subscription transaction update history
Get Subscription Transaction Update History
*/
func (a *Client) GetSubscriptionHistoryShort(params *GetSubscriptionHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*GetSubscriptionHistoryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSubscriptionHistoryParams()
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
		ID:                 "getSubscriptionHistory",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSubscriptionHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSubscriptionHistoryOK:
		response := &GetSubscriptionHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSubscriptionTransactionShort sync subscription transaction
Sync Subscription Status
*/
func (a *Client) SyncSubscriptionTransactionShort(params *SyncSubscriptionTransactionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionTransactionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSubscriptionTransactionParams()
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
		ID:                 "syncSubscriptionTransaction",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/transactions/{id}/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSubscriptionTransactionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSubscriptionTransactionOK:
		response := &SyncSubscriptionTransactionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncSubscriptionTransactionBadRequest:
		response := &SyncSubscriptionTransactionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncSubscriptionTransactionNotFound:
		response := &SyncSubscriptionTransactionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetThirdPartyUserSubscriptionDetailsShort admin get user subscription details.
Admin get user subscription details.Other detail info:
  - Returns :
*/
func (a *Client) GetThirdPartyUserSubscriptionDetailsShort(params *GetThirdPartyUserSubscriptionDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*GetThirdPartyUserSubscriptionDetailsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetThirdPartyUserSubscriptionDetailsParams()
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
		ID:                 "getThirdPartyUserSubscriptionDetails",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetThirdPartyUserSubscriptionDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetThirdPartyUserSubscriptionDetailsOK:
		response := &GetThirdPartyUserSubscriptionDetailsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetThirdPartyUserSubscriptionDetailsNotFound:
		response := &GetThirdPartyUserSubscriptionDetailsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SyncSubscriptionShort sync subscription status
Sync Subscription Status
*/
func (a *Client) SyncSubscriptionShort(params *SyncSubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*SyncSubscriptionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSyncSubscriptionParams()
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
		ID:                 "syncSubscription",
		Method:             "PUT",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/iap/subscriptions/{id}/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SyncSubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SyncSubscriptionOK:
		response := &SyncSubscriptionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SyncSubscriptionBadRequest:
		response := &SyncSubscriptionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SyncSubscriptionNotFound:
		response := &SyncSubscriptionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryUserThirdPartySubscriptionShort query user subscription.
Query user subscription, default sort by updatedAtOther detail info:
  - Returns :
*/
func (a *Client) PublicQueryUserThirdPartySubscriptionShort(params *PublicQueryUserThirdPartySubscriptionParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryUserThirdPartySubscriptionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryUserThirdPartySubscriptionParams()
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
		ID:                 "publicQueryUserThirdPartySubscription",
		Method:             "GET",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/iap/subscriptions/platforms/{platform}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryUserThirdPartySubscriptionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryUserThirdPartySubscriptionOK:
		response := &PublicQueryUserThirdPartySubscriptionResponse{}
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
