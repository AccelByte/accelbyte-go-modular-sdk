// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package server

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new server API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for server API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ListServerClientShort(params *ListServerClientParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerClientResponse, error)
	CountServerDetailedClientShort(params *CountServerDetailedClientParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerDetailedClientResponse, error)
	ServerHeartbeatShort(params *ServerHeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHeartbeatResponse, error)
	DeregisterLocalServerShort(params *DeregisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeregisterLocalServerResponse, error)
	RegisterLocalServerShort(params *RegisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterLocalServerResponse, error)
	RegisterServerShort(params *RegisterServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterServerResponse, error)
	ShutdownServerShort(params *ShutdownServerParams, authInfo runtime.ClientAuthInfoWriter) (*ShutdownServerResponse, error)
	GetServerSessionTimeoutShort(params *GetServerSessionTimeoutParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionTimeoutResponse, error)
	GetServerSessionShort(params *GetServerSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ListServerClientShort list all managed servers in a region for client
Required permission: NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint lists all of dedicated servers in a namespace managed by this service.

Parameter Offset and Count is Required
*/
func (a *Client) ListServerClientShort(params *ListServerClientParams, authInfo runtime.ClientAuthInfoWriter) (*ListServerClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewListServerClientParams()
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
		ID:                 "ListServerClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ListServerClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ListServerClientOK:
		response := &ListServerClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ListServerClientUnauthorized:
		response := &ListServerClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ListServerClientInternalServerError:
		response := &ListServerClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CountServerDetailedClientShort get detailed count of managed servers in a region
Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

Required scope: social

This endpoint counts all of dedicated servers in a region managed by this service.
*/
func (a *Client) CountServerDetailedClientShort(params *CountServerDetailedClientParams, authInfo runtime.ClientAuthInfoWriter) (*CountServerDetailedClientResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCountServerDetailedClientParams()
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
		ID:                 "CountServerDetailedClient",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/count/detailed",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CountServerDetailedClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CountServerDetailedClientOK:
		response := &CountServerDetailedClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CountServerDetailedClientUnauthorized:
		response := &CountServerDetailedClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CountServerDetailedClientInternalServerError:
		response := &CountServerDetailedClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ServerHeartbeatShort server heartbeat
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by dedicated server
which already has claimed to extend its lifetime.
DS should call this periodically after it claimed.
The timeframe between 2 heartbeat call should be smaller than
the session timout in the deployment configuration.
If the last heartbeat is longer than the session timout, the server.
will be considered as expired and will be terminated by DSMC.```
*/
func (a *Client) ServerHeartbeatShort(params *ServerHeartbeatParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHeartbeatResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewServerHeartbeatParams()
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
		ID:                 "ServerHeartbeat",
		Method:             "PUT",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/heartbeat",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ServerHeartbeatReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ServerHeartbeatAccepted:
		response := &ServerHeartbeatResponse{}

		response.IsSuccess = true

		return response, nil
	case *ServerHeartbeatBadRequest:
		response := &ServerHeartbeatResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ServerHeartbeatUnauthorized:
		response := &ServerHeartbeatResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ServerHeartbeatNotFound:
		response := &ServerHeartbeatResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ServerHeartbeatInternalServerError:
		response := &ServerHeartbeatResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeregisterLocalServerShort deregister local ds
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by local dedicated server
to let DSM know that it is shutting down.

Calling this will remove the server records from DB.```
*/
func (a *Client) DeregisterLocalServerShort(params *DeregisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*DeregisterLocalServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeregisterLocalServerParams()
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
		ID:                 "DeregisterLocalServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/local/deregister",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeregisterLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeregisterLocalServerNoContent:
		response := &DeregisterLocalServerResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeregisterLocalServerBadRequest:
		response := &DeregisterLocalServerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeregisterLocalServerUnauthorized:
		response := &DeregisterLocalServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeregisterLocalServerInternalServerError:
		response := &DeregisterLocalServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RegisterLocalServerShort register a local ds
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

Use the alternative GET of the same endpoint to upgrade DS connection to DSM via websocket.

This endpoint is intended to be called by local dedicated server to let DSM know that it is ready for use.
Use local DS only for development purposes since DSM wouldn't be able to properly manage local DS in production.
This MUST be called by DS after it is ready to accept match data and incoming client connections.

Upon successfully calling this endpoint, the dedicated
server is listed under READY local servers.```
*/
func (a *Client) RegisterLocalServerShort(params *RegisterLocalServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterLocalServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterLocalServerParams()
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
		ID:                 "RegisterLocalServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/local/register",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterLocalServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RegisterLocalServerOK:
		response := &RegisterLocalServerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RegisterLocalServerBadRequest:
		response := &RegisterLocalServerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RegisterLocalServerUnauthorized:
		response := &RegisterLocalServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RegisterLocalServerConflict:
		response := &RegisterLocalServerResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RegisterLocalServerInternalServerError:
		response := &RegisterLocalServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RegisterServerShort register a ds
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by dedicated server to let DSM know that it is ready for use.
This MUST be called by DS after it is ready to accept match data and incoming client connections.

Upon successfully calling this endpoint, the dedicated
server is listed under READY servers.```
*/
func (a *Client) RegisterServerShort(params *RegisterServerParams, authInfo runtime.ClientAuthInfoWriter) (*RegisterServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRegisterServerParams()
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
		ID:                 "RegisterServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/register",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RegisterServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RegisterServerOK:
		response := &RegisterServerResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RegisterServerBadRequest:
		response := &RegisterServerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RegisterServerUnauthorized:
		response := &RegisterServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RegisterServerNotFound:
		response := &RegisterServerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RegisterServerConflict:
		response := &RegisterServerResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RegisterServerInternalServerError:
		response := &RegisterServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ShutdownServerShort mark a ds is shutting down
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

Required scope: social

This endpoint is intended to be called by dedicated server to let DSM know that it is shutting down. Calling this will remove the server and session records from DB.Set 'kill_me' in request to 'true' if the DS cannot shut itself down.
*/
func (a *Client) ShutdownServerShort(params *ShutdownServerParams, authInfo runtime.ClientAuthInfoWriter) (*ShutdownServerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewShutdownServerParams()
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
		ID:                 "ShutdownServer",
		Method:             "POST",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/shutdown",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ShutdownServerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ShutdownServerNoContent:
		response := &ShutdownServerResponse{}

		response.IsSuccess = true

		return response, nil
	case *ShutdownServerBadRequest:
		response := &ShutdownServerResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ShutdownServerUnauthorized:
		response := &ShutdownServerResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ShutdownServerNotFound:
		response := &ShutdownServerResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ShutdownServerInternalServerError:
		response := &ShutdownServerResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServerSessionTimeoutShort get the session timeout that will be used for the server
```
Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]
Required scope: social

This endpoint is intended to be called by dedicated server
to get the session timeout that will be used for the DS.
DS will use this session timeout to make sure it regularly make heartbeat
call to the DSMC, before the session timeout.```
*/
func (a *Client) GetServerSessionTimeoutShort(params *GetServerSessionTimeoutParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionTimeoutResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerSessionTimeoutParams()
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
		ID:                 "GetServerSessionTimeout",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerSessionTimeoutReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServerSessionTimeoutOK:
		response := &GetServerSessionTimeoutResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetServerSessionTimeoutBadRequest:
		response := &GetServerSessionTimeoutResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetServerSessionTimeoutUnauthorized:
		response := &GetServerSessionTimeoutResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetServerSessionTimeoutNotFound:
		response := &GetServerSessionTimeoutResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetServerSessionTimeoutInternalServerError:
		response := &GetServerSessionTimeoutResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetServerSessionShort get session id
```
Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
Required scope: social

This endpoint is intended to be called by dedicated server
to query its session ID.
DS should call this when it first receive player connection,
to see if it is actually claimed```
*/
func (a *Client) GetServerSessionShort(params *GetServerSessionParams, authInfo runtime.ClientAuthInfoWriter) (*GetServerSessionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetServerSessionParams()
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
		ID:                 "GetServerSession",
		Method:             "GET",
		PathPattern:        "/dsmcontroller/namespaces/{namespace}/servers/{podName}/session",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetServerSessionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetServerSessionOK:
		response := &GetServerSessionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetServerSessionBadRequest:
		response := &GetServerSessionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetServerSessionUnauthorized:
		response := &GetServerSessionResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetServerSessionNotFound:
		response := &GetServerSessionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GetServerSessionInternalServerError:
		response := &GetServerSessionResponse{}
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
