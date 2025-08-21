// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package schedules

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new schedules API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for schedules API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminListSchedulesByGoalShort(params *AdminListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesByGoalResponse, error)
	AdminListSchedulesShort(params *AdminListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesResponse, error)
	PublicListSchedulesByGoalShort(params *PublicListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesByGoalResponse, error)
	PublicListSchedulesShort(params *PublicListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminListSchedulesByGoalShort get goal's schedules

  - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given goal in a challenge for specific user.
*/
func (a *Client) AdminListSchedulesByGoalShort(params *AdminListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesByGoalResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListSchedulesByGoalParams()
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
		ID:                 "adminListSchedulesByGoal",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListSchedulesByGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListSchedulesByGoalOK:
		response := &AdminListSchedulesByGoalResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListSchedulesByGoalBadRequest:
		response := &AdminListSchedulesByGoalResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListSchedulesByGoalUnauthorized:
		response := &AdminListSchedulesByGoalResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListSchedulesByGoalForbidden:
		response := &AdminListSchedulesByGoalResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListSchedulesByGoalNotFound:
		response := &AdminListSchedulesByGoalResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListSchedulesByGoalInternalServerError:
		response := &AdminListSchedulesByGoalResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminListSchedulesShort get challenge's schedules

  - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.
*/
func (a *Client) AdminListSchedulesShort(params *AdminListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*AdminListSchedulesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminListSchedulesParams()
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
		ID:                 "adminListSchedules",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminListSchedulesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminListSchedulesOK:
		response := &AdminListSchedulesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminListSchedulesBadRequest:
		response := &AdminListSchedulesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListSchedulesUnauthorized:
		response := &AdminListSchedulesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListSchedulesForbidden:
		response := &AdminListSchedulesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListSchedulesNotFound:
		response := &AdminListSchedulesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminListSchedulesInternalServerError:
		response := &AdminListSchedulesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListSchedulesByGoalShort get goal's schedules

  - Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given goal in a challenge for specific user.
*/
func (a *Client) PublicListSchedulesByGoalShort(params *PublicListSchedulesByGoalParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesByGoalResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListSchedulesByGoalParams()
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
		ID:                 "publicListSchedulesByGoal",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListSchedulesByGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListSchedulesByGoalOK:
		response := &PublicListSchedulesByGoalResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListSchedulesByGoalBadRequest:
		response := &PublicListSchedulesByGoalResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListSchedulesByGoalUnauthorized:
		response := &PublicListSchedulesByGoalResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListSchedulesByGoalForbidden:
		response := &PublicListSchedulesByGoalResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListSchedulesByGoalNotFound:
		response := &PublicListSchedulesByGoalResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListSchedulesByGoalInternalServerError:
		response := &PublicListSchedulesByGoalResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicListSchedulesShort get challenge's schedules

  - Required permission: NAMESPACE:{namespace}:CHALLENGE [READ]

List schedules of given challenge for specific user. To query schedules prior to specific date time, use dateTime parameter.
*/
func (a *Client) PublicListSchedulesShort(params *PublicListSchedulesParams, authInfo runtime.ClientAuthInfoWriter) (*PublicListSchedulesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicListSchedulesParams()
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
		ID:                 "publicListSchedules",
		Method:             "GET",
		PathPattern:        "/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/schedules",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicListSchedulesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicListSchedulesOK:
		response := &PublicListSchedulesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicListSchedulesBadRequest:
		response := &PublicListSchedulesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListSchedulesUnauthorized:
		response := &PublicListSchedulesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListSchedulesForbidden:
		response := &PublicListSchedulesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListSchedulesNotFound:
		response := &PublicListSchedulesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicListSchedulesInternalServerError:
		response := &PublicListSchedulesResponse{}
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
