// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new config API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for config API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetConfigValueV3Short(params *AdminGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigValueV3Response, error)
	PublicGetSystemConfigV3Short(params *PublicGetSystemConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetSystemConfigV3Response, error)
	PublicGetConfigValueV3Short(params *PublicGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetConfigValueV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetConfigValueV3Short get config value
This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.

**Supported config key:**
* uniqueDisplayNameEnabled
* usernameDisabled
* mandatoryEmailVerificationEnabled
*/
func (a *Client) AdminGetConfigValueV3Short(params *AdminGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminGetConfigValueV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetConfigValueV3Params()
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
		ID:                 "AdminGetConfigValueV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/config/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetConfigValueV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetConfigValueV3OK:
		response := &AdminGetConfigValueV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetConfigValueV3BadRequest:
		response := &AdminGetConfigValueV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetConfigValueV3InternalServerError:
		response := &AdminGetConfigValueV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetSystemConfigV3Short get public system config value
*/
func (a *Client) PublicGetSystemConfigV3Short(params *PublicGetSystemConfigV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetSystemConfigV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetSystemConfigV3Params()
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
		ID:                 "PublicGetSystemConfigV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/config/public",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetSystemConfigV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetSystemConfigV3OK:
		response := &PublicGetSystemConfigV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetSystemConfigV3InternalServerError:
		response := &PublicGetSystemConfigV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicGetConfigValueV3Short get config value
This endpoint return the value of config key. The namespace should be publisher namespace or studio namespace.
Note: this endpoint does not need any authorization.

**Supported config key:**
* uniqueDisplayNameEnabled
* usernameDisabled
* mandatoryEmailVerificationEnabled
* verificationCodeType

If the key is verificationCodeType, then possible value format will be '{collection}:{N}'; example: 'ABCDEFGHI:6', 'ABCDEFGHI1234:8','01234567894:7'
*/
func (a *Client) PublicGetConfigValueV3Short(params *PublicGetConfigValueV3Params, authInfo runtime.ClientAuthInfoWriter) (*PublicGetConfigValueV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicGetConfigValueV3Params()
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
		ID:                 "PublicGetConfigValueV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/config/{configKey}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicGetConfigValueV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicGetConfigValueV3OK:
		response := &PublicGetConfigValueV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicGetConfigValueV3BadRequest:
		response := &PublicGetConfigValueV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublicGetConfigValueV3InternalServerError:
		response := &PublicGetConfigValueV3Response{}
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
