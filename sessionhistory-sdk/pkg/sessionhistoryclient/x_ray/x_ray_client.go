// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package x_ray

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new x ray API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for x ray API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QueryXrayMatchPoolShort(params *QueryXrayMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchPoolResponse, error)
	QueryDetailTickMatchPoolShort(params *QueryDetailTickMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolResponse, error)
	QueryDetailTickMatchPoolMatchesShort(params *QueryDetailTickMatchPoolMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolMatchesResponse, error)
	QueryDetailTickMatchPoolTicketShort(params *QueryDetailTickMatchPoolTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolTicketResponse, error)
	QueryMatchHistoriesShort(params *QueryMatchHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchHistoriesResponse, error)
	QueryMatchTicketHistoriesShort(params *QueryMatchTicketHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchTicketHistoriesResponse, error)
	QueryXrayMatchShort(params *QueryXrayMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchResponse, error)
	QueryAcquiringDSShort(params *QueryAcquiringDSParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSResponse, error)
	QueryAcquiringDSWaitTimeAvgShort(params *QueryAcquiringDSWaitTimeAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSWaitTimeAvgResponse, error)
	QueryMatchLengthDurationpAvgShort(params *QueryMatchLengthDurationpAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationpAvgResponse, error)
	QueryMatchLengthDurationp99Short(params *QueryMatchLengthDurationp99Params, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationp99Response, error)
	QueryTotalActiveSessionShort(params *QueryTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalActiveSessionResponse, error)
	QueryTotalMatchmakingMatchShort(params *QueryTotalMatchmakingMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchResponse, error)
	QueryTotalPlayerPersessionShort(params *QueryTotalPlayerPersessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalPlayerPersessionResponse, error)
	QueryTotalMatchmakingCanceledShort(params *QueryTotalMatchmakingCanceledParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCanceledResponse, error)
	QueryTotalMatchmakingCreatedShort(params *QueryTotalMatchmakingCreatedParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCreatedResponse, error)
	QueryTotalMatchmakingExpiredShort(params *QueryTotalMatchmakingExpiredParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingExpiredResponse, error)
	QueryTotalMatchmakingMatchTicketShort(params *QueryTotalMatchmakingMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchTicketResponse, error)
	CreateXrayTicketObservabilityShort(params *CreateXrayTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayTicketObservabilityResponse, error)
	CreateXrayBulkTicketObservabilityShort(params *CreateXrayBulkTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayBulkTicketObservabilityResponse, error)
	QueryXrayTimelineByTicketIDShort(params *QueryXrayTimelineByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByTicketIDResponse, error)
	QueryXrayTimelineByUserIDShort(params *QueryXrayTimelineByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByUserIDResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryXrayMatchPoolShort query xray match pool
Query xray match pool.
query can using matchpool array with separate ","
*/
func (a *Client) QueryXrayMatchPoolShort(params *QueryXrayMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchPoolResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayMatchPoolParams()
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
		ID:                 "queryXrayMatchPool",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryXrayMatchPoolOK:
		response := &QueryXrayMatchPoolResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryXrayMatchPoolBadRequest:
		response := &QueryXrayMatchPoolResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayMatchPoolUnauthorized:
		response := &QueryXrayMatchPoolResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayMatchPoolForbidden:
		response := &QueryXrayMatchPoolResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayMatchPoolNotFound:
		response := &QueryXrayMatchPoolResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayMatchPoolInternalServerError:
		response := &QueryXrayMatchPoolResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryDetailTickMatchPoolShort query xray match pool ticks
Query xray match pool ticks.
*/
func (a *Client) QueryDetailTickMatchPoolShort(params *QueryDetailTickMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryDetailTickMatchPoolParams()
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
		ID:                 "queryDetailTickMatchPool",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryDetailTickMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryDetailTickMatchPoolOK:
		response := &QueryDetailTickMatchPoolResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryDetailTickMatchPoolBadRequest:
		response := &QueryDetailTickMatchPoolResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolUnauthorized:
		response := &QueryDetailTickMatchPoolResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolForbidden:
		response := &QueryDetailTickMatchPoolResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolNotFound:
		response := &QueryDetailTickMatchPoolResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolInternalServerError:
		response := &QueryDetailTickMatchPoolResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryDetailTickMatchPoolMatchesShort query xray match pool tick matches by tick id
Query xray match pool tick matches by tick id.
*/
func (a *Client) QueryDetailTickMatchPoolMatchesShort(params *QueryDetailTickMatchPoolMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolMatchesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryDetailTickMatchPoolMatchesParams()
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
		ID:                 "queryDetailTickMatchPoolMatches",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryDetailTickMatchPoolMatchesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryDetailTickMatchPoolMatchesOK:
		response := &QueryDetailTickMatchPoolMatchesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryDetailTickMatchPoolMatchesBadRequest:
		response := &QueryDetailTickMatchPoolMatchesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolMatchesUnauthorized:
		response := &QueryDetailTickMatchPoolMatchesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolMatchesForbidden:
		response := &QueryDetailTickMatchPoolMatchesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolMatchesNotFound:
		response := &QueryDetailTickMatchPoolMatchesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolMatchesInternalServerError:
		response := &QueryDetailTickMatchPoolMatchesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryDetailTickMatchPoolTicketShort query xray match pool tick tickets by tick id
Query xray match pool tick tickets detail by tick id.
*/
func (a *Client) QueryDetailTickMatchPoolTicketShort(params *QueryDetailTickMatchPoolTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolTicketResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryDetailTickMatchPoolTicketParams()
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
		ID:                 "queryDetailTickMatchPoolTicket",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryDetailTickMatchPoolTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryDetailTickMatchPoolTicketOK:
		response := &QueryDetailTickMatchPoolTicketResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryDetailTickMatchPoolTicketBadRequest:
		response := &QueryDetailTickMatchPoolTicketResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolTicketUnauthorized:
		response := &QueryDetailTickMatchPoolTicketResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolTicketForbidden:
		response := &QueryDetailTickMatchPoolTicketResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolTicketNotFound:
		response := &QueryDetailTickMatchPoolTicketResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryDetailTickMatchPoolTicketInternalServerError:
		response := &QueryDetailTickMatchPoolTicketResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchHistoriesShort query xray match histories
Query xray match histories.
*/
func (a *Client) QueryMatchHistoriesShort(params *QueryMatchHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchHistoriesParams()
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
		ID:                 "queryMatchHistories",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryMatchHistoriesOK:
		response := &QueryMatchHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryMatchHistoriesBadRequest:
		response := &QueryMatchHistoriesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchHistoriesUnauthorized:
		response := &QueryMatchHistoriesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchHistoriesForbidden:
		response := &QueryMatchHistoriesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchHistoriesNotFound:
		response := &QueryMatchHistoriesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchHistoriesInternalServerError:
		response := &QueryMatchHistoriesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchTicketHistoriesShort query xray match ticket histories
Query xray match ticket histories.
*/
func (a *Client) QueryMatchTicketHistoriesShort(params *QueryMatchTicketHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchTicketHistoriesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchTicketHistoriesParams()
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
		ID:                 "queryMatchTicketHistories",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchTicketHistoriesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryMatchTicketHistoriesOK:
		response := &QueryMatchTicketHistoriesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryMatchTicketHistoriesBadRequest:
		response := &QueryMatchTicketHistoriesResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchTicketHistoriesUnauthorized:
		response := &QueryMatchTicketHistoriesResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchTicketHistoriesForbidden:
		response := &QueryMatchTicketHistoriesResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchTicketHistoriesNotFound:
		response := &QueryMatchTicketHistoriesResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchTicketHistoriesInternalServerError:
		response := &QueryMatchTicketHistoriesResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayMatchShort query xray timeline by matchid
Query xray timeline by matchID.
*/
func (a *Client) QueryXrayMatchShort(params *QueryXrayMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayMatchParams()
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
		ID:                 "queryXrayMatch",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayMatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryXrayMatchOK:
		response := &QueryXrayMatchResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryXrayMatchBadRequest:
		response := &QueryXrayMatchResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayMatchUnauthorized:
		response := &QueryXrayMatchResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayMatchForbidden:
		response := &QueryXrayMatchResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayMatchNotFound:
		response := &QueryXrayMatchResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayMatchInternalServerError:
		response := &QueryXrayMatchResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAcquiringDSShort query total success and failed claim ds
Query total success and failed claim DS.
*/
func (a *Client) QueryAcquiringDSShort(params *QueryAcquiringDSParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAcquiringDSParams()
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
		ID:                 "queryAcquiringDS",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAcquiringDSReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAcquiringDSOK:
		response := &QueryAcquiringDSResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryAcquiringDSBadRequest:
		response := &QueryAcquiringDSResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryAcquiringDSUnauthorized:
		response := &QueryAcquiringDSResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryAcquiringDSForbidden:
		response := &QueryAcquiringDSResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryAcquiringDSNotFound:
		response := &QueryAcquiringDSResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryAcquiringDSInternalServerError:
		response := &QueryAcquiringDSResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAcquiringDSWaitTimeAvgShort query acquiring ds wait time average
Query acquiring ds wait time average. time in seconds
*/
func (a *Client) QueryAcquiringDSWaitTimeAvgShort(params *QueryAcquiringDSWaitTimeAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSWaitTimeAvgResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryAcquiringDSWaitTimeAvgParams()
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
		ID:                 "queryAcquiringDSWaitTimeAvg",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryAcquiringDSWaitTimeAvgReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryAcquiringDSWaitTimeAvgOK:
		response := &QueryAcquiringDSWaitTimeAvgResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryAcquiringDSWaitTimeAvgBadRequest:
		response := &QueryAcquiringDSWaitTimeAvgResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryAcquiringDSWaitTimeAvgUnauthorized:
		response := &QueryAcquiringDSWaitTimeAvgResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryAcquiringDSWaitTimeAvgForbidden:
		response := &QueryAcquiringDSWaitTimeAvgResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryAcquiringDSWaitTimeAvgNotFound:
		response := &QueryAcquiringDSWaitTimeAvgResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryAcquiringDSWaitTimeAvgInternalServerError:
		response := &QueryAcquiringDSWaitTimeAvgResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchLengthDurationpAvgShort query match length duration avg
Query match length duration avg. time in seconds
*/
func (a *Client) QueryMatchLengthDurationpAvgShort(params *QueryMatchLengthDurationpAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationpAvgResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchLengthDurationpAvgParams()
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
		ID:                 "queryMatchLengthDurationpAvg",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchLengthDurationpAvgReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryMatchLengthDurationpAvgOK:
		response := &QueryMatchLengthDurationpAvgResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryMatchLengthDurationpAvgBadRequest:
		response := &QueryMatchLengthDurationpAvgResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchLengthDurationpAvgUnauthorized:
		response := &QueryMatchLengthDurationpAvgResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchLengthDurationpAvgForbidden:
		response := &QueryMatchLengthDurationpAvgResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchLengthDurationpAvgNotFound:
		response := &QueryMatchLengthDurationpAvgResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchLengthDurationpAvgInternalServerError:
		response := &QueryMatchLengthDurationpAvgResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchLengthDurationp99Short query match length duration p99
Query match length duration p99. time in seconds
*/
func (a *Client) QueryMatchLengthDurationp99Short(params *QueryMatchLengthDurationp99Params, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationp99Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryMatchLengthDurationp99Params()
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
		ID:                 "queryMatchLengthDurationp99",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryMatchLengthDurationp99Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryMatchLengthDurationp99OK:
		response := &QueryMatchLengthDurationp99Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryMatchLengthDurationp99BadRequest:
		response := &QueryMatchLengthDurationp99Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchLengthDurationp99Unauthorized:
		response := &QueryMatchLengthDurationp99Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchLengthDurationp99Forbidden:
		response := &QueryMatchLengthDurationp99Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchLengthDurationp99NotFound:
		response := &QueryMatchLengthDurationp99Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryMatchLengthDurationp99InternalServerError:
		response := &QueryMatchLengthDurationp99Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalActiveSessionShort query total active session
Query total active session.
*/
func (a *Client) QueryTotalActiveSessionShort(params *QueryTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalActiveSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalActiveSessionParams()
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
		ID:                 "queryTotalActiveSession",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalActiveSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalActiveSessionOK:
		response := &QueryTotalActiveSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryTotalActiveSessionBadRequest:
		response := &QueryTotalActiveSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalActiveSessionUnauthorized:
		response := &QueryTotalActiveSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalActiveSessionForbidden:
		response := &QueryTotalActiveSessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalActiveSessionNotFound:
		response := &QueryTotalActiveSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalActiveSessionInternalServerError:
		response := &QueryTotalActiveSessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingMatchShort query total match
Query total match.
*/
func (a *Client) QueryTotalMatchmakingMatchShort(params *QueryTotalMatchmakingMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingMatchParams()
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
		ID:                 "queryTotalMatchmakingMatch",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingMatchReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingMatchOK:
		response := &QueryTotalMatchmakingMatchResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryTotalMatchmakingMatchBadRequest:
		response := &QueryTotalMatchmakingMatchResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingMatchUnauthorized:
		response := &QueryTotalMatchmakingMatchResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingMatchForbidden:
		response := &QueryTotalMatchmakingMatchResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingMatchNotFound:
		response := &QueryTotalMatchmakingMatchResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingMatchInternalServerError:
		response := &QueryTotalMatchmakingMatchResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalPlayerPersessionShort query total player persession average
Query total player persession average.
*/
func (a *Client) QueryTotalPlayerPersessionShort(params *QueryTotalPlayerPersessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalPlayerPersessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalPlayerPersessionParams()
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
		ID:                 "queryTotalPlayerPersession",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalPlayerPersessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalPlayerPersessionOK:
		response := &QueryTotalPlayerPersessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryTotalPlayerPersessionBadRequest:
		response := &QueryTotalPlayerPersessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalPlayerPersessionUnauthorized:
		response := &QueryTotalPlayerPersessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalPlayerPersessionForbidden:
		response := &QueryTotalPlayerPersessionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalPlayerPersessionNotFound:
		response := &QueryTotalPlayerPersessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalPlayerPersessionInternalServerError:
		response := &QueryTotalPlayerPersessionResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingCanceledShort query total ticket canceled
Query total ticket canceled.
*/
func (a *Client) QueryTotalMatchmakingCanceledShort(params *QueryTotalMatchmakingCanceledParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCanceledResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingCanceledParams()
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
		ID:                 "queryTotalMatchmakingCanceled",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingCanceledReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingCanceledOK:
		response := &QueryTotalMatchmakingCanceledResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryTotalMatchmakingCanceledBadRequest:
		response := &QueryTotalMatchmakingCanceledResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingCanceledUnauthorized:
		response := &QueryTotalMatchmakingCanceledResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingCanceledForbidden:
		response := &QueryTotalMatchmakingCanceledResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingCanceledNotFound:
		response := &QueryTotalMatchmakingCanceledResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingCanceledInternalServerError:
		response := &QueryTotalMatchmakingCanceledResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingCreatedShort query total ticket created
Query total ticket created.
*/
func (a *Client) QueryTotalMatchmakingCreatedShort(params *QueryTotalMatchmakingCreatedParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCreatedResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingCreatedParams()
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
		ID:                 "queryTotalMatchmakingCreated",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingCreatedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingCreatedOK:
		response := &QueryTotalMatchmakingCreatedResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryTotalMatchmakingCreatedBadRequest:
		response := &QueryTotalMatchmakingCreatedResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingCreatedUnauthorized:
		response := &QueryTotalMatchmakingCreatedResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingCreatedForbidden:
		response := &QueryTotalMatchmakingCreatedResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingCreatedNotFound:
		response := &QueryTotalMatchmakingCreatedResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingCreatedInternalServerError:
		response := &QueryTotalMatchmakingCreatedResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingExpiredShort query total ticket expired
Query total ticket expired.
*/
func (a *Client) QueryTotalMatchmakingExpiredShort(params *QueryTotalMatchmakingExpiredParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingExpiredResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingExpiredParams()
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
		ID:                 "queryTotalMatchmakingExpired",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingExpiredReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingExpiredOK:
		response := &QueryTotalMatchmakingExpiredResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryTotalMatchmakingExpiredBadRequest:
		response := &QueryTotalMatchmakingExpiredResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingExpiredUnauthorized:
		response := &QueryTotalMatchmakingExpiredResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingExpiredForbidden:
		response := &QueryTotalMatchmakingExpiredResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingExpiredNotFound:
		response := &QueryTotalMatchmakingExpiredResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingExpiredInternalServerError:
		response := &QueryTotalMatchmakingExpiredResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingMatchTicketShort query total ticket match
Query total ticket match.
*/
func (a *Client) QueryTotalMatchmakingMatchTicketShort(params *QueryTotalMatchmakingMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchTicketResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryTotalMatchmakingMatchTicketParams()
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
		ID:                 "queryTotalMatchmakingMatchTicket",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryTotalMatchmakingMatchTicketReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryTotalMatchmakingMatchTicketOK:
		response := &QueryTotalMatchmakingMatchTicketResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryTotalMatchmakingMatchTicketBadRequest:
		response := &QueryTotalMatchmakingMatchTicketResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingMatchTicketUnauthorized:
		response := &QueryTotalMatchmakingMatchTicketResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingMatchTicketForbidden:
		response := &QueryTotalMatchmakingMatchTicketResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingMatchTicketNotFound:
		response := &QueryTotalMatchmakingMatchTicketResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryTotalMatchmakingMatchTicketInternalServerError:
		response := &QueryTotalMatchmakingMatchTicketResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateXrayTicketObservabilityShort create ticket observability request
Create ticket observability request
Request body details (all attributes are optional):
Timestamp : timestamp when calling this endpoint
Action : support one of the following value:
1. "matchFound"
2. "matchNotFound"
3. "flexed"
TicketID : ticket ID
MatchID : match ID will be filled only when match found
Namespace : ticket current namespace
GameMode : ticket current matchpool
ActiveAllianceRule : current active alliance ruleset
ActiveMatchingRule : current active matching ruleset
Function : name of the function that called the endpoint
Iteration : total iteration before match found
TimeToMatchSec : time to match (in seconds) will be filled only when match found
UnmatchReason : reason when unable to find match
RemainingTickets : remaining ticket when unable to find match
RemainingPlayersPerTicket : remaining players when unable to find match
UnbackfillReason : reason when unable to backfill
IsBackfillMatch : flag to distinguish between new match and backfill match
IsRuleSetFlexed : flag if ruleset is getting flexed
TickID : tick id for the matchmaking tick
SessionTickID : session tick id for differentiate session when doing matches
*/
func (a *Client) CreateXrayTicketObservabilityShort(params *CreateXrayTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayTicketObservabilityResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateXrayTicketObservabilityParams()
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
		ID:                 "createXrayTicketObservability",
		Method:             "POST",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateXrayTicketObservabilityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateXrayTicketObservabilityOK:
		response := &CreateXrayTicketObservabilityResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateXrayTicketObservabilityBadRequest:
		response := &CreateXrayTicketObservabilityResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateXrayTicketObservabilityUnauthorized:
		response := &CreateXrayTicketObservabilityResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateXrayTicketObservabilityForbidden:
		response := &CreateXrayTicketObservabilityResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateXrayTicketObservabilityInternalServerError:
		response := &CreateXrayTicketObservabilityResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateXrayBulkTicketObservabilityShort create bulk ticket observability request
Create bulk ticket observability request
Request body details (all attributes are optional):
Timestamp : timestamp when calling this endpoint
Action : support one of the following value:
1. "matchFound"
2. "matchNotFound"
3. "flexed"
PartyID : ticket Party ID
MatchID : match ID will be filled only when match found
Namespace : ticket current namespace
GameMode : ticket current matchpool
ActiveAllianceRule : current active alliance ruleset
ActiveMatchingRule : current active matching ruleset
Function : name of the function that called the endpoint
Iteration : total iteration before match found
TimeToMatchSec : time to match (in seconds) will be filled only when match found
UnmatchReason : reason when unable to find match
RemainingTickets : remaining ticket when unable to find match
RemainingPlayersPerTicket : remaining players when unable to find match
UnbackfillReason : reason when unable to backfill
IsBackfillMatch : flag to distinguish between new match and backfill match
IsRuleSetFlexed : flag if ruleset is getting flexed
TickID : tick id for the matchmaking tick
SessionTickID : session tick id for differentiate session when doing matches
*/
func (a *Client) CreateXrayBulkTicketObservabilityShort(params *CreateXrayBulkTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayBulkTicketObservabilityResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateXrayBulkTicketObservabilityParams()
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
		ID:                 "createXrayBulkTicketObservability",
		Method:             "POST",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateXrayBulkTicketObservabilityReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateXrayBulkTicketObservabilityOK:
		response := &CreateXrayBulkTicketObservabilityResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateXrayBulkTicketObservabilityBadRequest:
		response := &CreateXrayBulkTicketObservabilityResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateXrayBulkTicketObservabilityUnauthorized:
		response := &CreateXrayBulkTicketObservabilityResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateXrayBulkTicketObservabilityForbidden:
		response := &CreateXrayBulkTicketObservabilityResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateXrayBulkTicketObservabilityInternalServerError:
		response := &CreateXrayBulkTicketObservabilityResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayTimelineByTicketIDShort query xray timeline
Query xray timeline by ticketID
*/
func (a *Client) QueryXrayTimelineByTicketIDShort(params *QueryXrayTimelineByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByTicketIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayTimelineByTicketIDParams()
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
		ID:                 "queryXrayTimelineByTicketID",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayTimelineByTicketIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryXrayTimelineByTicketIDOK:
		response := &QueryXrayTimelineByTicketIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryXrayTimelineByTicketIDBadRequest:
		response := &QueryXrayTimelineByTicketIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayTimelineByTicketIDUnauthorized:
		response := &QueryXrayTimelineByTicketIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayTimelineByTicketIDForbidden:
		response := &QueryXrayTimelineByTicketIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayTimelineByTicketIDNotFound:
		response := &QueryXrayTimelineByTicketIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayTimelineByTicketIDInternalServerError:
		response := &QueryXrayTimelineByTicketIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayTimelineByUserIDShort query xray timeline
Query xray timeline by userID or ticketID
*/
func (a *Client) QueryXrayTimelineByUserIDShort(params *QueryXrayTimelineByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByUserIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueryXrayTimelineByUserIDParams()
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
		ID:                 "queryXrayTimelineByUserID",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueryXrayTimelineByUserIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueryXrayTimelineByUserIDOK:
		response := &QueryXrayTimelineByUserIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QueryXrayTimelineByUserIDBadRequest:
		response := &QueryXrayTimelineByUserIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayTimelineByUserIDUnauthorized:
		response := &QueryXrayTimelineByUserIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayTimelineByUserIDForbidden:
		response := &QueryXrayTimelineByUserIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayTimelineByUserIDNotFound:
		response := &QueryXrayTimelineByUserIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *QueryXrayTimelineByUserIDInternalServerError:
		response := &QueryXrayTimelineByUserIDResponse{}
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
