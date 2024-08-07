// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sso

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new sso API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for sso API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	LoginSSOClientShort(params *LoginSSOClientParams, authInfo runtime.ClientAuthInfoWriter) (*LoginSSOClientOK, error)
	LogoutSSOClientShort(params *LogoutSSOClientParams, authInfo runtime.ClientAuthInfoWriter) (*LogoutSSOClientNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
LoginSSOClientShort login to sso client with provided platformid
*/
func (a *Client) LoginSSOClientShort(params *LoginSSOClientParams, authInfo runtime.ClientAuthInfoWriter) (*LoginSSOClientOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLoginSSOClientParams()
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
		ID:                 "LoginSSOClient",
		Method:             "GET",
		PathPattern:        "/iam/v3/sso/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LoginSSOClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LoginSSOClientOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
LogoutSSOClientShort logout
Logout user's session on platform that logged in using SSO.

Supported platforms:
- discourse
*/
func (a *Client) LogoutSSOClientShort(params *LogoutSSOClientParams, authInfo runtime.ClientAuthInfoWriter) (*LogoutSSOClientNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLogoutSSOClientParams()
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
		ID:                 "LogoutSSOClient",
		Method:             "POST",
		PathPattern:        "/iam/v3/sso/{platformId}/logout",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LogoutSSOClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LogoutSSOClientNoContent:
		return v, nil
	case *LogoutSSOClientNotFound:
		return nil, v
	case *LogoutSSOClientUnprocessableEntity:
		return nil, v
	case *LogoutSSOClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
