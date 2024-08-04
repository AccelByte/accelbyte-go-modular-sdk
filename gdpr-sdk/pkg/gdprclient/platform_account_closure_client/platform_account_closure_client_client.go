// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform_account_closure_client

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform account closure client API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform account closure client API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetPlatformAccountClosureClientShort(params *AdminGetPlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientOK, error)
	AdminUpdatePlatformAccountClosureClientShort(params *AdminUpdatePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureClientNoContent, error)
	AdminDeletePlatformAccountClosureClientShort(params *AdminDeletePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformAccountClosureClientNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetPlatformAccountClosureClientShort get platform account closure config
Get platform account closure config.
Scope: account
*/
func (a *Client) AdminGetPlatformAccountClosureClientShort(params *AdminGetPlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlatformAccountClosureClientParams()
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
		ID:                 "AdminGetPlatformAccountClosureClient",
		Method:             "GET",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlatformAccountClosureClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlatformAccountClosureClientOK:
		return v, nil
	case *AdminGetPlatformAccountClosureClientBadRequest:
		return nil, v
	case *AdminGetPlatformAccountClosureClientUnauthorized:
		return nil, v
	case *AdminGetPlatformAccountClosureClientForbidden:
		return nil, v
	case *AdminGetPlatformAccountClosureClientNotFound:
		return nil, v
	case *AdminGetPlatformAccountClosureClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdatePlatformAccountClosureClientShort update platform account closure client
Update platform account closure client.
Scope: account
*/
func (a *Client) AdminUpdatePlatformAccountClosureClientShort(params *AdminUpdatePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureClientNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePlatformAccountClosureClientParams()
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
		ID:                 "AdminUpdatePlatformAccountClosureClient",
		Method:             "POST",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePlatformAccountClosureClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePlatformAccountClosureClientNoContent:
		return v, nil
	case *AdminUpdatePlatformAccountClosureClientBadRequest:
		return nil, v
	case *AdminUpdatePlatformAccountClosureClientUnauthorized:
		return nil, v
	case *AdminUpdatePlatformAccountClosureClientForbidden:
		return nil, v
	case *AdminUpdatePlatformAccountClosureClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlatformAccountClosureClientShort delete platform account closure client
Delete platform account closure client.
*/
func (a *Client) AdminDeletePlatformAccountClosureClientShort(params *AdminDeletePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformAccountClosureClientNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlatformAccountClosureClientParams()
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
		ID:                 "AdminDeletePlatformAccountClosureClient",
		Method:             "DELETE",
		PathPattern:        "/gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlatformAccountClosureClientReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlatformAccountClosureClientNoContent:
		return v, nil
	case *AdminDeletePlatformAccountClosureClientBadRequest:
		return nil, v
	case *AdminDeletePlatformAccountClosureClientUnauthorized:
		return nil, v
	case *AdminDeletePlatformAccountClosureClientForbidden:
		return nil, v
	case *AdminDeletePlatformAccountClosureClientNotFound:
		return nil, v
	case *AdminDeletePlatformAccountClosureClientInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
