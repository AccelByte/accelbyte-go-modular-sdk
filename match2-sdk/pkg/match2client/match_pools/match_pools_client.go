// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match_pools

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new match pools API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for match pools API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	MatchPoolListShort(params *MatchPoolListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolListOK, error)
	CreateMatchPoolShort(params *CreateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchPoolCreated, error)
	MatchPoolDetailsShort(params *MatchPoolDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolDetailsOK, error)
	UpdateMatchPoolShort(params *UpdateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchPoolOK, error)
	DeleteMatchPoolShort(params *DeleteMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchPoolNoContent, error)
	MatchPoolMetricShort(params *MatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolMetricOK, error)
	GetPlayerMetricShort(params *GetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerMetricOK, error)
	AdminGetMatchPoolTicketsShort(params *AdminGetMatchPoolTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchPoolTicketsOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
MatchPoolListShort list match pools
List matchmaking pools.
*/
func (a *Client) MatchPoolListShort(params *MatchPoolListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolListOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchPoolListParams()
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
		ID:                 "MatchPoolList",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchPoolListReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchPoolListOK:
		return v, nil
	case *MatchPoolListUnauthorized:
		return nil, v
	case *MatchPoolListForbidden:
		return nil, v
	case *MatchPoolListInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateMatchPoolShort create a match pool
Creates a new matchmaking pool.

A pool is isolated from other pools (i.e. tickets may be matched with other tickets in the same pool, but not with tickets in other pools).
Each pool has its own matchmaking rules and/or logic.

ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
Match Function will be used as reference value for Match Function Overrides if not set.
In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
e.g.
{
"match_function": "custom",
"match_function_overrides": {
"validation": []{"default","custom"},
"make_matches": "default",
}
}
*/
func (a *Client) CreateMatchPoolShort(params *CreateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchPoolCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateMatchPoolParams()
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
		ID:                 "CreateMatchPool",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateMatchPoolCreated:
		return v, nil
	case *CreateMatchPoolBadRequest:
		return nil, v
	case *CreateMatchPoolUnauthorized:
		return nil, v
	case *CreateMatchPoolForbidden:
		return nil, v
	case *CreateMatchPoolConflict:
		return nil, v
	case *CreateMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchPoolDetailsShort get details for a specific match pool
Get details for a specific match pool
*/
func (a *Client) MatchPoolDetailsShort(params *MatchPoolDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolDetailsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchPoolDetailsParams()
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
		ID:                 "MatchPoolDetails",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchPoolDetailsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchPoolDetailsOK:
		return v, nil
	case *MatchPoolDetailsUnauthorized:
		return nil, v
	case *MatchPoolDetailsForbidden:
		return nil, v
	case *MatchPoolDetailsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMatchPoolShort update a match pool
Updates an existing matchmaking pool.

ticket_expiration_seconds and backfill_ticket_expiration_seconds will be set to 300 seconds (5 minutes) by default if not filled.

Match Function holds information about the name of the match logic server that matchmaking can refers to. By default we provide ("default" and "basic").
Match Function will be used as reference value for Match Function Overrides if not set.
In case Customer would like to use matchmaking service default match logic, then specify it in "match_function_overrides".
This sample configuration will let matchmaking service will use "default" match logic for make matches, while validation will hit both "default" and "custom" match logics.
e.g.
{
"match_function": "custom",
"match_function_overrides": {
"validation": []{"default","custom"},
"make_matches": "default",
}
}
*/
func (a *Client) UpdateMatchPoolShort(params *UpdateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchPoolOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMatchPoolParams()
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
		ID:                 "UpdateMatchPool",
		Method:             "PUT",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMatchPoolOK:
		return v, nil
	case *UpdateMatchPoolBadRequest:
		return nil, v
	case *UpdateMatchPoolUnauthorized:
		return nil, v
	case *UpdateMatchPoolForbidden:
		return nil, v
	case *UpdateMatchPoolNotFound:
		return nil, v
	case *UpdateMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMatchPoolShort delete a match pool
Deletes an existing matchmaking pool.
*/
func (a *Client) DeleteMatchPoolShort(params *DeleteMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchPoolNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteMatchPoolParams()
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
		ID:                 "DeleteMatchPool",
		Method:             "DELETE",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteMatchPoolReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteMatchPoolNoContent:
		return v, nil
	case *DeleteMatchPoolUnauthorized:
		return nil, v
	case *DeleteMatchPoolForbidden:
		return nil, v
	case *DeleteMatchPoolNotFound:
		return nil, v
	case *DeleteMatchPoolInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchPoolMetricShort get metrics for a specific match pool
Get metric for a specific match pool

Result: queueTime in seconds
*/
func (a *Client) MatchPoolMetricShort(params *MatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolMetricOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewMatchPoolMetricParams()
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
		ID:                 "MatchPoolMetric",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &MatchPoolMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *MatchPoolMetricOK:
		return v, nil
	case *MatchPoolMetricUnauthorized:
		return nil, v
	case *MatchPoolMetricForbidden:
		return nil, v
	case *MatchPoolMetricNotFound:
		return nil, v
	case *MatchPoolMetricInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerMetricShort get metrics player for a specific match pool
Get player metric for a specific match pool
*/
func (a *Client) GetPlayerMetricShort(params *GetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerMetricOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPlayerMetricParams()
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
		ID:                 "GetPlayerMetric",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPlayerMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPlayerMetricOK:
		return v, nil
	case *GetPlayerMetricUnauthorized:
		return nil, v
	case *GetPlayerMetricForbidden:
		return nil, v
	case *GetPlayerMetricNotFound:
		return nil, v
	case *GetPlayerMetricInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMatchPoolTicketsShort get tickets in queue for a specific match pool
Get tickets in queue for a specific match pool

Result: number of tickets and list of ticket detail in a match pool.
*/
func (a *Client) AdminGetMatchPoolTicketsShort(params *AdminGetMatchPoolTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchPoolTicketsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMatchPoolTicketsParams()
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
		ID:                 "adminGetMatchPoolTickets",
		Method:             "GET",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMatchPoolTicketsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMatchPoolTicketsOK:
		return v, nil
	case *AdminGetMatchPoolTicketsUnauthorized:
		return nil, v
	case *AdminGetMatchPoolTicketsForbidden:
		return nil, v
	case *AdminGetMatchPoolTicketsNotFound:
		return nil, v
	case *AdminGetMatchPoolTicketsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
