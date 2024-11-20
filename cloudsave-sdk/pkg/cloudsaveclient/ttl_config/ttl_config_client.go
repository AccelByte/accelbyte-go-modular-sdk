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
	DeleteAdminGameRecordTTLConfigShort(params *DeleteAdminGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminGameRecordTTLConfigNoContent, error)
	DeleteGameBinaryRecordTTLConfigShort(params *DeleteGameBinaryRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordTTLConfigNoContent, error)
	DeleteGameRecordTTLConfigShort(params *DeleteGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordTTLConfigNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
DeleteAdminGameRecordTTLConfigShort delete admin game record ttl config
## Description

This endpoints will delete the ttl config of the admin game record
*/
func (a *Client) DeleteAdminGameRecordTTLConfigShort(params *DeleteAdminGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteAdminGameRecordTTLConfigNoContent, error) {
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
		return v, nil
	case *DeleteAdminGameRecordTTLConfigBadRequest:
		return nil, v
	case *DeleteAdminGameRecordTTLConfigUnauthorized:
		return nil, v
	case *DeleteAdminGameRecordTTLConfigForbidden:
		return nil, v
	case *DeleteAdminGameRecordTTLConfigNotFound:
		return nil, v
	case *DeleteAdminGameRecordTTLConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameBinaryRecordTTLConfigShort delete game binary record ttl config
## Description

This endpoints will delete the ttl config of the game binary record
*/
func (a *Client) DeleteGameBinaryRecordTTLConfigShort(params *DeleteGameBinaryRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameBinaryRecordTTLConfigNoContent, error) {
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
		return v, nil
	case *DeleteGameBinaryRecordTTLConfigBadRequest:
		return nil, v
	case *DeleteGameBinaryRecordTTLConfigUnauthorized:
		return nil, v
	case *DeleteGameBinaryRecordTTLConfigForbidden:
		return nil, v
	case *DeleteGameBinaryRecordTTLConfigNotFound:
		return nil, v
	case *DeleteGameBinaryRecordTTLConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteGameRecordTTLConfigShort delete game record ttl config
## Description

This endpoints will delete the ttl config of the game record
*/
func (a *Client) DeleteGameRecordTTLConfigShort(params *DeleteGameRecordTTLConfigParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteGameRecordTTLConfigNoContent, error) {
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
		return v, nil
	case *DeleteGameRecordTTLConfigBadRequest:
		return nil, v
	case *DeleteGameRecordTTLConfigUnauthorized:
		return nil, v
	case *DeleteGameRecordTTLConfigForbidden:
		return nil, v
	case *DeleteGameRecordTTLConfigNotFound:
		return nil, v
	case *DeleteGameRecordTTLConfigInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
