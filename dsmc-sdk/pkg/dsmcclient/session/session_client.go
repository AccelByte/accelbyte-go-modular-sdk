// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new session API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for session API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	CreateSessionShort(params *CreateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSessionOK, error)
	ClaimServerShort(params *ClaimServerParams, authInfo runtime.ClientAuthInfoWriter) (*ClaimServerNoContent, error)
	GetSessionShort(params *GetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionOK, error)
	CancelSessionShort(params *CancelSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CancelSessionNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
CreateSessionShort register a new game session
Required permission: NAMESPACE:{namespace}:DSM:SESSION [CREATE]

Required scope: social

This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to get a dedicated server for a game session.

If a dedicated server is available, it will respond with a dedicated server details ready to be used.

Otherwise it will trigger new dedicated server creation and respond with a server status CREATING. The game session manager then expected to wait and query the server readiness with GET /namespaces/{namespace}/sessions/{sessionID} endpoint until the serverstatus is READY

Specify pod_name with name of local DS in the request to create a session using the registered local DS
*/
func (a *Client) CreateSessionShort(params *CreateSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateSessionParams()
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
		ID:                 "CreateSession",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/sessions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateSessionOK:
		return v, nil
	case *CreateSessionBadRequest:
		return nil, v
	case *CreateSessionUnauthorized:
		return nil, v
	case *CreateSessionNotFound:
		return nil, v
	case *CreateSessionConflict:
		return nil, v
	case *CreateSessionInternalServerError:
		return nil, v
	case *CreateSessionServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ClaimServerShort claim a ds for a game session
Required permission: NAMESPACE:{namespace}:DSM:SESSION [UPDATE]

Required scope: social

This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to claim a dedicated server. The dedicated server cannot be claimed unless the status is READY
*/
func (a *Client) ClaimServerShort(params *ClaimServerParams, authInfo runtime.ClientAuthInfoWriter) (*ClaimServerNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewClaimServerParams()
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
		ID:                 "ClaimServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/sessions/claim",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ClaimServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ClaimServerNoContent:
		return v, nil
	case *ClaimServerUnauthorized:
		return nil, v
	case *ClaimServerNotFound:
		return nil, v
	case *ClaimServerConflict:
		return nil, v
	case *ClaimServerTooEarly:
		return nil, v
	case *ClaimServerInternalServerError:
		return nil, v
	case *ClaimServerServiceUnavailable:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetSessionShort query specified session
Required permission: NAMESPACE:{namespace}:DSM:SESSION [READ]

Required scope: social

This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to query the status of dedicated server that is created for the session.

The server is ready to use when the status is READY. At which point, the game session manager can claim the server using the GET /namespaces/{namespace}/sessions/{sessionID}/claim endpoint
*/
func (a *Client) GetSessionShort(params *GetSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetSessionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetSessionParams()
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
		ID:                 "GetSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/sessions/{sessionID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetSessionOK:
		return v, nil
	case *GetSessionUnauthorized:
		return nil, v
	case *GetSessionNotFound:
		return nil, v
	case *GetSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CancelSessionShort cancel session of a temporary ds
Required permission: NAMESPACE:{namespace}:DSM:SESSION [DELETE]

Required scope: social

This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to cancel a temporary dedicated server. The dedicated server cannot be canceled unless the status is CREATING
*/
func (a *Client) CancelSessionShort(params *CancelSessionParams, authInfo runtime.ClientAuthInfoWriter) (*CancelSessionNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCancelSessionParams()
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
		ID:                 "CancelSession",
		Method:             "DELETE",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CancelSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CancelSessionNoContent:
		return v, nil
	case *CancelSessionUnauthorized:
		return nil, v
	case *CancelSessionNotFound:
		return nil, v
	case *CancelSessionUnprocessableEntity:
		return nil, v
	case *CancelSessionInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
