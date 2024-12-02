// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new reward API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for reward API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryRewardsShort(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsResponse, error)
	CreateRewardShort(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardResponse, error)
	GetRewardShort(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardResponse, error)
	DeleteRewardShort(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardResponse, error)
	UpdateRewardShort(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardResponse, error)
	PublicClaimUserRewardShort(params *PublicClaimUserRewardParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardResponse, error)
	PublicBulkClaimUserRewardsShort(params *PublicBulkClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkClaimUserRewardsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryRewardsShort query all rewards for a season
This API is used to query rewards for a season.

Other detail info:

  * Returns : the list of rewards
*/
func (a *Client) QueryRewardsShort(params *QueryRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*QueryRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryRewardsParams()
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
		ID:                 "queryRewards",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryRewardsOK:
		response := &QueryRewardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryRewardsBadRequest:
		response := &QueryRewardsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QueryRewardsNotFound:
		response := &QueryRewardsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateRewardShort create a reward
This API is used to create a reward for a draft season.

Other detail info:

  * Returns : created reward
*/
func (a *Client) CreateRewardShort(params *CreateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*CreateRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateRewardParams()
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
		ID:                 "createReward",
		Method:             "POST",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateRewardCreated:
		response := &CreateRewardResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateRewardBadRequest:
		response := &CreateRewardResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRewardNotFound:
		response := &CreateRewardResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRewardConflict:
		response := &CreateRewardResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateRewardUnprocessableEntity:
		response := &CreateRewardResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRewardShort get a reward
This API is used to get a reward for a season.

Other detail info:

  * Returns : reward data
*/
func (a *Client) GetRewardShort(params *GetRewardParams, authInfo runtime.ClientAuthInfoWriter) (*GetRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRewardParams()
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
		ID:                 "getReward",
		Method:             "GET",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRewardOK:
		response := &GetRewardResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRewardBadRequest:
		response := &GetRewardResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetRewardNotFound:
		response := &GetRewardResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteRewardShort delete a reward
This API is used to delete a reward permanently, only draft season reward can be deleted.

Other detail info:
*/
func (a *Client) DeleteRewardShort(params *DeleteRewardParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteRewardParams()
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
		ID:                 "deleteReward",
		Method:             "DELETE",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteRewardNoContent:
		response := &DeleteRewardResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteRewardBadRequest:
		response := &DeleteRewardResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteRewardNotFound:
		response := &DeleteRewardResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteRewardConflict:
		response := &DeleteRewardResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateRewardShort update a reward
This API is used to update a reward. Only draft season reward can be updated.

Other detail info:

  * Returns : updated reward
*/
func (a *Client) UpdateRewardShort(params *UpdateRewardParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateRewardParams()
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
		ID:                 "updateReward",
		Method:             "PATCH",
		PathPattern:        "/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateRewardOK:
		response := &UpdateRewardResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateRewardBadRequest:
		response := &UpdateRewardResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRewardNotFound:
		response := &UpdateRewardResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRewardConflict:
		response := &UpdateRewardResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateRewardUnprocessableEntity:
		response := &UpdateRewardResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicClaimUserRewardShort claim tier reward
This API is used to claim reward, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicClaimUserRewardShort(params *PublicClaimUserRewardParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicClaimUserRewardParams()
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
		ID:                 "publicClaimUserReward",
		Method:             "POST",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicClaimUserRewardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardOK:
		response := &PublicClaimUserRewardResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicClaimUserRewardBadRequest:
		response := &PublicClaimUserRewardResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardNotFound:
		response := &PublicClaimUserRewardResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardConflict:
		response := &PublicClaimUserRewardResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicBulkClaimUserRewardsShort bulk claim all remained rewards
This API is used to bulk claim all remained rewards, season only located in non-publisher namespace.

Other detail info:

  * Returns : user season data
*/
func (a *Client) PublicBulkClaimUserRewardsShort(params *PublicBulkClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicBulkClaimUserRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicBulkClaimUserRewardsParams()
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
		ID:                 "publicBulkClaimUserRewards",
		Method:             "POST",
		PathPattern:        "/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicBulkClaimUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicBulkClaimUserRewardsOK:
		response := &PublicBulkClaimUserRewardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicBulkClaimUserRewardsBadRequest:
		response := &PublicBulkClaimUserRewardsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicBulkClaimUserRewardsNotFound:
		response := &PublicBulkClaimUserRewardsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
