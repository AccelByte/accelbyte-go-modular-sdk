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
	AdminQueryGameSessionDetailShort(params *AdminQueryGameSessionDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionDetailOK, error)
	GetGameSessionDetailShort(params *GetGameSessionDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionDetailOK, error)
	AdminQueryMatchmakingDetailShort(params *AdminQueryMatchmakingDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryMatchmakingDetailOK, error)
	AdminGetMatchmakingDetailBySessionIDShort(params *AdminGetMatchmakingDetailBySessionIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchmakingDetailBySessionIDOK, error)
	AdminGetMatchmakingDetailByTicketIDShort(params *AdminGetMatchmakingDetailByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchmakingDetailByTicketIDOK, error)
	AdminQueryPartyDetailShort(params *AdminQueryPartyDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartyDetailOK, error)
	GetPartyDetailShort(params *GetPartyDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetPartyDetailOK, error)
	AdminQueryTicketDetailShort(params *AdminQueryTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTicketDetailOK, error)
	AdminTicketDetailGetByTicketIDShort(params *AdminTicketDetailGetByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTicketDetailGetByTicketIDOK, error)
	PublicQueryGameSessionMeShort(params *PublicQueryGameSessionMeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionMeOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminQueryGameSessionDetailShort get all game sessions history.
Get all game sessions.
*/
func (a *Client) AdminQueryGameSessionDetailShort(params *AdminQueryGameSessionDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryGameSessionDetailOK, error) {
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
		return v, nil
	case *AdminQueryGameSessionDetailBadRequest:
		return nil, v
	case *AdminQueryGameSessionDetailUnauthorized:
		return nil, v
	case *AdminQueryGameSessionDetailForbidden:
		return nil, v
	case *AdminQueryGameSessionDetailInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetGameSessionDetailShort get game session detail.
Get game session detail.
*/
func (a *Client) GetGameSessionDetailShort(params *GetGameSessionDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetGameSessionDetailOK, error) {
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
		return v, nil
	case *GetGameSessionDetailBadRequest:
		return nil, v
	case *GetGameSessionDetailUnauthorized:
		return nil, v
	case *GetGameSessionDetailForbidden:
		return nil, v
	case *GetGameSessionDetailNotFound:
		return nil, v
	case *GetGameSessionDetailInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryMatchmakingDetailShort get all matchmaking history.
Get all matchmaking.
*/
func (a *Client) AdminQueryMatchmakingDetailShort(params *AdminQueryMatchmakingDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryMatchmakingDetailOK, error) {
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
		return v, nil
	case *AdminQueryMatchmakingDetailBadRequest:
		return nil, v
	case *AdminQueryMatchmakingDetailUnauthorized:
		return nil, v
	case *AdminQueryMatchmakingDetailForbidden:
		return nil, v
	case *AdminQueryMatchmakingDetailInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMatchmakingDetailBySessionIDShort get detail matchmaking history by session id.
Get detail matchmaking history by session ID.
*/
func (a *Client) AdminGetMatchmakingDetailBySessionIDShort(params *AdminGetMatchmakingDetailBySessionIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchmakingDetailBySessionIDOK, error) {
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
		return v, nil
	case *AdminGetMatchmakingDetailBySessionIDBadRequest:
		return nil, v
	case *AdminGetMatchmakingDetailBySessionIDUnauthorized:
		return nil, v
	case *AdminGetMatchmakingDetailBySessionIDForbidden:
		return nil, v
	case *AdminGetMatchmakingDetailBySessionIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetMatchmakingDetailByTicketIDShort get detail matchmaking history by ticket id.
Get detail matchmaking history by ticket ID.
*/
func (a *Client) AdminGetMatchmakingDetailByTicketIDShort(params *AdminGetMatchmakingDetailByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetMatchmakingDetailByTicketIDOK, error) {
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
		return v, nil
	case *AdminGetMatchmakingDetailByTicketIDBadRequest:
		return nil, v
	case *AdminGetMatchmakingDetailByTicketIDUnauthorized:
		return nil, v
	case *AdminGetMatchmakingDetailByTicketIDForbidden:
		return nil, v
	case *AdminGetMatchmakingDetailByTicketIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryPartyDetailShort get all parties history.
Get all parties.
*/
func (a *Client) AdminQueryPartyDetailShort(params *AdminQueryPartyDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryPartyDetailOK, error) {
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
		return v, nil
	case *AdminQueryPartyDetailBadRequest:
		return nil, v
	case *AdminQueryPartyDetailUnauthorized:
		return nil, v
	case *AdminQueryPartyDetailForbidden:
		return nil, v
	case *AdminQueryPartyDetailInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetPartyDetailShort get party detail.
Get party detail.
*/
func (a *Client) GetPartyDetailShort(params *GetPartyDetailParams, authInfo runtime.ClientAuthInfoWriter) (*GetPartyDetailOK, error) {
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
		return v, nil
	case *GetPartyDetailBadRequest:
		return nil, v
	case *GetPartyDetailUnauthorized:
		return nil, v
	case *GetPartyDetailForbidden:
		return nil, v
	case *GetPartyDetailNotFound:
		return nil, v
	case *GetPartyDetailInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminQueryTicketDetailShort get all matchmaking ticket history.
Get all matchmaking ticket.
*/
func (a *Client) AdminQueryTicketDetailShort(params *AdminQueryTicketDetailParams, authInfo runtime.ClientAuthInfoWriter) (*AdminQueryTicketDetailOK, error) {
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
		return v, nil
	case *AdminQueryTicketDetailBadRequest:
		return nil, v
	case *AdminQueryTicketDetailUnauthorized:
		return nil, v
	case *AdminQueryTicketDetailForbidden:
		return nil, v
	case *AdminQueryTicketDetailInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminTicketDetailGetByTicketIDShort get detail matchmaking ticket history by ticket id.
Get detail matchmaking ticket history by ticket ID.
*/
func (a *Client) AdminTicketDetailGetByTicketIDShort(params *AdminTicketDetailGetByTicketIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminTicketDetailGetByTicketIDOK, error) {
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
		return v, nil
	case *AdminTicketDetailGetByTicketIDBadRequest:
		return nil, v
	case *AdminTicketDetailGetByTicketIDUnauthorized:
		return nil, v
	case *AdminTicketDetailGetByTicketIDForbidden:
		return nil, v
	case *AdminTicketDetailGetByTicketIDInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicQueryGameSessionMeShort get all game sessions history for current user.
Get all game sessions history for current user.
*/
func (a *Client) PublicQueryGameSessionMeShort(params *PublicQueryGameSessionMeParams, authInfo runtime.ClientAuthInfoWriter) (*PublicQueryGameSessionMeOK, error) {
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
		return v, nil
	case *PublicQueryGameSessionMeBadRequest:
		return nil, v
	case *PublicQueryGameSessionMeUnauthorized:
		return nil, v
	case *PublicQueryGameSessionMeForbidden:
		return nil, v
	case *PublicQueryGameSessionMeTooManyRequests:
		return nil, v
	case *PublicQueryGameSessionMeInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
