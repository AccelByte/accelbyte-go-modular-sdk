// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sso_credential

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new sso credential API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for sso credential API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveAllSSOLoginPlatformCredentialV3Short(params *RetrieveAllSSOLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllSSOLoginPlatformCredentialV3Response, error)
	RetrieveSSOLoginPlatformCredentialShort(params *RetrieveSSOLoginPlatformCredentialParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSSOLoginPlatformCredentialResponse, error)
	AddSSOLoginPlatformCredentialShort(params *AddSSOLoginPlatformCredentialParams, authInfo runtime.ClientAuthInfoWriter) (*AddSSOLoginPlatformCredentialResponse, error)
	DeleteSSOLoginPlatformCredentialV3Short(params *DeleteSSOLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSSOLoginPlatformCredentialV3Response, error)
	UpdateSSOPlatformCredentialShort(params *UpdateSSOPlatformCredentialParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSSOPlatformCredentialResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
RetrieveAllSSOLoginPlatformCredentialV3Short get all sso platform credentials
Retrieves all SSO platform credentials for the namespace. Supports pagination via limit and offset parameters.
*/
func (a *Client) RetrieveAllSSOLoginPlatformCredentialV3Short(params *RetrieveAllSSOLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllSSOLoginPlatformCredentialV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllSSOLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveAllSSOLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/sso",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllSSOLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllSSOLoginPlatformCredentialV3OK:
		response := &RetrieveAllSSOLoginPlatformCredentialV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveAllSSOLoginPlatformCredentialV3Unauthorized:
		response := &RetrieveAllSSOLoginPlatformCredentialV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllSSOLoginPlatformCredentialV3Forbidden:
		response := &RetrieveAllSSOLoginPlatformCredentialV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllSSOLoginPlatformCredentialV3NotFound:
		response := &RetrieveAllSSOLoginPlatformCredentialV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllSSOLoginPlatformCredentialV3InternalServerError:
		response := &RetrieveAllSSOLoginPlatformCredentialV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSSOLoginPlatformCredentialShort retrieve sso platform credential
Retrieves the SSO platform credential for the specified platform.
*/
func (a *Client) RetrieveSSOLoginPlatformCredentialShort(params *RetrieveSSOLoginPlatformCredentialParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSSOLoginPlatformCredentialResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSSOLoginPlatformCredentialParams()
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
		ID:                 "RetrieveSSOLoginPlatformCredential",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSSOLoginPlatformCredentialReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSSOLoginPlatformCredentialOK:
		response := &RetrieveSSOLoginPlatformCredentialResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveSSOLoginPlatformCredentialBadRequest:
		response := &RetrieveSSOLoginPlatformCredentialResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveSSOLoginPlatformCredentialUnauthorized:
		response := &RetrieveSSOLoginPlatformCredentialResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveSSOLoginPlatformCredentialForbidden:
		response := &RetrieveSSOLoginPlatformCredentialResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveSSOLoginPlatformCredentialNotFound:
		response := &RetrieveSSOLoginPlatformCredentialResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveSSOLoginPlatformCredentialInternalServerError:
		response := &RetrieveSSOLoginPlatformCredentialResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddSSOLoginPlatformCredentialShort add sso platform credential
Creates an SSO platform credential for the specified platform.
*/
func (a *Client) AddSSOLoginPlatformCredentialShort(params *AddSSOLoginPlatformCredentialParams, authInfo runtime.ClientAuthInfoWriter) (*AddSSOLoginPlatformCredentialResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddSSOLoginPlatformCredentialParams()
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
		ID:                 "AddSSOLoginPlatformCredential",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddSSOLoginPlatformCredentialReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddSSOLoginPlatformCredentialCreated:
		response := &AddSSOLoginPlatformCredentialResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AddSSOLoginPlatformCredentialBadRequest:
		response := &AddSSOLoginPlatformCredentialResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddSSOLoginPlatformCredentialUnauthorized:
		response := &AddSSOLoginPlatformCredentialResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddSSOLoginPlatformCredentialForbidden:
		response := &AddSSOLoginPlatformCredentialResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddSSOLoginPlatformCredentialInternalServerError:
		response := &AddSSOLoginPlatformCredentialResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteSSOLoginPlatformCredentialV3Short delete sso platform credential
Deletes the SSO platform credential for the specified platform.
*/
func (a *Client) DeleteSSOLoginPlatformCredentialV3Short(params *DeleteSSOLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteSSOLoginPlatformCredentialV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteSSOLoginPlatformCredentialV3Params()
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
		ID:                 "DeleteSSOLoginPlatformCredentialV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteSSOLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteSSOLoginPlatformCredentialV3NoContent:
		response := &DeleteSSOLoginPlatformCredentialV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteSSOLoginPlatformCredentialV3BadRequest:
		response := &DeleteSSOLoginPlatformCredentialV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSSOLoginPlatformCredentialV3Unauthorized:
		response := &DeleteSSOLoginPlatformCredentialV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSSOLoginPlatformCredentialV3Forbidden:
		response := &DeleteSSOLoginPlatformCredentialV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSSOLoginPlatformCredentialV3NotFound:
		response := &DeleteSSOLoginPlatformCredentialV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteSSOLoginPlatformCredentialV3InternalServerError:
		response := &DeleteSSOLoginPlatformCredentialV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateSSOPlatformCredentialShort update sso platform credential
Updates the SSO platform credential for the specified platform.
*/
func (a *Client) UpdateSSOPlatformCredentialShort(params *UpdateSSOPlatformCredentialParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateSSOPlatformCredentialResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateSSOPlatformCredentialParams()
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
		ID:                 "UpdateSSOPlatformCredential",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/sso",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateSSOPlatformCredentialReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateSSOPlatformCredentialOK:
		response := &UpdateSSOPlatformCredentialResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateSSOPlatformCredentialBadRequest:
		response := &UpdateSSOPlatformCredentialResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSSOPlatformCredentialUnauthorized:
		response := &UpdateSSOPlatformCredentialResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSSOPlatformCredentialForbidden:
		response := &UpdateSSOPlatformCredentialResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSSOPlatformCredentialNotFound:
		response := &UpdateSSOPlatformCredentialResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateSSOPlatformCredentialInternalServerError:
		response := &UpdateSSOPlatformCredentialResponse{}
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
