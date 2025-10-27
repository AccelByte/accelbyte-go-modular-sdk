// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policy_versions

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new policy versions API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for policy versions API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	OldUpdatePolicyVersionShort(params *OldUpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdatePolicyVersionResponse, error)
	OldPublishPolicyVersionShort(params *OldPublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldPublishPolicyVersionResponse, error)
	OldRetrieveSinglePolicyVersionShort(params *OldRetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSinglePolicyVersionResponse, error)
	OldCreatePolicyVersionShort(params *OldCreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreatePolicyVersionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
OldUpdatePolicyVersionShort update a version of policy
Update a particular policy version.
*/
func (a *Client) OldUpdatePolicyVersionShort(params *OldUpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdatePolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldUpdatePolicyVersionParams()
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
		ID:                 "oldUpdatePolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldUpdatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldUpdatePolicyVersionOK:
		response := &OldUpdatePolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldUpdatePolicyVersionBadRequest:
		response := &OldUpdatePolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OldUpdatePolicyVersionConflict:
		response := &OldUpdatePolicyVersionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldPublishPolicyVersionShort manually publish a version from country-specific policy
Manually publish a version of a particular country-specific policy.
*/
func (a *Client) OldPublishPolicyVersionShort(params *OldPublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldPublishPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldPublishPolicyVersionParams()
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
		ID:                 "oldPublishPolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/versions/{policyVersionId}/latest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldPublishPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldPublishPolicyVersionOK:
		response := &OldPublishPolicyVersionResponse{}

		response.IsSuccess = true

		return response, nil
	case *OldPublishPolicyVersionBadRequest:
		response := &OldPublishPolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OldPublishPolicyVersionConflict:
		response := &OldPublishPolicyVersionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveSinglePolicyVersionShort retrieve a version from country-specific policy
Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
*/
func (a *Client) OldRetrieveSinglePolicyVersionShort(params *OldRetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSinglePolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveSinglePolicyVersionParams()
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
		ID:                 "oldRetrieveSinglePolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveSinglePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveSinglePolicyVersionOK:
		response := &OldRetrieveSinglePolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldRetrieveSinglePolicyVersionNotFound:
		response := &OldRetrieveSinglePolicyVersionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldCreatePolicyVersionShort create a version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) OldCreatePolicyVersionShort(params *OldCreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreatePolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldCreatePolicyVersionParams()
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
		ID:                 "oldCreatePolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldCreatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldCreatePolicyVersionCreated:
		response := &OldCreatePolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldCreatePolicyVersionBadRequest:
		response := &OldCreatePolicyVersionResponse{}
		response.Error400 = v.Payload

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
