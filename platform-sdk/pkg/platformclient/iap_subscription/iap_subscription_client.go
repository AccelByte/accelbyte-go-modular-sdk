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
QueryThirdPartySubscriptionShort query subscriptions.
Query subscriptions, default sort by updatedAt Other detail info:
  * Returns :
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
  * Returns :
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
  * Returns :
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
  * Returns :
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
  * Returns :
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
  * Returns :
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
