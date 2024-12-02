// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package a_m_s_qo_s

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new a m s qo s API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for a m s qo s API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	QoSRegionsGetShort(params *QoSRegionsGetParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsGetResponse, error)
	QoSRegionsUpdateShort(params *QoSRegionsUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsUpdateResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
QoSRegionsGetShort get a list of available ams qos regions
```
Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [READ]

This endpoint lists all QoS services available in all regions.

This endpoint is intended to be called by game client to find out all available regions.
After getting a list of QoS on each region, game client is expected to ping each one with UDP
connection as described below:

1. Make UDP connection to each QoS's IP:Port
2. Send string "PING" after connection established
3. Wait for string "PONG" response
4. Note the request-response latency for each QoS in each region

The game then can use ping latency information to either:
1. Inform the player on these latencies and let player choose preferred region
2. Send the latency list to Matchmaking Service so that player can be matched with other players
in nearby regions
*/
func (a *Client) QoSRegionsGetShort(params *QoSRegionsGetParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQoSRegionsGetParams()
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
		ID:                 "QoSRegionsGet",
		Method:             "GET",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/qos",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QoSRegionsGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QoSRegionsGetOK:
		response := &QoSRegionsGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *QoSRegionsGetBadRequest:
		response := &QoSRegionsGetResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QoSRegionsGetUnauthorized:
		response := &QoSRegionsGetResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QoSRegionsGetForbidden:
		response := &QoSRegionsGetResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QoSRegionsGetInternalServerError:
		response := &QoSRegionsGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
QoSRegionsUpdateShort update the status of a qos region
```
Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [UPDATE]

This endpoint updates the registered QoS service's configurable configuration.
*/
func (a *Client) QoSRegionsUpdateShort(params *QoSRegionsUpdateParams, authInfo runtime.ClientAuthInfoWriter) (*QoSRegionsUpdateResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewQoSRegionsUpdateParams()
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
		ID:                 "QoSRegionsUpdate",
		Method:             "PATCH",
		PathPattern:        "/ams/v1/admin/namespaces/{namespace}/qos/{region}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &QoSRegionsUpdateReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *QoSRegionsUpdateNoContent:
		response := &QoSRegionsUpdateResponse{}

		response.IsSuccess = true

		return response, nil
	case *QoSRegionsUpdateBadRequest:
		response := &QoSRegionsUpdateResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QoSRegionsUpdateUnauthorized:
		response := &QoSRegionsUpdateResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QoSRegionsUpdateForbidden:
		response := &QoSRegionsUpdateResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QoSRegionsUpdateNotFound:
		response := &QoSRegionsUpdateResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *QoSRegionsUpdateInternalServerError:
		response := &QoSRegionsUpdateResponse{}
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
