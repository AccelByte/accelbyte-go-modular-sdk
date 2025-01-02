// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new fulfillment API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for fulfillment API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryFulfillmentHistoriesShort(params *QueryFulfillmentHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryFulfillmentHistoriesResponse, error)
	FulfillItemShort(params *FulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemResponse, error)
	RedeemCodeShort(params *RedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*RedeemCodeResponse, error)
	PreCheckFulfillItemShort(params *PreCheckFulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckFulfillItemResponse, error)
	FulfillRewardsShort(params *FulfillRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsResponse, error)
	PublicRedeemCodeShort(params *PublicRedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRedeemCodeResponse, error)
	QueryFulfillmentsShort(params *QueryFulfillmentsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryFulfillmentsResponse, error)
	FulfillRewardsV2Short(params *FulfillRewardsV2Params, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsV2Response, error)
	FulfillItemsShort(params *FulfillItemsParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemsResponse, error)
	RetryFulfillItemsShort(params *RetryFulfillItemsParams, authInfo runtime.ClientAuthInfoWriter) (*RetryFulfillItemsResponse, error)
	RevokeItemsShort(params *RevokeItemsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeItemsResponse, error)
	FulfillItemsV3Short(params *FulfillItemsV3Params, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemsV3Response, error)
	RetryFulfillItemsV3Short(params *RetryFulfillItemsV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetryFulfillItemsV3Response, error)
	RevokeItemsV3Short(params *RevokeItemsV3Params, authInfo runtime.ClientAuthInfoWriter) (*RevokeItemsV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryFulfillmentHistoriesShort query fulfillment histories
Query fulfillment histories in a namespace.
Other detail info:

  * Returns : query fulfillment history
*/
func (a *Client) QueryFulfillmentHistoriesShort(params *QueryFulfillmentHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryFulfillmentHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryFulfillmentHistoriesParams()
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
		ID:                 "queryFulfillmentHistories",
		Method:             "GET",
		PathPattern:        "/platform/admin/namespaces/{namespace}/fulfillment/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryFulfillmentHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryFulfillmentHistoriesOK:
		response := &QueryFulfillmentHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillItemShort fulfill item
Fulfill item.
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) FulfillItemShort(params *FulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillItemParams()
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
		ID:                 "fulfillItem",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillItemOK:
		response := &FulfillItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FulfillItemBadRequest:
		response := &FulfillItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillItemNotFound:
		response := &FulfillItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillItemConflict:
		response := &FulfillItemResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RedeemCodeShort redeem campaign code
Redeem campaign code.
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) RedeemCodeShort(params *RedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*RedeemCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRedeemCodeParams()
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
		ID:                 "redeemCode",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RedeemCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RedeemCodeOK:
		response := &RedeemCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RedeemCodeBadRequest:
		response := &RedeemCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RedeemCodeNotFound:
		response := &RedeemCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RedeemCodeConflict:
		response := &RedeemCodeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PreCheckFulfillItemShort pre check fulfillment items
Retrieve and check fulfillment items based on the provided request.
Other detail info:

  * Returns : list of fulfillment items
*/
func (a *Client) PreCheckFulfillItemShort(params *PreCheckFulfillItemParams, authInfo runtime.ClientAuthInfoWriter) (*PreCheckFulfillItemResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPreCheckFulfillItemParams()
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
		ID:                 "preCheckFulfillItem",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/preCheck",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PreCheckFulfillItemReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PreCheckFulfillItemOK:
		response := &PreCheckFulfillItemResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PreCheckFulfillItemBadRequest:
		response := &PreCheckFulfillItemResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PreCheckFulfillItemNotFound:
		response := &PreCheckFulfillItemResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillRewardsShort fulfill rewards without content
 [SERVICE COMMUNICATION ONLY] Fulfill rewards.
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) FulfillRewardsShort(params *FulfillRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillRewardsParams()
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
		ID:                 "fulfillRewards",
		Method:             "POST",
		PathPattern:        "/platform/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillRewardsNoContent:
		response := &FulfillRewardsResponse{}

		response.IsSuccess = true

		return response, nil
	case *FulfillRewardsBadRequest:
		response := &FulfillRewardsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillRewardsNotFound:
		response := &FulfillRewardsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillRewardsConflict:
		response := &FulfillRewardsResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicRedeemCodeShort redeem campaign code
Redeem campaign code, this api have rate limit, default: only allow request once per user in 2 seconds
Other detail info:

  * Returns : fulfillment result
*/
func (a *Client) PublicRedeemCodeShort(params *PublicRedeemCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicRedeemCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicRedeemCodeParams()
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
		ID:                 "publicRedeemCode",
		Method:             "POST",
		PathPattern:        "/platform/public/namespaces/{namespace}/users/{userId}/fulfillment/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicRedeemCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicRedeemCodeOK:
		response := &PublicRedeemCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicRedeemCodeBadRequest:
		response := &PublicRedeemCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRedeemCodeNotFound:
		response := &PublicRedeemCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRedeemCodeConflict:
		response := &PublicRedeemCodeResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicRedeemCodeTooManyRequests:
		response := &PublicRedeemCodeResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryFulfillmentsShort query fulfillments
 [Not supported yet in AGS Shared Cloud] Query fulfillments in a namespace.
Other detail info:

  * Returns : list of fulfillment info:
    * storeId in items can be ignored
    * error in successList will always be null
*/
func (a *Client) QueryFulfillmentsShort(params *QueryFulfillmentsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryFulfillmentsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryFulfillmentsParams()
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
		ID:                 "queryFulfillments",
		Method:             "GET",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/fulfillments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryFulfillmentsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryFulfillmentsOK:
		response := &QueryFulfillmentsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillRewardsV2Short fulfill rewards
 [SERVICE COMMUNICATION ONLY] Fulfill rewards.
Other detail info:

  * Returns : fulfillment result
  *  rewards Item unsupported Type : SUBSCRIPTION
*/
func (a *Client) FulfillRewardsV2Short(params *FulfillRewardsV2Params, authInfo runtime.ClientAuthInfoWriter) (*FulfillRewardsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillRewardsV2Params()
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
		ID:                 "fulfillRewardsV2",
		Method:             "POST",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillment/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillRewardsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillRewardsV2OK:
		response := &FulfillRewardsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FulfillRewardsV2BadRequest:
		response := &FulfillRewardsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillRewardsV2NotFound:
		response := &FulfillRewardsV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillRewardsV2Conflict:
		response := &FulfillRewardsV2Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillItemsShort fulfill items by transactionid


### The endpoint is going to be deprecated

Description: this endpoint is Not supported yet in AGS Shared Cloud and it's used to fulfill items by transaction id.

  *  Request body : storeId, region, language, and entitlementCollectionId can be ignored.
  *  Returns : fulfillment v2 result, storeId field can be ignored.



### Endpoint migration guide

  *  Substitute endpoint: /v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId} [PUT]
*/
func (a *Client) FulfillItemsShort(params *FulfillItemsParams, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillItemsParams()
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
		ID:                 "fulfillItems",
		Method:             "PUT",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillItemsOK:
		response := &FulfillItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FulfillItemsBadRequest:
		response := &FulfillItemsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillItemsNotFound:
		response := &FulfillItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillItemsConflict:
		response := &FulfillItemsResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetryFulfillItemsShort retry fulfill items by transactionid


### The endpoint is going to be deprecated

[Not supported yet in AGS Shared Cloud] Retry fulfill items by transactionId without sending the original payload.
Other detail info:
      * Returns : fulfillment v2 result, storeId field can be ignored.

### Endpoint migration guide

      *  Substitute endpoint: /v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry [PUT]
*/
func (a *Client) RetryFulfillItemsShort(params *RetryFulfillItemsParams, authInfo runtime.ClientAuthInfoWriter) (*RetryFulfillItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetryFulfillItemsParams()
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
		ID:                 "retryFulfillItems",
		Method:             "PUT",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetryFulfillItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetryFulfillItemsOK:
		response := &RetryFulfillItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetryFulfillItemsNotFound:
		response := &RetryFulfillItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetryFulfillItemsConflict:
		response := &RetryFulfillItemsResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeItemsShort revoke items by transactionid


### The endpoint is going to be deprecated

[Not supported yet in AGS Shared Cloud] Revoke items by transactionId.
Other detail info:
          * Returns : revoke fulfillment v2 result, storeId field can be ignored.

### Endpoint migration guide

          *  Substitute endpoint: /v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke [PUT]
*/
func (a *Client) RevokeItemsShort(params *RevokeItemsParams, authInfo runtime.ClientAuthInfoWriter) (*RevokeItemsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeItemsParams()
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
		ID:                 "revokeItems",
		Method:             "PUT",
		PathPattern:        "/platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeItemsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeItemsOK:
		response := &RevokeItemsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RevokeItemsNotFound:
		response := &RevokeItemsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RevokeItemsConflict:
		response := &RevokeItemsResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FulfillItemsV3Short fulfill items by transactionid
 [Not supported yet in AGS Shared Cloud] Fulfill items by transactionId.
Other detail info:
              * Request body : storeId, region, language, and entitlementCollectionId can be ignored.
              *  Returns : fulfillment v2 result, storeId field can be ignored.
*/
func (a *Client) FulfillItemsV3Short(params *FulfillItemsV3Params, authInfo runtime.ClientAuthInfoWriter) (*FulfillItemsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFulfillItemsV3Params()
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
		ID:                 "fulfillItemsV3",
		Method:             "PUT",
		PathPattern:        "/platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FulfillItemsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FulfillItemsV3OK:
		response := &FulfillItemsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FulfillItemsV3BadRequest:
		response := &FulfillItemsV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FulfillItemsV3NotFound:
		response := &FulfillItemsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetryFulfillItemsV3Short retry fulfill items by transactionid
 [Not supported yet in AGS Shared Cloud] Retry fulfill items by transactionId without sending the original payload.
Other detail info:
              * Returns : fulfillment v2 result, storeId field can be ignored.
*/
func (a *Client) RetryFulfillItemsV3Short(params *RetryFulfillItemsV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetryFulfillItemsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetryFulfillItemsV3Params()
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
		ID:                 "retryFulfillItemsV3",
		Method:             "PUT",
		PathPattern:        "/platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/retry",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetryFulfillItemsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetryFulfillItemsV3OK:
		response := &RetryFulfillItemsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetryFulfillItemsV3NotFound:
		response := &RetryFulfillItemsV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeItemsV3Short revoke items by transactionid
 [Not supported yet in AGS Shared Cloud] Revoke items by transactionId.
Other detail info:
              * Returns : revoke fulfillment v2 result, storeId field can be ignored.
*/
func (a *Client) RevokeItemsV3Short(params *RevokeItemsV3Params, authInfo runtime.ClientAuthInfoWriter) (*RevokeItemsV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeItemsV3Params()
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
		ID:                 "revokeItemsV3",
		Method:             "PUT",
		PathPattern:        "/platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeItemsV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeItemsV3OK:
		response := &RevokeItemsV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RevokeItemsV3NotFound:
		response := &RevokeItemsV3Response{}
		response.Error404 = v.Payload

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
