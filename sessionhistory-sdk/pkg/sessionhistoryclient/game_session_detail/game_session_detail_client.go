// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_session_detail

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new game session detail API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for game session detail API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminQueryGameSessionDetailShort(params *AdminQueryGameSessionDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionDetailResponse, error)
	GetGameSessionDetailShort(params *GetGameSessionDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionDetailResponse, error)
	AdminQueryMatchmakingDetailShort(params *AdminQueryMatchmakingDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryMatchmakingDetailResponse, error)
	AdminGetMatchmakingDetailBySessionIDShort(params *AdminGetMatchmakingDetailBySessionIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchmakingDetailBySessionIDResponse, error)
	AdminGetMatchmakingDetailByTicketIDShort(params *AdminGetMatchmakingDetailByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchmakingDetailByTicketIDResponse, error)
	AdminQueryPartyDetailShort(params *AdminQueryPartyDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartyDetailResponse, error)
	GetPartyDetailShort(params *GetPartyDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetPartyDetailResponse, error)
	AdminQueryTicketDetailShort(params *AdminQueryTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTicketDetailResponse, error)
	AdminTicketDetailGetByTicketIDShort(params *AdminTicketDetailGetByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTicketDetailGetByTicketIDResponse, error)
	PublicQueryGameSessionMeShort(params *PublicQueryGameSessionMeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionMeResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminQueryGameSessionDetailShort get all game sessions history.
Get all game sessions.
*/
func (a *Client) AdminQueryGameSessionDetailShort(params *AdminQueryGameSessionDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionDetailResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryGameSessionDetailParams()
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
		ID:                 "adminQueryGameSessionDetail",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/namespaces/{namespace}/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryGameSessionDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryGameSessionDetailOK:
		response := &AdminQueryGameSessionDetailResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryGameSessionDetailBadRequest:
		response := &AdminQueryGameSessionDetailResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryGameSessionDetailUnauthorized:
		response := &AdminQueryGameSessionDetailResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryGameSessionDetailForbidden:
		response := &AdminQueryGameSessionDetailResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryGameSessionDetailInternalServerError:
		response := &AdminQueryGameSessionDetailResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameSessionDetailShort get game session detail.
Get game session detail.
*/
func (a *Client) GetGameSessionDetailShort(params *GetGameSessionDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionDetailResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetGameSessionDetailParams()
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
		ID:                 "getGameSessionDetail",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetGameSessionDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetGameSessionDetailOK:
		response := &GetGameSessionDetailResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetGameSessionDetailBadRequest:
		response := &GetGameSessionDetailResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameSessionDetailUnauthorized:
		response := &GetGameSessionDetailResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameSessionDetailForbidden:
		response := &GetGameSessionDetailResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameSessionDetailNotFound:
		response := &GetGameSessionDetailResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetGameSessionDetailInternalServerError:
		response := &GetGameSessionDetailResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryMatchmakingDetailShort get all matchmaking history.
Get all matchmaking.
*/
func (a *Client) AdminQueryMatchmakingDetailShort(params *AdminQueryMatchmakingDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryMatchmakingDetailResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryMatchmakingDetailParams()
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
		ID:                 "adminQueryMatchmakingDetail",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/namespaces/{namespace}/matchmaking",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryMatchmakingDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryMatchmakingDetailOK:
		response := &AdminQueryMatchmakingDetailResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryMatchmakingDetailBadRequest:
		response := &AdminQueryMatchmakingDetailResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryMatchmakingDetailUnauthorized:
		response := &AdminQueryMatchmakingDetailResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryMatchmakingDetailForbidden:
		response := &AdminQueryMatchmakingDetailResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryMatchmakingDetailInternalServerError:
		response := &AdminQueryMatchmakingDetailResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMatchmakingDetailBySessionIDShort get detail matchmaking history by session id.
Get detail matchmaking history by session ID.
*/
func (a *Client) AdminGetMatchmakingDetailBySessionIDShort(params *AdminGetMatchmakingDetailBySessionIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchmakingDetailBySessionIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMatchmakingDetailBySessionIDParams()
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
		ID:                 "adminGetMatchmakingDetailBySessionID",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/session/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMatchmakingDetailBySessionIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMatchmakingDetailBySessionIDOK:
		response := &AdminGetMatchmakingDetailBySessionIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetMatchmakingDetailBySessionIDBadRequest:
		response := &AdminGetMatchmakingDetailBySessionIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetMatchmakingDetailBySessionIDUnauthorized:
		response := &AdminGetMatchmakingDetailBySessionIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetMatchmakingDetailBySessionIDForbidden:
		response := &AdminGetMatchmakingDetailBySessionIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetMatchmakingDetailBySessionIDInternalServerError:
		response := &AdminGetMatchmakingDetailBySessionIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMatchmakingDetailByTicketIDShort get detail matchmaking history by ticket id.
Get detail matchmaking history by ticket ID.
*/
func (a *Client) AdminGetMatchmakingDetailByTicketIDShort(params *AdminGetMatchmakingDetailByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchmakingDetailByTicketIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetMatchmakingDetailByTicketIDParams()
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
		ID:                 "adminGetMatchmakingDetailByTicketID",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/ticket/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetMatchmakingDetailByTicketIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetMatchmakingDetailByTicketIDOK:
		response := &AdminGetMatchmakingDetailByTicketIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetMatchmakingDetailByTicketIDBadRequest:
		response := &AdminGetMatchmakingDetailByTicketIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetMatchmakingDetailByTicketIDUnauthorized:
		response := &AdminGetMatchmakingDetailByTicketIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetMatchmakingDetailByTicketIDForbidden:
		response := &AdminGetMatchmakingDetailByTicketIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetMatchmakingDetailByTicketIDInternalServerError:
		response := &AdminGetMatchmakingDetailByTicketIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryPartyDetailShort get all parties history.
Get all parties.
*/
func (a *Client) AdminQueryPartyDetailShort(params *AdminQueryPartyDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartyDetailResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryPartyDetailParams()
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
		ID:                 "adminQueryPartyDetail",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/namespaces/{namespace}/parties",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryPartyDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryPartyDetailOK:
		response := &AdminQueryPartyDetailResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryPartyDetailBadRequest:
		response := &AdminQueryPartyDetailResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryPartyDetailUnauthorized:
		response := &AdminQueryPartyDetailResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryPartyDetailForbidden:
		response := &AdminQueryPartyDetailResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryPartyDetailInternalServerError:
		response := &AdminQueryPartyDetailResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPartyDetailShort get party detail.
Get party detail.
*/
func (a *Client) GetPartyDetailShort(params *GetPartyDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetPartyDetailResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetPartyDetailParams()
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
		ID:                 "getPartyDetail",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetPartyDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetPartyDetailOK:
		response := &GetPartyDetailResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetPartyDetailBadRequest:
		response := &GetPartyDetailResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPartyDetailUnauthorized:
		response := &GetPartyDetailResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPartyDetailForbidden:
		response := &GetPartyDetailResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPartyDetailNotFound:
		response := &GetPartyDetailResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *GetPartyDetailInternalServerError:
		response := &GetPartyDetailResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryTicketDetailShort get all matchmaking ticket history.
Get all matchmaking ticket.
*/
func (a *Client) AdminQueryTicketDetailShort(params *AdminQueryTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTicketDetailResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminQueryTicketDetailParams()
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
		ID:                 "adminQueryTicketDetail",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/namespaces/{namespace}/tickets",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminQueryTicketDetailReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminQueryTicketDetailOK:
		response := &AdminQueryTicketDetailResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminQueryTicketDetailBadRequest:
		response := &AdminQueryTicketDetailResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryTicketDetailUnauthorized:
		response := &AdminQueryTicketDetailResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryTicketDetailForbidden:
		response := &AdminQueryTicketDetailResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminQueryTicketDetailInternalServerError:
		response := &AdminQueryTicketDetailResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTicketDetailGetByTicketIDShort get detail matchmaking ticket history by ticket id.
Get detail matchmaking ticket history by ticket ID.
*/
func (a *Client) AdminTicketDetailGetByTicketIDShort(params *AdminTicketDetailGetByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTicketDetailGetByTicketIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminTicketDetailGetByTicketIDParams()
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
		ID:                 "adminTicketDetailGetByTicketID",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/admin/namespaces/{namespace}/tickets/{ticketId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminTicketDetailGetByTicketIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminTicketDetailGetByTicketIDOK:
		response := &AdminTicketDetailGetByTicketIDResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminTicketDetailGetByTicketIDBadRequest:
		response := &AdminTicketDetailGetByTicketIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminTicketDetailGetByTicketIDUnauthorized:
		response := &AdminTicketDetailGetByTicketIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminTicketDetailGetByTicketIDForbidden:
		response := &AdminTicketDetailGetByTicketIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminTicketDetailGetByTicketIDInternalServerError:
		response := &AdminTicketDetailGetByTicketIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryGameSessionMeShort get all game sessions history for current user.
Get all game sessions history for current user.
*/
func (a *Client) PublicQueryGameSessionMeShort(params *PublicQueryGameSessionMeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionMeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicQueryGameSessionMeParams()
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
		ID:                 "publicQueryGameSessionMe",
		Method:             "GET",
		PathPattern:        "/sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicQueryGameSessionMeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicQueryGameSessionMeOK:
		response := &PublicQueryGameSessionMeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicQueryGameSessionMeBadRequest:
		response := &PublicQueryGameSessionMeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicQueryGameSessionMeUnauthorized:
		response := &PublicQueryGameSessionMeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicQueryGameSessionMeForbidden:
		response := &PublicQueryGameSessionMeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicQueryGameSessionMeTooManyRequests:
		response := &PublicQueryGameSessionMeResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublicQueryGameSessionMeInternalServerError:
		response := &PublicQueryGameSessionMeResponse{}
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
