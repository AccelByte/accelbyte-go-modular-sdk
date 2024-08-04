// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platform_credential

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new platform credential API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for platform credential API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetPlatformCredentialsShort(params *AdminGetPlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformCredentialsOK, error)
	AdminUpdatePlatformCredentialsShort(params *AdminUpdatePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformCredentialsOK, error)
	AdminDeletePlatformCredentialsShort(params *AdminDeletePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformCredentialsNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetPlatformCredentialsShort get platform credentials. these are used to sync psn sessions.
Get platform credentials used for Native Session sync.
PSN:
- clientID: Auth Server (Client Credential) ClientID
- clientSecret: Auth Server (Client Credential) Secret. For security, only the first few characters are shown.
- scope: should be psn:s2s.service (For Sync non PSN member to PSN Session)
*/
func (a *Client) AdminGetPlatformCredentialsShort(params *AdminGetPlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformCredentialsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetPlatformCredentialsParams()
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
		ID:                 "adminGetPlatformCredentials",
		Method:             "GET",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/platform-credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetPlatformCredentialsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetPlatformCredentialsOK:
		return v, nil
	case *AdminGetPlatformCredentialsBadRequest:
		return nil, v
	case *AdminGetPlatformCredentialsUnauthorized:
		return nil, v
	case *AdminGetPlatformCredentialsForbidden:
		return nil, v
	case *AdminGetPlatformCredentialsNotFound:
		return nil, v
	case *AdminGetPlatformCredentialsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdatePlatformCredentialsShort update platform credentials. currently only used to sync psn sessions.
Update platform credentials for Native Session sync. Currently supports PSN platform.
Send an empty body to clear data.
PSN:
- clientID: Auth Server (Client Credential) ClientID
- clientSecret: Auth Server (Client Credential) Secret
- scope: psn:s2s.service (For Sync non PSN member to PSN Session)
*/
func (a *Client) AdminUpdatePlatformCredentialsShort(params *AdminUpdatePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformCredentialsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdatePlatformCredentialsParams()
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
		ID:                 "adminUpdatePlatformCredentials",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/platform-credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdatePlatformCredentialsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdatePlatformCredentialsOK:
		return v, nil
	case *AdminUpdatePlatformCredentialsBadRequest:
		return nil, v
	case *AdminUpdatePlatformCredentialsUnauthorized:
		return nil, v
	case *AdminUpdatePlatformCredentialsForbidden:
		return nil, v
	case *AdminUpdatePlatformCredentialsNotFound:
		return nil, v
	case *AdminUpdatePlatformCredentialsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlatformCredentialsShort delete platform credentials.
Delete platform credentials used for Native Session sync.
*/
func (a *Client) AdminDeletePlatformCredentialsShort(params *AdminDeletePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformCredentialsNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlatformCredentialsParams()
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
		ID:                 "adminDeletePlatformCredentials",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/platform-credentials",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlatformCredentialsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlatformCredentialsNoContent:
		return v, nil
	case *AdminDeletePlatformCredentialsBadRequest:
		return nil, v
	case *AdminDeletePlatformCredentialsUnauthorized:
		return nil, v
	case *AdminDeletePlatformCredentialsForbidden:
		return nil, v
	case *AdminDeletePlatformCredentialsNotFound:
		return nil, v
	case *AdminDeletePlatformCredentialsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
