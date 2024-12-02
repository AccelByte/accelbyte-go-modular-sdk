// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	"context"
	"fmt"
	"io"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new matchmaking API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for matchmaking API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAllChannelsHandlerShort(params *GetAllChannelsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllChannelsHandlerResponse, error)
	CreateChannelHandlerShort(params *CreateChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelHandlerResponse, error)
	GetMatchPoolMetricShort(params *GetMatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetMatchPoolMetricResponse, error)
	DeleteChannelHandlerShort(params *DeleteChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelHandlerResponse, error)
	StoreMatchResultsShort(params *StoreMatchResultsParams, authInfo runtime.ClientAuthInfoWriter) (*StoreMatchResultsResponse, error)
	RebalanceShort(params *RebalanceParams, authInfo runtime.ClientAuthInfoWriter) (*RebalanceResponse, error)
	QueueSessionHandlerShort(params *QueueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueueSessionHandlerResponse, error)
	DequeueSessionHandlerShort(params *DequeueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DequeueSessionHandlerResponse, error)
	QuerySessionHandlerShort(params *QuerySessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySessionHandlerResponse, error)
	GetAllPartyInAllChannelShort(params *GetAllPartyInAllChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInAllChannelResponse, error)
	BulkGetSessionsShort(params *BulkGetSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetSessionsResponse, error)
	ExportChannelsShort(params *ExportChannelsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportChannelsResponse, error)
	ImportChannelsShort(params *ImportChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportChannelsResponse, error)
	GetSingleMatchmakingChannelShort(params *GetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleMatchmakingChannelResponse, error)
	UpdateMatchmakingChannelShort(params *UpdateMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchmakingChannelResponse, error)
	GetAllPartyInChannelShort(params *GetAllPartyInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInChannelResponse, error)
	GetAllSessionsInChannelShort(params *GetAllSessionsInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllSessionsInChannelResponse, error)
	AddUserIntoSessionInChannelShort(params *AddUserIntoSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserIntoSessionInChannelResponse, error)
	DeleteSessionInChannelShort(params *DeleteSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionInChannelResponse, error)
	DeleteUserFromSessionInChannelShort(params *DeleteUserFromSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserFromSessionInChannelResponse, error)
	GetStatDataShort(params *GetStatDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatDataResponse, error)
	SearchSessionsShort(params *SearchSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsResponse, error)
	GetSessionHistoryDetailedShort(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedResponse, error)
	PublicGetAllMatchmakingChannelShort(params *PublicGetAllMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAllMatchmakingChannelResponse, error)
	PublicGetSingleMatchmakingChannelShort(params *PublicGetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetSingleMatchmakingChannelResponse, error)
	SearchSessionsV2Short(params *SearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsV2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAllChannelsHandlerShort get all channels
Reads all available channels in a namespace
*/
func (a *Client) GetAllChannelsHandlerShort(params *GetAllChannelsHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllChannelsHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllChannelsHandlerParams()
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
		ID:                 "GetAllChannelsHandler",
		Method:             "GET",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllChannelsHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllChannelsHandlerOK:
		response := &GetAllChannelsHandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllChannelsHandlerBadRequest:
		response := &GetAllChannelsHandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllChannelsHandlerUnauthorized:
		response := &GetAllChannelsHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllChannelsHandlerForbidden:
		response := &GetAllChannelsHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllChannelsHandlerConflict:
		response := &GetAllChannelsHandlerResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllChannelsHandlerInternalServerError:
		response := &GetAllChannelsHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateChannelHandlerShort create a channel
Creates a new matchmaking channel.

Matchmaking channels is a list of pool name that is eligible for matchmaking processes.
GameMode isolates each matchmaking pools.

If match timeout is set to 0, by default, incoming matchmaking requests will be timed out after 1 hour.

If max worker delay is set to 0, by default, it will wait for at max ~8 seconds during low volume.

Rule Set

Matching Rule used to classify the player. Player that has matched criteria will be grouped together within an ally.

Valid value for criteria is "distance"
*/
func (a *Client) CreateChannelHandlerShort(params *CreateChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*CreateChannelHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateChannelHandlerParams()
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
		ID:                 "CreateChannelHandler",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateChannelHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateChannelHandlerCreated:
		response := &CreateChannelHandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateChannelHandlerBadRequest:
		response := &CreateChannelHandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateChannelHandlerUnauthorized:
		response := &CreateChannelHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateChannelHandlerForbidden:
		response := &CreateChannelHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateChannelHandlerConflict:
		response := &CreateChannelHandlerResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateChannelHandlerInternalServerError:
		response := &CreateChannelHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetMatchPoolMetricShort get metrics for a specific channel
Get metric for a specific match pool

Result: queue_time in seconds
*/
func (a *Client) GetMatchPoolMetricShort(params *GetMatchPoolMetricParams, authInfo runtime.ClientAuthInfoWriter) (*GetMatchPoolMetricResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetMatchPoolMetricParams()
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
		ID:                 "GetMatchPoolMetric",
		Method:             "GET",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels/{channelName}/metrics",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetMatchPoolMetricReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetMatchPoolMetricOK:
		response := &GetMatchPoolMetricResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetMatchPoolMetricUnauthorized:
		response := &GetMatchPoolMetricResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMatchPoolMetricForbidden:
		response := &GetMatchPoolMetricResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMatchPoolMetricNotFound:
		response := &GetMatchPoolMetricResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetMatchPoolMetricInternalServerError:
		response := &GetMatchPoolMetricResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteChannelHandlerShort delete a channel
Deletes a matchmaking channel. Matchmaking channels is a list of
pool name that is eligible for matchmaking processes. GameMode isolates each matchmaking pools.

Trying to delete non-existent channel will result deletion success
*/
func (a *Client) DeleteChannelHandlerShort(params *DeleteChannelHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteChannelHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteChannelHandlerParams()
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
		ID:                 "DeleteChannelHandler",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/namespaces/{namespace}/channels/{channel}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteChannelHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteChannelHandlerNoContent:
		response := &DeleteChannelHandlerResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteChannelHandlerUnauthorized:
		response := &DeleteChannelHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteChannelHandlerForbidden:
		response := &DeleteChannelHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteChannelHandlerInternalServerError:
		response := &DeleteChannelHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
StoreMatchResultsShort store match result
Process match result into final attribute value and stores it to player attribute

Will return final attribute value
*/
func (a *Client) StoreMatchResultsShort(params *StoreMatchResultsParams, authInfo runtime.ClientAuthInfoWriter) (*StoreMatchResultsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewStoreMatchResultsParams()
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
		ID:                 "StoreMatchResults",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/matchresult",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &StoreMatchResultsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *StoreMatchResultsOK:
		response := &StoreMatchResultsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *StoreMatchResultsBadRequest:
		response := &StoreMatchResultsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *StoreMatchResultsUnauthorized:
		response := &StoreMatchResultsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *StoreMatchResultsForbidden:
		response := &StoreMatchResultsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *StoreMatchResultsInternalServerError:
		response := &StoreMatchResultsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RebalanceShort rebalance matchmaking based on mmr
Do rebalance the teams based on MMR from given matchID,
consider attribute name "mmr" (case-insensitive),
or any first attribute with criteria "distance"

Will return rebalanced mm result
*/
func (a *Client) RebalanceShort(params *RebalanceParams, authInfo runtime.ClientAuthInfoWriter) (*RebalanceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRebalanceParams()
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
		ID:                 "Rebalance",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/rebalance",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RebalanceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RebalanceOK:
		response := &RebalanceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RebalanceBadRequest:
		response := &RebalanceResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RebalanceUnauthorized:
		response := &RebalanceResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RebalanceForbidden:
		response := &RebalanceResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RebalanceNotFound:
		response := &RebalanceResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RebalanceInternalServerError:
		response := &RebalanceResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QueueSessionHandlerShort queue joinable session
Queues joinable session so that it will be matched with player's match request tickets.
The session queued must be in a channel/game mode that is set to have joinable flag.
The session will be in queue until it is full or expired.
Both the number of players and session queue timeout can be set in the channel's config.

This endpoint is intended to be called by game server to let matchmaker know that
the game server is ready for receiving more players through matchmaking tickets to its session.

If a session is already queued, and game server wants to modify the data or
renew the queue timeout (e.g. some player left and more empty slot opened up),
simply call this endpoint with the updated session data.
*/
func (a *Client) QueueSessionHandlerShort(params *QueueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QueueSessionHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQueueSessionHandlerParams()
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
		ID:                 "QueueSessionHandler",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QueueSessionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QueueSessionHandlerNoContent:
		response := &QueueSessionHandlerResponse{}

		response.IsSuccess = true

		return response, nil
	case *QueueSessionHandlerBadRequest:
		response := &QueueSessionHandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QueueSessionHandlerUnauthorized:
		response := &QueueSessionHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QueueSessionHandlerForbidden:
		response := &QueueSessionHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QueueSessionHandlerInternalServerError:
		response := &QueueSessionHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DequeueSessionHandlerShort dequeue joinable session
Dequeues joinable session so that it will not be matched with player's match request tickets.

This endpoint is intended to be called by game server to let matchmaker know that
the game server does not want more players to its session, even though it is not full.
*/
func (a *Client) DequeueSessionHandlerShort(params *DequeueSessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*DequeueSessionHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDequeueSessionHandlerParams()
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
		ID:                 "DequeueSessionHandler",
		Method:             "POST",
		PathPattern:        "/matchmaking/namespaces/{namespace}/sessions/dequeue",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DequeueSessionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DequeueSessionHandlerNoContent:
		response := &DequeueSessionHandlerResponse{}

		response.IsSuccess = true

		return response, nil
	case *DequeueSessionHandlerBadRequest:
		response := &DequeueSessionHandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DequeueSessionHandlerUnauthorized:
		response := &DequeueSessionHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DequeueSessionHandlerForbidden:
		response := &DequeueSessionHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DequeueSessionHandlerNotFound:
		response := &DequeueSessionHandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DequeueSessionHandlerInternalServerError:
		response := &DequeueSessionHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QuerySessionHandlerShort query joinable session status
Queries the specified session's status. Game servers are expected to
call this periodically as long as it has a session in queue to see
if there are new players being matched to the session.

Possible session statuses are "sessionInQueue", "sessionFull", and "sessionTimeout".

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) QuerySessionHandlerShort(params *QuerySessionHandlerParams, authInfo runtime.ClientAuthInfoWriter) (*QuerySessionHandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQuerySessionHandlerParams()
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
		ID:                 "QuerySessionHandler",
		Method:             "GET",
		PathPattern:        "/matchmaking/namespaces/{namespace}/sessions/{matchID}/status",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QuerySessionHandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QuerySessionHandlerOK:
		response := &QuerySessionHandlerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QuerySessionHandlerBadRequest:
		response := &QuerySessionHandlerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QuerySessionHandlerUnauthorized:
		response := &QuerySessionHandlerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QuerySessionHandlerForbidden:
		response := &QuerySessionHandlerResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QuerySessionHandlerNotFound:
		response := &QuerySessionHandlerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QuerySessionHandlerInternalServerError:
		response := &QuerySessionHandlerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllPartyInAllChannelShort get all party in all channels
Get all parties queueing in all channels.
*/
func (a *Client) GetAllPartyInAllChannelShort(params *GetAllPartyInAllChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInAllChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPartyInAllChannelParams()
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
		ID:                 "GetAllPartyInAllChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/all/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPartyInAllChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllPartyInAllChannelOK:
		response := &GetAllPartyInAllChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllPartyInAllChannelBadRequest:
		response := &GetAllPartyInAllChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllPartyInAllChannelUnauthorized:
		response := &GetAllPartyInAllChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllPartyInAllChannelForbidden:
		response := &GetAllPartyInAllChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllPartyInAllChannelNotFound:
		response := &GetAllPartyInAllChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllPartyInAllChannelInternalServerError:
		response := &GetAllPartyInAllChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkGetSessionsShort bulk get sessions
Bulk get sessions.
*/
func (a *Client) BulkGetSessionsShort(params *BulkGetSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*BulkGetSessionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkGetSessionsParams()
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
		ID:                 "BulkGetSessions",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/all/sessions/bulk",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkGetSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkGetSessionsOK:
		response := &BulkGetSessionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkGetSessionsBadRequest:
		response := &BulkGetSessionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetSessionsUnauthorized:
		response := &BulkGetSessionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetSessionsForbidden:
		response := &BulkGetSessionsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetSessionsNotFound:
		response := &BulkGetSessionsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *BulkGetSessionsInternalServerError:
		response := &BulkGetSessionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ExportChannelsShort export channels
Export channels configuration to file.

Action Code: 510114
*/
func (a *Client) ExportChannelsShort(params *ExportChannelsParams, authInfo runtime.ClientAuthInfoWriter, writer io.Writer) (*ExportChannelsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewExportChannelsParams()
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
		ID:                 "ExportChannels",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/export",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ExportChannelsReader{formats: a.formats, writer: writer},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ExportChannelsOK:
		response := &ExportChannelsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ExportChannelsUnauthorized:
		response := &ExportChannelsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ExportChannelsForbidden:
		response := &ExportChannelsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ExportChannelsInternalServerError:
		response := &ExportChannelsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ImportChannelsShort import channels
Import channels configuration from file. It will merge with existing channels.
Available import strategy:
- leaveOut: if channel with same key exist, the existing will be used and imported one will be ignored (default)
- replace: if channel with same key exist, the imported channel will be used and existing one will be removed

Action Code: 510113
*/
func (a *Client) ImportChannelsShort(params *ImportChannelsParams, authInfo runtime.ClientAuthInfoWriter) (*ImportChannelsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewImportChannelsParams()
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
		ID:                 "ImportChannels",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/import",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"multipart/form-data"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ImportChannelsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ImportChannelsOK:
		response := &ImportChannelsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ImportChannelsBadRequest:
		response := &ImportChannelsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportChannelsUnauthorized:
		response := &ImportChannelsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportChannelsForbidden:
		response := &ImportChannelsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *ImportChannelsInternalServerError:
		response := &ImportChannelsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSingleMatchmakingChannelShort get single channel
Reads single channel based on namespace and channel name

Action Code: 510112
*/
func (a *Client) GetSingleMatchmakingChannelShort(params *GetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetSingleMatchmakingChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSingleMatchmakingChannelParams()
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
		ID:                 "GetSingleMatchmakingChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSingleMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSingleMatchmakingChannelOK:
		response := &GetSingleMatchmakingChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSingleMatchmakingChannelBadRequest:
		response := &GetSingleMatchmakingChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleMatchmakingChannelUnauthorized:
		response := &GetSingleMatchmakingChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleMatchmakingChannelForbidden:
		response := &GetSingleMatchmakingChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleMatchmakingChannelNotFound:
		response := &GetSingleMatchmakingChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSingleMatchmakingChannelInternalServerError:
		response := &GetSingleMatchmakingChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateMatchmakingChannelShort update a channel
Update channel based on namespace and channel name

Action Code: 510111
*/
func (a *Client) UpdateMatchmakingChannelShort(params *UpdateMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateMatchmakingChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateMatchmakingChannelParams()
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
		ID:                 "UpdateMatchmakingChannel",
		Method:             "PATCH",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateMatchmakingChannelNoContent:
		response := &UpdateMatchmakingChannelResponse{}

		response.IsSuccess = true

		return response, nil
	case *UpdateMatchmakingChannelBadRequest:
		response := &UpdateMatchmakingChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateMatchmakingChannelUnauthorized:
		response := &UpdateMatchmakingChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateMatchmakingChannelForbidden:
		response := &UpdateMatchmakingChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateMatchmakingChannelNotFound:
		response := &UpdateMatchmakingChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdateMatchmakingChannelInternalServerError:
		response := &UpdateMatchmakingChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllPartyInChannelShort get all party in a channel
Get all parties queueing in a channel.
*/
func (a *Client) GetAllPartyInChannelShort(params *GetAllPartyInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllPartyInChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllPartyInChannelParams()
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
		ID:                 "GetAllPartyInChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllPartyInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllPartyInChannelOK:
		response := &GetAllPartyInChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllPartyInChannelBadRequest:
		response := &GetAllPartyInChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllPartyInChannelUnauthorized:
		response := &GetAllPartyInChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllPartyInChannelForbidden:
		response := &GetAllPartyInChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllPartyInChannelNotFound:
		response := &GetAllPartyInChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllPartyInChannelInternalServerError:
		response := &GetAllPartyInChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetAllSessionsInChannelShort get all channel sessions
Get all sessions in a channel.

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) GetAllSessionsInChannelShort(params *GetAllSessionsInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*GetAllSessionsInChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAllSessionsInChannelParams()
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
		ID:                 "GetAllSessionsInChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAllSessionsInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAllSessionsInChannelOK:
		response := &GetAllSessionsInChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetAllSessionsInChannelBadRequest:
		response := &GetAllSessionsInChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllSessionsInChannelUnauthorized:
		response := &GetAllSessionsInChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllSessionsInChannelForbidden:
		response := &GetAllSessionsInChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllSessionsInChannelNotFound:
		response := &GetAllSessionsInChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetAllSessionsInChannelInternalServerError:
		response := &GetAllSessionsInChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddUserIntoSessionInChannelShort add user into the session in a channel
Add user into the session in a channel.
*/
func (a *Client) AddUserIntoSessionInChannelShort(params *AddUserIntoSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*AddUserIntoSessionInChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddUserIntoSessionInChannelParams()
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
		ID:                 "AddUserIntoSessionInChannel",
		Method:             "POST",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddUserIntoSessionInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddUserIntoSessionInChannelOK:
		response := &AddUserIntoSessionInChannelResponse{}

		response.IsSuccess = true

		return response, nil
	case *AddUserIntoSessionInChannelBadRequest:
		response := &AddUserIntoSessionInChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AddUserIntoSessionInChannelUnauthorized:
		response := &AddUserIntoSessionInChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AddUserIntoSessionInChannelForbidden:
		response := &AddUserIntoSessionInChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AddUserIntoSessionInChannelNotFound:
		response := &AddUserIntoSessionInChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AddUserIntoSessionInChannelInternalServerError:
		response := &AddUserIntoSessionInChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSessionInChannelShort delete session in a channel
Delete a session in a channel.
*/
func (a *Client) DeleteSessionInChannelShort(params *DeleteSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteSessionInChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSessionInChannelParams()
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
		ID:                 "DeleteSessionInChannel",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSessionInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSessionInChannelNoContent:
		response := &DeleteSessionInChannelResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteSessionInChannelBadRequest:
		response := &DeleteSessionInChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSessionInChannelUnauthorized:
		response := &DeleteSessionInChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSessionInChannelForbidden:
		response := &DeleteSessionInChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSessionInChannelNotFound:
		response := &DeleteSessionInChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteSessionInChannelInternalServerError:
		response := &DeleteSessionInChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteUserFromSessionInChannelShort delete user from the session in a channel
Delete a user from a session in the channel.
*/
func (a *Client) DeleteUserFromSessionInChannelShort(params *DeleteUserFromSessionInChannelParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteUserFromSessionInChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteUserFromSessionInChannelParams()
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
		ID:                 "DeleteUserFromSessionInChannel",
		Method:             "DELETE",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteUserFromSessionInChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteUserFromSessionInChannelOK:
		response := &DeleteUserFromSessionInChannelResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserFromSessionInChannelNoContent:
		response := &DeleteUserFromSessionInChannelResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteUserFromSessionInChannelBadRequest:
		response := &DeleteUserFromSessionInChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserFromSessionInChannelUnauthorized:
		response := &DeleteUserFromSessionInChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserFromSessionInChannelForbidden:
		response := &DeleteUserFromSessionInChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserFromSessionInChannelNotFound:
		response := &DeleteUserFromSessionInChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *DeleteUserFromSessionInChannelInternalServerError:
		response := &DeleteUserFromSessionInChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetStatDataShort get stats
Get a channel's stat data (mean, stddev, min, max) according to the stats collected from statistics service.
'
*/
func (a *Client) GetStatDataShort(params *GetStatDataParams, authInfo runtime.ClientAuthInfoWriter) (*GetStatDataResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetStatDataParams()
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
		ID:                 "GetStatData",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetStatDataReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetStatDataOK:
		response := &GetStatDataResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetStatDataBadRequest:
		response := &GetStatDataResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatDataUnauthorized:
		response := &GetStatDataResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatDataForbidden:
		response := &GetStatDataResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatDataNotFound:
		response := &GetStatDataResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetStatDataInternalServerError:
		response := &GetStatDataResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchSessionsShort search sessions






## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







Search sessions.
*/
func (a *Client) SearchSessionsShort(params *SearchSessionsParams, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchSessionsParams()
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
		ID:                 "SearchSessions",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchSessionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchSessionsOK:
		response := &SearchSessionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SearchSessionsBadRequest:
		response := &SearchSessionsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SearchSessionsUnauthorized:
		response := &SearchSessionsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SearchSessionsForbidden:
		response := &SearchSessionsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SearchSessionsNotFound:
		response := &SearchSessionsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SearchSessionsInternalServerError:
		response := &SearchSessionsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionHistoryDetailedShort get session history detailed






## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/{sessionId}/history/detailed [GET]







Get session history detailed.

if party_id value empty/null, field will not show in response body.
*/
func (a *Client) GetSessionHistoryDetailedShort(params *GetSessionHistoryDetailedParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionHistoryDetailedResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionHistoryDetailedParams()
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
		ID:                 "GetSessionHistoryDetailed",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionHistoryDetailedReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSessionHistoryDetailedOK:
		response := &GetSessionHistoryDetailedResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetSessionHistoryDetailedBadRequest:
		response := &GetSessionHistoryDetailedResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSessionHistoryDetailedUnauthorized:
		response := &GetSessionHistoryDetailedResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSessionHistoryDetailedForbidden:
		response := &GetSessionHistoryDetailedResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSessionHistoryDetailedNotFound:
		response := &GetSessionHistoryDetailedResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetSessionHistoryDetailedInternalServerError:
		response := &GetSessionHistoryDetailedResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetAllMatchmakingChannelShort get all channels
Reads all available channels in a namespace
*/
func (a *Client) PublicGetAllMatchmakingChannelShort(params *PublicGetAllMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetAllMatchmakingChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetAllMatchmakingChannelParams()
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
		ID:                 "PublicGetAllMatchmakingChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/public/namespaces/{namespace}/channels",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetAllMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetAllMatchmakingChannelOK:
		response := &PublicGetAllMatchmakingChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetAllMatchmakingChannelBadRequest:
		response := &PublicGetAllMatchmakingChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetAllMatchmakingChannelUnauthorized:
		response := &PublicGetAllMatchmakingChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetAllMatchmakingChannelForbidden:
		response := &PublicGetAllMatchmakingChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetAllMatchmakingChannelConflict:
		response := &PublicGetAllMatchmakingChannelResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetAllMatchmakingChannelInternalServerError:
		response := &PublicGetAllMatchmakingChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetSingleMatchmakingChannelShort get single channel
Reads single channel based on namespace and channel name
*/
func (a *Client) PublicGetSingleMatchmakingChannelShort(params *PublicGetSingleMatchmakingChannelParams, authInfo runtime.ClientAuthInfoWriter) (*PublicGetSingleMatchmakingChannelResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetSingleMatchmakingChannelParams()
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
		ID:                 "PublicGetSingleMatchmakingChannel",
		Method:             "GET",
		PathPattern:        "/matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetSingleMatchmakingChannelReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetSingleMatchmakingChannelOK:
		response := &PublicGetSingleMatchmakingChannelResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetSingleMatchmakingChannelBadRequest:
		response := &PublicGetSingleMatchmakingChannelResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetSingleMatchmakingChannelUnauthorized:
		response := &PublicGetSingleMatchmakingChannelResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetSingleMatchmakingChannelForbidden:
		response := &PublicGetSingleMatchmakingChannelResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetSingleMatchmakingChannelNotFound:
		response := &PublicGetSingleMatchmakingChannelResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicGetSingleMatchmakingChannelInternalServerError:
		response := &PublicGetSingleMatchmakingChannelResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SearchSessionsV2Short search sessions





## The endpoint is going to be deprecated


Endpoint migration guide




  * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.
*/
func (a *Client) SearchSessionsV2Short(params *SearchSessionsV2Params, authInfo runtime.ClientAuthInfoWriter) (*SearchSessionsV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSearchSessionsV2Params()
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
		ID:                 "SearchSessionsV2",
		Method:             "GET",
		PathPattern:        "/matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SearchSessionsV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SearchSessionsV2OK:
		response := &SearchSessionsV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SearchSessionsV2BadRequest:
		response := &SearchSessionsV2Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SearchSessionsV2Unauthorized:
		response := &SearchSessionsV2Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SearchSessionsV2Forbidden:
		response := &SearchSessionsV2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SearchSessionsV2NotFound:
		response := &SearchSessionsV2Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *SearchSessionsV2InternalServerError:
		response := &SearchSessionsV2Response{}
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
