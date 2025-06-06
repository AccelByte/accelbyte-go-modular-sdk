// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ttl_config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new ttl config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for ttl config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DeleteAdminGameRecordTTLConfigShort(params *DeleteAdminGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminGameRecordTTLConfigResponse, error)
	DeleteGameBinaryRecordTTLConfigShort(params *DeleteGameBinaryRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordTTLConfigResponse, error)
	DeleteGameRecordTTLConfigShort(params *DeleteGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordTTLConfigResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
DeleteAdminGameRecordTTLConfigShort delete admin game record ttl config
## Description

This endpoints will delete the ttl config of the admin game record
*/
func (a *Client) DeleteAdminGameRecordTTLConfigShort(params *DeleteAdminGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminGameRecordTTLConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteAdminGameRecordTTLConfigParams()
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
		ID:                 "deleteAdminGameRecordTTLConfig",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/adminrecords/{key}/ttl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteAdminGameRecordTTLConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteAdminGameRecordTTLConfigNoContent:
		response := &DeleteAdminGameRecordTTLConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteAdminGameRecordTTLConfigBadRequest:
		response := &DeleteAdminGameRecordTTLConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAdminGameRecordTTLConfigUnauthorized:
		response := &DeleteAdminGameRecordTTLConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAdminGameRecordTTLConfigForbidden:
		response := &DeleteAdminGameRecordTTLConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAdminGameRecordTTLConfigNotFound:
		response := &DeleteAdminGameRecordTTLConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteAdminGameRecordTTLConfigInternalServerError:
		response := &DeleteAdminGameRecordTTLConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameBinaryRecordTTLConfigShort delete game binary record ttl config
## Description

This endpoints will delete the ttl config of the game binary record
*/
func (a *Client) DeleteGameBinaryRecordTTLConfigShort(params *DeleteGameBinaryRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordTTLConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameBinaryRecordTTLConfigParams()
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
		ID:                 "deleteGameBinaryRecordTTLConfig",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/binaries/{key}/ttl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameBinaryRecordTTLConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameBinaryRecordTTLConfigNoContent:
		response := &DeleteGameBinaryRecordTTLConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGameBinaryRecordTTLConfigBadRequest:
		response := &DeleteGameBinaryRecordTTLConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameBinaryRecordTTLConfigUnauthorized:
		response := &DeleteGameBinaryRecordTTLConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameBinaryRecordTTLConfigForbidden:
		response := &DeleteGameBinaryRecordTTLConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameBinaryRecordTTLConfigNotFound:
		response := &DeleteGameBinaryRecordTTLConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameBinaryRecordTTLConfigInternalServerError:
		response := &DeleteGameBinaryRecordTTLConfigResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameRecordTTLConfigShort delete game record ttl config
## Description

This endpoints will delete the ttl config of the game record
*/
func (a *Client) DeleteGameRecordTTLConfigShort(params *DeleteGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordTTLConfigResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteGameRecordTTLConfigParams()
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
		ID:                 "deleteGameRecordTTLConfig",
		Method:             "DELETE",
		PathPattern:        "/cloudsave/v1/admin/namespaces/{namespace}/records/{key}/ttl",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteGameRecordTTLConfigReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteGameRecordTTLConfigNoContent:
		response := &DeleteGameRecordTTLConfigResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteGameRecordTTLConfigBadRequest:
		response := &DeleteGameRecordTTLConfigResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameRecordTTLConfigUnauthorized:
		response := &DeleteGameRecordTTLConfigResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameRecordTTLConfigForbidden:
		response := &DeleteGameRecordTTLConfigResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameRecordTTLConfigNotFound:
		response := &DeleteGameRecordTTLConfigResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteGameRecordTTLConfigInternalServerError:
		response := &DeleteGameRecordTTLConfigResponse{}
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
