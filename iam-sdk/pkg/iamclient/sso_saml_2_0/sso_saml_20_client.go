// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sso_saml_2_0

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new sso saml 2 0 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for sso saml 2 0 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	PlatformAuthenticateSAMLV3HandlerShort(params *PlatformAuthenticateSAMLV3HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformAuthenticateSAMLV3HandlerResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
PlatformAuthenticateSAMLV3HandlerShort saml platform authentication api
This endpoint authenticates user platform for SAML protocol. It validates user to its
respective platforms. Deactivated or login-banned users are unable to login.
## Supported platforms:
- **azure**
Microsoft login page will redirects to this endpoint after login success
as previously defined on authentication request SAML
*/
func (a *Client) PlatformAuthenticateSAMLV3HandlerShort(params *PlatformAuthenticateSAMLV3HandlerParams, authInfo runtime.ClientAuthInfoWriter) (*PlatformAuthenticateSAMLV3HandlerResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformAuthenticateSAMLV3HandlerParams()
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
		ID:                 "platformAuthenticateSAMLV3Handler",
		Method:             "POST",
		PathPattern:        "/iam/v3/sso/saml/platforms/{platformId}/authenticate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformAuthenticateSAMLV3HandlerReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformAuthenticateSAMLV3HandlerFound:
		response := &PlatformAuthenticateSAMLV3HandlerResponse{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
