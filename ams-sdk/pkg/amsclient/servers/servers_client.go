// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servers

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new servers API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for servers API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	FleetServerHistoryShort(params *FleetServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerHistoryOK, error)
	FleetServerInfoShort(params *FleetServerInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerInfoOK, error)
	FleetServerConnectionInfoShort(params *FleetServerConnectionInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerConnectionInfoOK, error)
	ServerHistoryShort(params *ServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHistoryOK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
FleetServerHistoryShort get history records of a dedicated server in a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServerHistoryShort(params *FleetServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServerHistoryParams()
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
		ID:                 "FleetServerHistory",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServerHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetServerHistoryOK:
		return v, nil
	case *FleetServerHistoryBadRequest:
		return nil, v
	case *FleetServerHistoryUnauthorized:
		return nil, v
	case *FleetServerHistoryForbidden:
		return nil, v
	case *FleetServerHistoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetServerInfoShort get information about a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServerInfoShort(params *FleetServerInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServerInfoParams()
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
		ID:                 "FleetServerInfo",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServerInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetServerInfoOK:
		return v, nil
	case *FleetServerInfoUnauthorized:
		return nil, v
	case *FleetServerInfoForbidden:
		return nil, v
	case *FleetServerInfoNotFound:
		return nil, v
	case *FleetServerInfoInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetServerConnectionInfoShort get connection info for a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:DS:LOGS [READ]
*/
func (a *Client) FleetServerConnectionInfoShort(params *FleetServerConnectionInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerConnectionInfoOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewFleetServerConnectionInfoParams()
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
		ID:                 "FleetServerConnectionInfo",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &FleetServerConnectionInfoReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *FleetServerConnectionInfoOK:
		return v, nil
	case *FleetServerConnectionInfoUnauthorized:
		return nil, v
	case *FleetServerConnectionInfoForbidden:
		return nil, v
	case *FleetServerConnectionInfoNotFound:
		return nil, v
	case *FleetServerConnectionInfoInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ServerHistoryShort get history records of a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) ServerHistoryShort(params *ServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHistoryOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewServerHistoryParams()
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
		ID:                 "ServerHistory",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/history",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ServerHistoryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ServerHistoryOK:
		return v, nil
	case *ServerHistoryBadRequest:
		return nil, v
	case *ServerHistoryUnauthorized:
		return nil, v
	case *ServerHistoryForbidden:
		return nil, v
	case *ServerHistoryInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
