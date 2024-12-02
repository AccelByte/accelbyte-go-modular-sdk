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
	AdminGetPlatformCredentialsShort(params *AdminGetPlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformCredentialsResponse, error)
	AdminUpdatePlatformCredentialsShort(params *AdminUpdatePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformCredentialsResponse, error)
	AdminDeletePlatformCredentialsShort(params *AdminDeletePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformCredentialsResponse, error)
	AdminDeletePlatformCredentialsByPlatformIDShort(params *AdminDeletePlatformCredentialsByPlatformIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformCredentialsByPlatformIDResponse, error)
	AdminSyncPlatformCredentialsShort(params *AdminSyncPlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncPlatformCredentialsResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
AdminGetPlatformCredentialsShort get platform credentials. these are used to sync psn sessions.
Get platform credentials used for Native Session sync.
PSN:
- clientID: Auth Server (Client Credential) ClientID
- clientSecret: Auth Server (Client Credential) Secret. For security, only the first few characters are shown.
- scope: should be psn:s2s.service (For Sync non PSN member to PSN Session)

XBOX:
- namespace: namespace of the configuration
- businessPartnerCertFileName: name of pfx xbox configuration file
- businessPartnerCertFileBytes: the pfx configuration file
- updatedAt: date time when the record is updated
- createdAt: date time when the record is created
- createdBy: the actor who trigger the xbox configuration sync
*/
func (a *Client) AdminGetPlatformCredentialsShort(params *AdminGetPlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetPlatformCredentialsResponse, error) {
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
		response := &AdminGetPlatformCredentialsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminGetPlatformCredentialsBadRequest:
		response := &AdminGetPlatformCredentialsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetPlatformCredentialsUnauthorized:
		response := &AdminGetPlatformCredentialsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetPlatformCredentialsForbidden:
		response := &AdminGetPlatformCredentialsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetPlatformCredentialsNotFound:
		response := &AdminGetPlatformCredentialsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminGetPlatformCredentialsInternalServerError:
		response := &AdminGetPlatformCredentialsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

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
func (a *Client) AdminUpdatePlatformCredentialsShort(params *AdminUpdatePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdatePlatformCredentialsResponse, error) {
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
		response := &AdminUpdatePlatformCredentialsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminUpdatePlatformCredentialsBadRequest:
		response := &AdminUpdatePlatformCredentialsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdatePlatformCredentialsUnauthorized:
		response := &AdminUpdatePlatformCredentialsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdatePlatformCredentialsForbidden:
		response := &AdminUpdatePlatformCredentialsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdatePlatformCredentialsNotFound:
		response := &AdminUpdatePlatformCredentialsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminUpdatePlatformCredentialsInternalServerError:
		response := &AdminUpdatePlatformCredentialsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlatformCredentialsShort delete platform credentials.
Delete platform credentials used for Native Session sync.
*/
func (a *Client) AdminDeletePlatformCredentialsShort(params *AdminDeletePlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformCredentialsResponse, error) {
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
		response := &AdminDeletePlatformCredentialsResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeletePlatformCredentialsBadRequest:
		response := &AdminDeletePlatformCredentialsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeletePlatformCredentialsUnauthorized:
		response := &AdminDeletePlatformCredentialsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeletePlatformCredentialsForbidden:
		response := &AdminDeletePlatformCredentialsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeletePlatformCredentialsNotFound:
		response := &AdminDeletePlatformCredentialsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeletePlatformCredentialsInternalServerError:
		response := &AdminDeletePlatformCredentialsResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeletePlatformCredentialsByPlatformIDShort delete platform credentials by platformid
Delete platform credentials for specific platform used for Native Session sync. Supported platforms: XBOX, PSN
*/
func (a *Client) AdminDeletePlatformCredentialsByPlatformIDShort(params *AdminDeletePlatformCredentialsByPlatformIDParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeletePlatformCredentialsByPlatformIDResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeletePlatformCredentialsByPlatformIDParams()
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
		ID:                 "adminDeletePlatformCredentialsByPlatformId",
		Method:             "DELETE",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeletePlatformCredentialsByPlatformIDReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeletePlatformCredentialsByPlatformIDNoContent:
		response := &AdminDeletePlatformCredentialsByPlatformIDResponse{}

		response.IsSuccess = true

		return response, nil
	case *AdminDeletePlatformCredentialsByPlatformIDBadRequest:
		response := &AdminDeletePlatformCredentialsByPlatformIDResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeletePlatformCredentialsByPlatformIDUnauthorized:
		response := &AdminDeletePlatformCredentialsByPlatformIDResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeletePlatformCredentialsByPlatformIDForbidden:
		response := &AdminDeletePlatformCredentialsByPlatformIDResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeletePlatformCredentialsByPlatformIDNotFound:
		response := &AdminDeletePlatformCredentialsByPlatformIDResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminDeletePlatformCredentialsByPlatformIDInternalServerError:
		response := &AdminDeletePlatformCredentialsByPlatformIDResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminSyncPlatformCredentialsShort sync platform credentials.
Sync Platform Credentials.

Supported Platforms:
1. XBOX
With this method, we will be performing sync to Platform Service to retrieve the existing PFX certificate which uploaded through IAP.
If the API returns Not Found, alternatively what you can do is either:
a. upload PFX file to IAP. You can access it from Admin Portal {BASE_URL}/admin/namespaces/{NAMESPACE}/in-app-purchase/xbox, or directly through API /platform/admin/namespaces/{NAMESPACE}/iap/config/xbl/cert.
b. upload PFX file through Session API /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl
We recommend approach #a, since you need to only upload the file once, and the service will do the sync.
If you set the PFX through Session service, when this API is invoked, we will sync and replace the existing PFX file with the one from Platform (IAP).
*/
func (a *Client) AdminSyncPlatformCredentialsShort(params *AdminSyncPlatformCredentialsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminSyncPlatformCredentialsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminSyncPlatformCredentialsParams()
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
		ID:                 "adminSyncPlatformCredentials",
		Method:             "PUT",
		PathPattern:        "/session/v1/admin/namespaces/{namespace}/platform-credentials/{platformId}/sync",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminSyncPlatformCredentialsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminSyncPlatformCredentialsOK:
		response := &AdminSyncPlatformCredentialsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminSyncPlatformCredentialsBadRequest:
		response := &AdminSyncPlatformCredentialsResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSyncPlatformCredentialsUnauthorized:
		response := &AdminSyncPlatformCredentialsResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSyncPlatformCredentialsForbidden:
		response := &AdminSyncPlatformCredentialsResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSyncPlatformCredentialsNotFound:
		response := &AdminSyncPlatformCredentialsResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *AdminSyncPlatformCredentialsInternalServerError:
		response := &AdminSyncPlatformCredentialsResponse{}
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
