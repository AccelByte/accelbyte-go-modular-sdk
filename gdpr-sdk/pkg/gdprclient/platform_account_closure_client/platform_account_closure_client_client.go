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
	AdminGetPlatformAccountClosureClientShort(params *AdminGetPlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientResponse, error)
	AdminUpdatePlatformAccountClosureClientShort(params *AdminUpdatePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureClientResponse, error)
	AdminDeletePlatformAccountClosureClientShort(params *AdminDeletePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformAccountClosureClientResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetPlatformAccountClosureClientShort get platform account closure config
Get platform account closure config.
Scope: account
*/
func (a *Client) AdminGetPlatformAccountClosureClientShort(params *AdminGetPlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformAccountClosureClientResponse, error) {
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
		response := &AdminGetPlatformAccountClosureClientResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlatformAccountClosureClientBadRequest:
		response := &AdminGetPlatformAccountClosureClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlatformAccountClosureClientUnauthorized:
		response := &AdminGetPlatformAccountClosureClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlatformAccountClosureClientForbidden:
		response := &AdminGetPlatformAccountClosureClientResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlatformAccountClosureClientNotFound:
		response := &AdminGetPlatformAccountClosureClientResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminGetPlatformAccountClosureClientInternalServerError:
		response := &AdminGetPlatformAccountClosureClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdatePlatformAccountClosureClientShort update platform account closure client
Update platform account closure client.
Scope: account
*/
func (a *Client) AdminUpdatePlatformAccountClosureClientShort(params *AdminUpdatePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformAccountClosureClientResponse, error) {
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
		response := &AdminUpdatePlatformAccountClosureClientResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminUpdatePlatformAccountClosureClientBadRequest:
		response := &AdminUpdatePlatformAccountClosureClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePlatformAccountClosureClientUnauthorized:
		response := &AdminUpdatePlatformAccountClosureClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePlatformAccountClosureClientForbidden:
		response := &AdminUpdatePlatformAccountClosureClientResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminUpdatePlatformAccountClosureClientInternalServerError:
		response := &AdminUpdatePlatformAccountClosureClientResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlatformAccountClosureClientShort delete platform account closure client
Delete platform account closure client.
*/
func (a *Client) AdminDeletePlatformAccountClosureClientShort(params *AdminDeletePlatformAccountClosureClientParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformAccountClosureClientResponse, error) {
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
		response := &AdminDeletePlatformAccountClosureClientResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeletePlatformAccountClosureClientBadRequest:
		response := &AdminDeletePlatformAccountClosureClientResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlatformAccountClosureClientUnauthorized:
		response := &AdminDeletePlatformAccountClosureClientResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlatformAccountClosureClientForbidden:
		response := &AdminDeletePlatformAccountClosureClientResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlatformAccountClosureClientNotFound:
		response := &AdminDeletePlatformAccountClosureClientResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminDeletePlatformAccountClosureClientInternalServerError:
		response := &AdminDeletePlatformAccountClosureClientResponse{}
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
