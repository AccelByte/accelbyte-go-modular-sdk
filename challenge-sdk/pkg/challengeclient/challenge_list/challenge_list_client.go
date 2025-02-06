// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challenge_list

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new challenge list API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for challenge list API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetChallengesShort(params *GetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChallengesResponse, error)
	PublicGetScheduledGoalsShort(params *PublicGetScheduledGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetScheduledGoalsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetChallengesShort list challenges
- Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) GetChallengesShort(params *GetChallengesParams, authInfo runtime.ClientAuthInfoWriter) (*GetChallengesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetChallengesParams()
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
		ID:                 "GetChallenges",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetChallengesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetChallengesOK:
		response := &GetChallengesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetChallengesBadRequest:
		response := &GetChallengesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetChallengesUnauthorized:
		response := &GetChallengesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetChallengesForbidden:
		response := &GetChallengesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetChallengesInternalServerError:
		response := &GetChallengesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetScheduledGoalsShort list goals of a challenge
- Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) PublicGetScheduledGoalsShort(params *PublicGetScheduledGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetScheduledGoalsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetScheduledGoalsParams()
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
		ID:                 "publicGetScheduledGoals",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetScheduledGoalsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetScheduledGoalsOK:
		response := &PublicGetScheduledGoalsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetScheduledGoalsUnauthorized:
		response := &PublicGetScheduledGoalsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetScheduledGoalsForbidden:
		response := &PublicGetScheduledGoalsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetScheduledGoalsNotFound:
		response := &PublicGetScheduledGoalsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetScheduledGoalsInternalServerError:
		response := &PublicGetScheduledGoalsResponse{}
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
