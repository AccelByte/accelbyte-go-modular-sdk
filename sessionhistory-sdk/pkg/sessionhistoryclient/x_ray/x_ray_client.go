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
	QueryXrayMatchPoolShort(params *QueryXrayMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchPoolOK, error)
	QueryDetailTickMatchPoolShort(params *QueryDetailTickMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolOK, error)
	QueryDetailTickMatchPoolMatchesShort(params *QueryDetailTickMatchPoolMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolMatchesOK, error)
	QueryDetailTickMatchPoolTicketShort(params *QueryDetailTickMatchPoolTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolTicketOK, error)
	QueryMatchHistoriesShort(params *QueryMatchHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchHistoriesOK, error)
	QueryMatchTicketHistoriesShort(params *QueryMatchTicketHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchTicketHistoriesOK, error)
	QueryXrayMatchShort(params *QueryXrayMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchOK, error)
	QueryAcquiringDSShort(params *QueryAcquiringDSParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSOK, error)
	QueryAcquiringDSWaitTimeAvgShort(params *QueryAcquiringDSWaitTimeAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSWaitTimeAvgOK, error)
	QueryMatchLengthDurationpAvgShort(params *QueryMatchLengthDurationpAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationpAvgOK, error)
	QueryMatchLengthDurationp99Short(params *QueryMatchLengthDurationp99Params, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationp99OK, error)
	QueryTotalActiveSessionShort(params *QueryTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalActiveSessionOK, error)
	QueryTotalMatchmakingMatchShort(params *QueryTotalMatchmakingMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchOK, error)
	QueryTotalPlayerPersessionShort(params *QueryTotalPlayerPersessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalPlayerPersessionOK, error)
	QueryTotalMatchmakingCanceledShort(params *QueryTotalMatchmakingCanceledParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCanceledOK, error)
	QueryTotalMatchmakingCreatedShort(params *QueryTotalMatchmakingCreatedParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCreatedOK, error)
	QueryTotalMatchmakingExpiredShort(params *QueryTotalMatchmakingExpiredParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingExpiredOK, error)
	QueryTotalMatchmakingMatchTicketShort(params *QueryTotalMatchmakingMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchTicketOK, error)
	CreateXrayTicketObservabilityShort(params *CreateXrayTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayTicketObservabilityOK, error)
	QueryXrayTimelineByTicketIDShort(params *QueryXrayTimelineByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByTicketIDOK, error)
	QueryXrayTimelineByUserIDShort(params *QueryXrayTimelineByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByUserIDOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QueryXrayMatchPoolShort query xray match pool
Query xray match pool.
*/
func (a *Client) QueryXrayMatchPoolShort(params *QueryXrayMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchPoolOK, error) {
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
		return v, nil
	case *QueryXrayMatchPoolBadRequest:
		return nil, v
	case *QueryXrayMatchPoolUnauthorized:
		return nil, v
	case *QueryXrayMatchPoolForbidden:
		return nil, v
	case *QueryXrayMatchPoolNotFound:
		return nil, v
	case *QueryXrayMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryDetailTickMatchPoolShort query xray match pool ticks
Query xray match pool ticks.
*/
func (a *Client) QueryDetailTickMatchPoolShort(params *QueryDetailTickMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolOK, error) {
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
		return v, nil
	case *QueryDetailTickMatchPoolBadRequest:
		return nil, v
	case *QueryDetailTickMatchPoolUnauthorized:
		return nil, v
	case *QueryDetailTickMatchPoolForbidden:
		return nil, v
	case *QueryDetailTickMatchPoolNotFound:
		return nil, v
	case *QueryDetailTickMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryDetailTickMatchPoolMatchesShort query xray match pool tick matches by tick id
Query xray match pool tick matches by tick id.
*/
func (a *Client) QueryDetailTickMatchPoolMatchesShort(params *QueryDetailTickMatchPoolMatchesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolMatchesOK, error) {
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
		return v, nil
	case *QueryDetailTickMatchPoolMatchesBadRequest:
		return nil, v
	case *QueryDetailTickMatchPoolMatchesUnauthorized:
		return nil, v
	case *QueryDetailTickMatchPoolMatchesForbidden:
		return nil, v
	case *QueryDetailTickMatchPoolMatchesNotFound:
		return nil, v
	case *QueryDetailTickMatchPoolMatchesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryDetailTickMatchPoolTicketShort query xray match pool tick tickets by tick id
Query xray match pool tick tickets detail by tick id.
*/
func (a *Client) QueryDetailTickMatchPoolTicketShort(params *QueryDetailTickMatchPoolTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryDetailTickMatchPoolTicketOK, error) {
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
		return v, nil
	case *QueryDetailTickMatchPoolTicketBadRequest:
		return nil, v
	case *QueryDetailTickMatchPoolTicketUnauthorized:
		return nil, v
	case *QueryDetailTickMatchPoolTicketForbidden:
		return nil, v
	case *QueryDetailTickMatchPoolTicketNotFound:
		return nil, v
	case *QueryDetailTickMatchPoolTicketInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchHistoriesShort query xray match histories
Query xray match histories.
*/
func (a *Client) QueryMatchHistoriesShort(params *QueryMatchHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchHistoriesOK, error) {
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
		return v, nil
	case *QueryMatchHistoriesBadRequest:
		return nil, v
	case *QueryMatchHistoriesUnauthorized:
		return nil, v
	case *QueryMatchHistoriesForbidden:
		return nil, v
	case *QueryMatchHistoriesNotFound:
		return nil, v
	case *QueryMatchHistoriesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchTicketHistoriesShort query xray match ticket histories
Query xray match ticket histories.
*/
func (a *Client) QueryMatchTicketHistoriesShort(params *QueryMatchTicketHistoriesParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchTicketHistoriesOK, error) {
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
		return v, nil
	case *QueryMatchTicketHistoriesBadRequest:
		return nil, v
	case *QueryMatchTicketHistoriesUnauthorized:
		return nil, v
	case *QueryMatchTicketHistoriesForbidden:
		return nil, v
	case *QueryMatchTicketHistoriesNotFound:
		return nil, v
	case *QueryMatchTicketHistoriesInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayMatchShort query xray timeline by matchid
Query xray timeline by matchID.
*/
func (a *Client) QueryXrayMatchShort(params *QueryXrayMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayMatchOK, error) {
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
		return v, nil
	case *QueryXrayMatchBadRequest:
		return nil, v
	case *QueryXrayMatchUnauthorized:
		return nil, v
	case *QueryXrayMatchForbidden:
		return nil, v
	case *QueryXrayMatchNotFound:
		return nil, v
	case *QueryXrayMatchInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAcquiringDSShort query total success and failed claim ds
Query total success and failed claim DS.
*/
func (a *Client) QueryAcquiringDSShort(params *QueryAcquiringDSParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSOK, error) {
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
		return v, nil
	case *QueryAcquiringDSBadRequest:
		return nil, v
	case *QueryAcquiringDSUnauthorized:
		return nil, v
	case *QueryAcquiringDSForbidden:
		return nil, v
	case *QueryAcquiringDSNotFound:
		return nil, v
	case *QueryAcquiringDSInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryAcquiringDSWaitTimeAvgShort query acquiring ds wait time average
Query acquiring ds wait time average. time in seconds
*/
func (a *Client) QueryAcquiringDSWaitTimeAvgShort(params *QueryAcquiringDSWaitTimeAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryAcquiringDSWaitTimeAvgOK, error) {
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
		return v, nil
	case *QueryAcquiringDSWaitTimeAvgBadRequest:
		return nil, v
	case *QueryAcquiringDSWaitTimeAvgUnauthorized:
		return nil, v
	case *QueryAcquiringDSWaitTimeAvgForbidden:
		return nil, v
	case *QueryAcquiringDSWaitTimeAvgNotFound:
		return nil, v
	case *QueryAcquiringDSWaitTimeAvgInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchLengthDurationpAvgShort query match length duration avg
Query match length duration avg. time in seconds
*/
func (a *Client) QueryMatchLengthDurationpAvgShort(params *QueryMatchLengthDurationpAvgParams, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationpAvgOK, error) {
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
		return v, nil
	case *QueryMatchLengthDurationpAvgBadRequest:
		return nil, v
	case *QueryMatchLengthDurationpAvgUnauthorized:
		return nil, v
	case *QueryMatchLengthDurationpAvgForbidden:
		return nil, v
	case *QueryMatchLengthDurationpAvgNotFound:
		return nil, v
	case *QueryMatchLengthDurationpAvgInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryMatchLengthDurationp99Short query match length duration p99
Query match length duration p99. time in seconds
*/
func (a *Client) QueryMatchLengthDurationp99Short(params *QueryMatchLengthDurationp99Params, authInfo runtime.ClientAuthInfoWriter) (*QueryMatchLengthDurationp99OK, error) {
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
		return v, nil
	case *QueryMatchLengthDurationp99BadRequest:
		return nil, v
	case *QueryMatchLengthDurationp99Unauthorized:
		return nil, v
	case *QueryMatchLengthDurationp99Forbidden:
		return nil, v
	case *QueryMatchLengthDurationp99NotFound:
		return nil, v
	case *QueryMatchLengthDurationp99InternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalActiveSessionShort query total active session
Query total active session.
*/
func (a *Client) QueryTotalActiveSessionShort(params *QueryTotalActiveSessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalActiveSessionOK, error) {
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
		return v, nil
	case *QueryTotalActiveSessionBadRequest:
		return nil, v
	case *QueryTotalActiveSessionUnauthorized:
		return nil, v
	case *QueryTotalActiveSessionForbidden:
		return nil, v
	case *QueryTotalActiveSessionNotFound:
		return nil, v
	case *QueryTotalActiveSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingMatchShort query total match
Query total match.
*/
func (a *Client) QueryTotalMatchmakingMatchShort(params *QueryTotalMatchmakingMatchParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchOK, error) {
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
		return v, nil
	case *QueryTotalMatchmakingMatchBadRequest:
		return nil, v
	case *QueryTotalMatchmakingMatchUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingMatchForbidden:
		return nil, v
	case *QueryTotalMatchmakingMatchNotFound:
		return nil, v
	case *QueryTotalMatchmakingMatchInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalPlayerPersessionShort query total player persession average
Query total player persession average.
*/
func (a *Client) QueryTotalPlayerPersessionShort(params *QueryTotalPlayerPersessionParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalPlayerPersessionOK, error) {
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
		return v, nil
	case *QueryTotalPlayerPersessionBadRequest:
		return nil, v
	case *QueryTotalPlayerPersessionUnauthorized:
		return nil, v
	case *QueryTotalPlayerPersessionForbidden:
		return nil, v
	case *QueryTotalPlayerPersessionNotFound:
		return nil, v
	case *QueryTotalPlayerPersessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingCanceledShort query total ticket canceled
Query total ticket canceled.
*/
func (a *Client) QueryTotalMatchmakingCanceledShort(params *QueryTotalMatchmakingCanceledParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCanceledOK, error) {
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
		return v, nil
	case *QueryTotalMatchmakingCanceledBadRequest:
		return nil, v
	case *QueryTotalMatchmakingCanceledUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingCanceledForbidden:
		return nil, v
	case *QueryTotalMatchmakingCanceledNotFound:
		return nil, v
	case *QueryTotalMatchmakingCanceledInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingCreatedShort query total ticket created
Query total ticket created.
*/
func (a *Client) QueryTotalMatchmakingCreatedShort(params *QueryTotalMatchmakingCreatedParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingCreatedOK, error) {
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
		return v, nil
	case *QueryTotalMatchmakingCreatedBadRequest:
		return nil, v
	case *QueryTotalMatchmakingCreatedUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingCreatedForbidden:
		return nil, v
	case *QueryTotalMatchmakingCreatedNotFound:
		return nil, v
	case *QueryTotalMatchmakingCreatedInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingExpiredShort query total ticket expired
Query total ticket expired.
*/
func (a *Client) QueryTotalMatchmakingExpiredShort(params *QueryTotalMatchmakingExpiredParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingExpiredOK, error) {
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
		return v, nil
	case *QueryTotalMatchmakingExpiredBadRequest:
		return nil, v
	case *QueryTotalMatchmakingExpiredUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingExpiredForbidden:
		return nil, v
	case *QueryTotalMatchmakingExpiredNotFound:
		return nil, v
	case *QueryTotalMatchmakingExpiredInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryTotalMatchmakingMatchTicketShort query total ticket match
Query total ticket match.
*/
func (a *Client) QueryTotalMatchmakingMatchTicketShort(params *QueryTotalMatchmakingMatchTicketParams, authInfo runtime.ClientAuthInfoWriter) (*QueryTotalMatchmakingMatchTicketOK, error) {
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
		return v, nil
	case *QueryTotalMatchmakingMatchTicketBadRequest:
		return nil, v
	case *QueryTotalMatchmakingMatchTicketUnauthorized:
		return nil, v
	case *QueryTotalMatchmakingMatchTicketForbidden:
		return nil, v
	case *QueryTotalMatchmakingMatchTicketNotFound:
		return nil, v
	case *QueryTotalMatchmakingMatchTicketInternalServerError:
		return nil, v

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
1. "started"
2. "matchFound"
3. "matchNotFound"
4. "flexed"
5 "canceled"
6. "expired"
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
func (a *Client) CreateXrayTicketObservabilityShort(params *CreateXrayTicketObservabilityParams, authInfo runtime.ClientAuthInfoWriter) (*CreateXrayTicketObservabilityOK, error) {
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
		return v, nil
	case *CreateXrayTicketObservabilityBadRequest:
		return nil, v
	case *CreateXrayTicketObservabilityUnauthorized:
		return nil, v
	case *CreateXrayTicketObservabilityForbidden:
		return nil, v
	case *CreateXrayTicketObservabilityInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayTimelineByTicketIDShort query xray timeline
Query xray timeline by ticketID
*/
func (a *Client) QueryXrayTimelineByTicketIDShort(params *QueryXrayTimelineByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByTicketIDOK, error) {
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
		return v, nil
	case *QueryXrayTimelineByTicketIDBadRequest:
		return nil, v
	case *QueryXrayTimelineByTicketIDUnauthorized:
		return nil, v
	case *QueryXrayTimelineByTicketIDForbidden:
		return nil, v
	case *QueryXrayTimelineByTicketIDNotFound:
		return nil, v
	case *QueryXrayTimelineByTicketIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueryXrayTimelineByUserIDShort query xray timeline
Query xray timeline by userID or ticketID
*/
func (a *Client) QueryXrayTimelineByUserIDShort(params *QueryXrayTimelineByUserIDParams, authInfo runtime.ClientAuthInfoWriter) (*QueryXrayTimelineByUserIDOK, error) {
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
		return v, nil
	case *QueryXrayTimelineByUserIDBadRequest:
		return nil, v
	case *QueryXrayTimelineByUserIDUnauthorized:
		return nil, v
	case *QueryXrayTimelineByUserIDForbidden:
		return nil, v
	case *QueryXrayTimelineByUserIDNotFound:
		return nil, v
	case *QueryXrayTimelineByUserIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
