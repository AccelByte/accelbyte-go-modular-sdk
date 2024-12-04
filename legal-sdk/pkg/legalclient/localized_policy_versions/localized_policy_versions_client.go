// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localized_policy_versions

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new localized policy versions API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for localized policy versions API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveLocalizedPolicyVersionsShort(params *RetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersionsResponse, error)
	CreateLocalizedPolicyVersionShort(params *CreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersionResponse, error)
	RetrieveSingleLocalizedPolicyVersionShort(params *RetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersionResponse, error)
	UpdateLocalizedPolicyVersionShort(params *UpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersionResponse, error)
	RequestPresignedURLShort(params *RequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURLResponse, error)
	SetDefaultPolicyShort(params *SetDefaultPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicyResponse, error)
	RetrieveSingleLocalizedPolicyVersion2Short(params *RetrieveSingleLocalizedPolicyVersion2Params) (*RetrieveSingleLocalizedPolicyVersion2Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
RetrieveLocalizedPolicyVersionsShort retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
*/
func (a *Client) RetrieveLocalizedPolicyVersionsShort(params *RetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLocalizedPolicyVersionsParams()
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
		ID:                 "retrieveLocalizedPolicyVersions",
		Method:             "GET",
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLocalizedPolicyVersionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLocalizedPolicyVersionsOK:
		response := &RetrieveLocalizedPolicyVersionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLocalizedPolicyVersionShort create a localized version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) CreateLocalizedPolicyVersionShort(params *CreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLocalizedPolicyVersionParams()
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
		ID:                 "createLocalizedPolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLocalizedPolicyVersionCreated:
		response := &CreateLocalizedPolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateLocalizedPolicyVersionBadRequest:
		response := &CreateLocalizedPolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreateLocalizedPolicyVersionConflict:
		response := &CreateLocalizedPolicyVersionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSingleLocalizedPolicyVersionShort retrieve a localized version from country-specific policy
Retrieve a version of a particular country-specific policy.
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersionShort(params *RetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersionParams()
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
		ID:                 "retrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersionOK:
		response := &RetrieveSingleLocalizedPolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveSingleLocalizedPolicyVersionNotFound:
		response := &RetrieveSingleLocalizedPolicyVersionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLocalizedPolicyVersionShort update a localized version from country-specific policy
Update a version of a particular country-specific policy.
*/
func (a *Client) UpdateLocalizedPolicyVersionShort(params *UpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLocalizedPolicyVersionParams()
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
		ID:                 "updateLocalizedPolicyVersion",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLocalizedPolicyVersionOK:
		response := &UpdateLocalizedPolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateLocalizedPolicyVersionBadRequest:
		response := &UpdateLocalizedPolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestPresignedURLShort request presigned url for upload document
Request presigned URL for upload attachment for a particular localized version of base policy.
*/
func (a *Client) RequestPresignedURLShort(params *RequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestPresignedURLParams()
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
		ID:                 "requestPresignedURL",
		Method:             "POST",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestPresignedURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestPresignedURLCreated:
		response := &RequestPresignedURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RequestPresignedURLBadRequest:
		response := &RequestPresignedURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetDefaultPolicyShort set default localized policy
Update a localized version policy to be the default.
*/
func (a *Client) SetDefaultPolicyShort(params *SetDefaultPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultPolicyParams()
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
		ID:                 "setDefaultPolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetDefaultPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetDefaultPolicyOK:
		response := &SetDefaultPolicyResponse{}

		response.IsSuccess = true

		return response, nil
	case *SetDefaultPolicyBadRequest:
		response := &SetDefaultPolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSingleLocalizedPolicyVersion2Short retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion2Short(params *RetrieveSingleLocalizedPolicyVersion2Params) (*RetrieveSingleLocalizedPolicyVersion2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersion2Params()
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
		ID:                 "retrieveSingleLocalizedPolicyVersion_2",
		Method:             "GET",
		PathPattern:        "/agreement/public/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersion2Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersion2OK:
		response := &RetrieveSingleLocalizedPolicyVersion2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveSingleLocalizedPolicyVersion2Forbidden:
		response := &RetrieveSingleLocalizedPolicyVersion2Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveSingleLocalizedPolicyVersion2NotFound:
		response := &RetrieveSingleLocalizedPolicyVersion2Response{}
		response.Error404 = v.Payload

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
