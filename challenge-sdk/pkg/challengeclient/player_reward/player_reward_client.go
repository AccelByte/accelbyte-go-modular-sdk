// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player_reward

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new player reward API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for player reward API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminClaimUsersRewardsShort(params *AdminClaimUsersRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUsersRewardsResponse, error)
	AdminClaimUserRewardsByGoalCodeShort(params *AdminClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsByGoalCodeResponse, error)
	AdminGetUserRewardsShort(params *AdminGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserRewardsResponse, error)
	AdminClaimUserRewardsShort(params *AdminClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsResponse, error)
	PublicClaimUserRewardsByGoalCodeShort(params *PublicClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsByGoalCodeResponse, error)
	PublicGetUserRewardsShort(params *PublicGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserRewardsResponse, error)
	PublicClaimUserRewardsShort(params *PublicClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminClaimUsersRewardsShort claim  rewards of multiple users

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) AdminClaimUsersRewardsShort(params *AdminClaimUsersRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUsersRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminClaimUsersRewardsParams()
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
		ID:                 "adminClaimUsersRewards",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminClaimUsersRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminClaimUsersRewardsOK:
		response := &AdminClaimUsersRewardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminClaimUsersRewardsBadRequest:
		response := &AdminClaimUsersRewardsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUsersRewardsUnauthorized:
		response := &AdminClaimUsersRewardsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUsersRewardsForbidden:
		response := &AdminClaimUsersRewardsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUsersRewardsNotFound:
		response := &AdminClaimUsersRewardsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUsersRewardsInternalServerError:
		response := &AdminClaimUsersRewardsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminClaimUserRewardsByGoalCodeShort claim rewards of a single user by goal code

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) AdminClaimUserRewardsByGoalCodeShort(params *AdminClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsByGoalCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminClaimUserRewardsByGoalCodeParams()
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
		ID:                 "adminClaimUserRewardsByGoalCode",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/challenges/{challengeCode}/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminClaimUserRewardsByGoalCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminClaimUserRewardsByGoalCodeOK:
		response := &AdminClaimUserRewardsByGoalCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminClaimUserRewardsByGoalCodeBadRequest:
		response := &AdminClaimUserRewardsByGoalCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUserRewardsByGoalCodeUnauthorized:
		response := &AdminClaimUserRewardsByGoalCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUserRewardsByGoalCodeForbidden:
		response := &AdminClaimUserRewardsByGoalCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUserRewardsByGoalCodeNotFound:
		response := &AdminClaimUserRewardsByGoalCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUserRewardsByGoalCodeUnprocessableEntity:
		response := &AdminClaimUserRewardsByGoalCodeResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUserRewardsByGoalCodeInternalServerError:
		response := &AdminClaimUserRewardsByGoalCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetUserRewardsShort list user's rewards

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
*/
func (a *Client) AdminGetUserRewardsShort(params *AdminGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetUserRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetUserRewardsParams()
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
		ID:                 "adminGetUserRewards",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetUserRewardsOK:
		response := &AdminGetUserRewardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetUserRewardsUnauthorized:
		response := &AdminGetUserRewardsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUserRewardsForbidden:
		response := &AdminGetUserRewardsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetUserRewardsInternalServerError:
		response := &AdminGetUserRewardsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminClaimUserRewardsShort claim rewards of a single user

    * Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) AdminClaimUserRewardsShort(params *AdminClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminClaimUserRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminClaimUserRewardsParams()
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
		ID:                 "adminClaimUserRewards",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminClaimUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminClaimUserRewardsOK:
		response := &AdminClaimUserRewardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminClaimUserRewardsUnauthorized:
		response := &AdminClaimUserRewardsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUserRewardsForbidden:
		response := &AdminClaimUserRewardsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUserRewardsNotFound:
		response := &AdminClaimUserRewardsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUserRewardsUnprocessableEntity:
		response := &AdminClaimUserRewardsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminClaimUserRewardsInternalServerError:
		response := &AdminClaimUserRewardsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicClaimUserRewardsByGoalCodeShort claim user's rewards by goal code

    * Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) PublicClaimUserRewardsByGoalCodeShort(params *PublicClaimUserRewardsByGoalCodeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsByGoalCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicClaimUserRewardsByGoalCodeParams()
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
		ID:                 "publicClaimUserRewardsByGoalCode",
		Method:             "POST",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/challenges/{challengeCode}/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicClaimUserRewardsByGoalCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardsByGoalCodeOK:
		response := &PublicClaimUserRewardsByGoalCodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicClaimUserRewardsByGoalCodeBadRequest:
		response := &PublicClaimUserRewardsByGoalCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardsByGoalCodeUnauthorized:
		response := &PublicClaimUserRewardsByGoalCodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardsByGoalCodeForbidden:
		response := &PublicClaimUserRewardsByGoalCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardsByGoalCodeNotFound:
		response := &PublicClaimUserRewardsByGoalCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardsByGoalCodeUnprocessableEntity:
		response := &PublicClaimUserRewardsByGoalCodeResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardsByGoalCodeInternalServerError:
		response := &PublicClaimUserRewardsByGoalCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetUserRewardsShort list user's rewards

    * Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [READ]
*/
func (a *Client) PublicGetUserRewardsShort(params *PublicGetUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetUserRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetUserRewardsParams()
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
		ID:                 "publicGetUserRewards",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/rewards",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetUserRewardsOK:
		response := &PublicGetUserRewardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetUserRewardsUnauthorized:
		response := &PublicGetUserRewardsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetUserRewardsForbidden:
		response := &PublicGetUserRewardsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetUserRewardsInternalServerError:
		response := &PublicGetUserRewardsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicClaimUserRewardsShort claim user's rewards

    * Required permission: NAMESPACE:{namespace}:CHALLENGE:REWARD [UPDATE]
*/
func (a *Client) PublicClaimUserRewardsShort(params *PublicClaimUserRewardsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicClaimUserRewardsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicClaimUserRewardsParams()
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
		ID:                 "publicClaimUserRewards",
		Method:             "POST",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicClaimUserRewardsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicClaimUserRewardsOK:
		response := &PublicClaimUserRewardsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicClaimUserRewardsUnauthorized:
		response := &PublicClaimUserRewardsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardsForbidden:
		response := &PublicClaimUserRewardsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardsNotFound:
		response := &PublicClaimUserRewardsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardsUnprocessableEntity:
		response := &PublicClaimUserRewardsResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicClaimUserRewardsInternalServerError:
		response := &PublicClaimUserRewardsResponse{}
		response.Error500 = v.Payload

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
