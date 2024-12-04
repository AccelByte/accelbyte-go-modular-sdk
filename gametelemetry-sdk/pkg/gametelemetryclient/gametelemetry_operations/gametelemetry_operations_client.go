// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gametelemetry_operations

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new gametelemetry operations API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for gametelemetry operations API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(params *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostResponse, error)
	ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(params *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetResponse, error)
	ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(params *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort protected save events
This endpoint requires valid JWT token.
This endpoint does not require permission.

This endpoint send events into designated streaming pipeline and each request can contain single or multiple events.


Format of the event:

- **EventNamespace (required)**: Namespace of the relevant game with domain name format.


Only accept input with valid characters. Allowed characters: Aa-Zz0-9_.-




It is encouraged to use alphanumeric only characters. _.- will be deprecated soon




Example: accelbyte



- **EventName (required)**: Name of the event.


Only accept input with valid characters. Allowed characters: Aa-Zz0-9_.-




It is encouraged to use alphanumeric only characters. _.- will be deprecated soon




Example: player_killed, mission_accomplished



- **Payload (required)**: An arbitrary json with the payload of the said event.


Default maximum payload size is 1MB



- **ClientTimestamp (optional)**: Timestamp of the event captured by the client SDK.

- **DeviceType (optional)**: The device type of the user.
*/
func (a *Client) ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostShort(params *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams()
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
		ID:                 "protected_save_events_game_telemetry_v1_protected_events_post",
		Method:             "POST",
		PathPattern:        "/game-telemetry/v1/protected/events",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostNoContent:
		response := &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostResponse{}

		response.IsSuccess = true

		return response, nil
	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostUnprocessableEntity:
		response := &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInternalServerError:
		response := &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostInsufficientStorage:
		response := &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostResponse{}
		response.Error507 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort protected get playtime
This endpoint requires valid JWT token.
This endpoint does not require permission.

This endpoint retrieves player's total playtime in Steam for a specific game (AppId) and store them in service's cache.

Players' Steam account must be set into public to enable the service fetch their total playtime data.
*/
func (a *Client) ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetShort(params *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetParams()
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
		ID:                 "protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get",
		Method:             "GET",
		PathPattern:        "/game-telemetry/v1/protected/steamIds/{steamId}/playtime",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK:
		response := &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound:
		response := &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity:
		response := &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError:
		response := &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort protected update playtime
This endpoint requires valid JWT token.
This endpoint does not require permission.

This endpoint update player's total playtime in a specific game (AppId) from service's cache.
*/
func (a *Client) ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutShort(params *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams, authInfo runtime.ClientAuthInfoWriter) (*ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutParams()
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
		ID:                 "protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put",
		Method:             "PUT",
		PathPattern:        "/game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutOK:
		response := &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutNotFound:
		response := &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutUnprocessableEntity:
		response := &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v
	case *ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutInternalServerError:
		response := &ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimePlaytimePutResponse{}
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
