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
	MatchPoolListShort(params *MatchPoolListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolListResponse, error)
	CreateMatchPoolShort(params *CreateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchPoolResponse, error)
	MatchPoolDetailsShort(params *MatchPoolDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolDetailsResponse, error)
	UpdateMatchPoolShort(params *UpdateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchPoolResponse, error)
	DeleteMatchPoolShort(params *DeleteMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchPoolResponse, error)
	MatchPoolMetricShort(params *MatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolMetricResponse, error)
	PostMatchErrorMetricShort(params *PostMatchErrorMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PostMatchErrorMetricResponse, error)
	GetPlayerMetricShort(params *GetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerMetricResponse, error)
	AdminGetMatchPoolTicketsShort(params *AdminGetMatchPoolTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchPoolTicketsResponse, error)
	PublicGetPlayerMetricShort(params *PublicGetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerMetricResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
MatchPoolListShort list match pools
List matchmaking pools.
*/
func (a *Client) MatchPoolListShort(params *MatchPoolListParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolListResponse, error) {
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
		response := &MatchPoolListResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *MatchPoolListUnauthorized:
		response := &MatchPoolListResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchPoolListForbidden:
		response := &MatchPoolListResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchPoolListInternalServerError:
		response := &MatchPoolListResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) CreateMatchPoolShort(params *CreateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*CreateMatchPoolResponse, error) {
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
		response := &CreateMatchPoolResponse{}

		response.IsSuccess = true

		return response, nil
	case *CreateMatchPoolBadRequest:
		response := &CreateMatchPoolResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchPoolUnauthorized:
		response := &CreateMatchPoolResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchPoolForbidden:
		response := &CreateMatchPoolResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchPoolConflict:
		response := &CreateMatchPoolResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateMatchPoolInternalServerError:
		response := &CreateMatchPoolResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchPoolDetailsShort get details for a specific match pool
Get details for a specific match pool
*/
func (a *Client) MatchPoolDetailsShort(params *MatchPoolDetailsParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolDetailsResponse, error) {
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
		response := &MatchPoolDetailsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *MatchPoolDetailsUnauthorized:
		response := &MatchPoolDetailsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchPoolDetailsForbidden:
		response := &MatchPoolDetailsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchPoolDetailsNotFound:
		response := &MatchPoolDetailsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchPoolDetailsInternalServerError:
		response := &MatchPoolDetailsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

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
func (a *Client) UpdateMatchPoolShort(params *UpdateMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchPoolResponse, error) {
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
		response := &UpdateMatchPoolResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateMatchPoolBadRequest:
		response := &UpdateMatchPoolResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMatchPoolUnauthorized:
		response := &UpdateMatchPoolResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMatchPoolForbidden:
		response := &UpdateMatchPoolResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMatchPoolNotFound:
		response := &UpdateMatchPoolResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateMatchPoolInternalServerError:
		response := &UpdateMatchPoolResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteMatchPoolShort delete a match pool
Deletes an existing matchmaking pool.
*/
func (a *Client) DeleteMatchPoolShort(params *DeleteMatchPoolParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteMatchPoolResponse, error) {
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
		response := &DeleteMatchPoolResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteMatchPoolUnauthorized:
		response := &DeleteMatchPoolResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchPoolForbidden:
		response := &DeleteMatchPoolResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchPoolNotFound:
		response := &DeleteMatchPoolResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteMatchPoolInternalServerError:
		response := &DeleteMatchPoolResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
MatchPoolMetricShort get metrics for a specific match pool
Get metric for a specific match pool

Result: queueTime in seconds
*/
func (a *Client) MatchPoolMetricShort(params *MatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*MatchPoolMetricResponse, error) {
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
		response := &MatchPoolMetricResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *MatchPoolMetricUnauthorized:
		response := &MatchPoolMetricResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchPoolMetricForbidden:
		response := &MatchPoolMetricResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchPoolMetricNotFound:
		response := &MatchPoolMetricResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *MatchPoolMetricInternalServerError:
		response := &MatchPoolMetricResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PostMatchErrorMetricShort post metrics for external flow failure in a specific match pool
Post metrics for external flow failure in a specific match pool
*/
func (a *Client) PostMatchErrorMetricShort(params *PostMatchErrorMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PostMatchErrorMetricResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPostMatchErrorMetricParams()
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
		ID:                 "PostMatchErrorMetric",
		Method:             "POST",
		PathPattern:        "/match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PostMatchErrorMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PostMatchErrorMetricNoContent:
		response := &PostMatchErrorMetricResponse{}

		response.IsSuccess = true

		return response, nil
	case *PostMatchErrorMetricBadRequest:
		response := &PostMatchErrorMetricResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostMatchErrorMetricUnauthorized:
		response := &PostMatchErrorMetricResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostMatchErrorMetricForbidden:
		response := &PostMatchErrorMetricResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostMatchErrorMetricNotFound:
		response := &PostMatchErrorMetricResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PostMatchErrorMetricInternalServerError:
		response := &PostMatchErrorMetricResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPlayerMetricShort get metrics player for a specific match pool
Get player metric for a specific match pool
*/
func (a *Client) GetPlayerMetricShort(params *GetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetPlayerMetricResponse, error) {
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
		response := &GetPlayerMetricResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPlayerMetricUnauthorized:
		response := &GetPlayerMetricResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerMetricForbidden:
		response := &GetPlayerMetricResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerMetricNotFound:
		response := &GetPlayerMetricResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetPlayerMetricInternalServerError:
		response := &GetPlayerMetricResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMatchPoolTicketsShort get tickets in queue for a specific match pool
Get tickets in queue for a specific match pool

Result: number of tickets and list of ticket detail in a match pool.
*/
func (a *Client) AdminGetMatchPoolTicketsShort(params *AdminGetMatchPoolTicketsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchPoolTicketsResponse, error) {
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
		response := &AdminGetMatchPoolTicketsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetMatchPoolTicketsUnauthorized:
		response := &AdminGetMatchPoolTicketsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMatchPoolTicketsForbidden:
		response := &AdminGetMatchPoolTicketsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMatchPoolTicketsNotFound:
		response := &AdminGetMatchPoolTicketsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetMatchPoolTicketsInternalServerError:
		response := &AdminGetMatchPoolTicketsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetPlayerMetricShort get metrics player for a specific match pool
Public get player metric for a specific match pool
*/
func (a *Client) PublicGetPlayerMetricShort(params *PublicGetPlayerMetricParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetPlayerMetricResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetPlayerMetricParams()
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
		ID:                 "PublicGetPlayerMetric",
		Method:             "GET",
		PathPattern:        "/match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetPlayerMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetPlayerMetricOK:
		response := &PublicGetPlayerMetricResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetPlayerMetricUnauthorized:
		response := &PublicGetPlayerMetricResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerMetricForbidden:
		response := &PublicGetPlayerMetricResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerMetricNotFound:
		response := &PublicGetPlayerMetricResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetPlayerMetricInternalServerError:
		response := &PublicGetPlayerMetricResponse{}
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
