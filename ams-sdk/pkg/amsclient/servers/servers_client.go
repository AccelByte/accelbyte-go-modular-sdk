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
	FleetServerHistoryShort(params *FleetServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerHistoryResponse, error)
	FleetServerInfoShort(params *FleetServerInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerInfoResponse, error)
	FleetServerConnectionInfoShort(params *FleetServerConnectionInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerConnectionInfoResponse, error)
	ServerHistoryShort(params *ServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHistoryResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
FleetServerHistoryShort get history records of a dedicated server in a fleet
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServerHistoryShort(params *FleetServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerHistoryResponse, error) {
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
		response := &FleetServerHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetServerHistoryBadRequest:
		response := &FleetServerHistoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServerHistoryUnauthorized:
		response := &FleetServerHistoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServerHistoryForbidden:
		response := &FleetServerHistoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServerHistoryInternalServerError:
		response := &FleetServerHistoryResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetServerInfoShort get information about a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) FleetServerInfoShort(params *FleetServerInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerInfoResponse, error) {
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
		response := &FleetServerInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetServerInfoUnauthorized:
		response := &FleetServerInfoResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServerInfoForbidden:
		response := &FleetServerInfoResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServerInfoNotFound:
		response := &FleetServerInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServerInfoInternalServerError:
		response := &FleetServerInfoResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
FleetServerConnectionInfoShort get connection info for a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:DS:LOGS [READ]
*/
func (a *Client) FleetServerConnectionInfoShort(params *FleetServerConnectionInfoParams, authInfo runtime.ClientAuthInfoWriter) (*FleetServerConnectionInfoResponse, error) {
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
		response := &FleetServerConnectionInfoResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *FleetServerConnectionInfoUnauthorized:
		response := &FleetServerConnectionInfoResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServerConnectionInfoForbidden:
		response := &FleetServerConnectionInfoResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServerConnectionInfoNotFound:
		response := &FleetServerConnectionInfoResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *FleetServerConnectionInfoInternalServerError:
		response := &FleetServerConnectionInfoResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ServerHistoryShort get history records of a dedicated server
Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]
*/
func (a *Client) ServerHistoryShort(params *ServerHistoryParams, authInfo runtime.ClientAuthInfoWriter) (*ServerHistoryResponse, error) {
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
		response := &ServerHistoryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ServerHistoryBadRequest:
		response := &ServerHistoryResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ServerHistoryUnauthorized:
		response := &ServerHistoryResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ServerHistoryForbidden:
		response := &ServerHistoryResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ServerHistoryInternalServerError:
		response := &ServerHistoryResponse{}
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
