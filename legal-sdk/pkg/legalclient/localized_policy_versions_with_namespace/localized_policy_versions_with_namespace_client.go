// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localized_policy_versions_with_namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new localized policy versions with namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for localized policy versions with namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DeleteLocalizedPolicyShort(params *DeleteLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalizedPolicyResponse, error)
	RetrieveLocalizedPolicyVersions1Short(params *RetrieveLocalizedPolicyVersions1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersions1Response, error)
	CreateLocalizedPolicyVersion1Short(params *CreateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersion1Response, error)
	RetrieveSingleLocalizedPolicyVersion1Short(params *RetrieveSingleLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersion1Response, error)
	UpdateLocalizedPolicyVersion1Short(params *UpdateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersion1Response, error)
	RequestPresignedURL1Short(params *RequestPresignedURL1Params, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURL1Response, error)
	SetDefaultPolicy1Short(params *SetDefaultPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy1Response, error)
	RetrieveSingleLocalizedPolicyVersion3Short(params *RetrieveSingleLocalizedPolicyVersion3Params) (*RetrieveSingleLocalizedPolicyVersion3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
DeleteLocalizedPolicyShort delete localized policy
Delete localized version policy.
Can only be deleted if match these criteria:


  * Policy Version that this localized policy version belongs to is not active
  * Has never been accepted by any user
*/
func (a *Client) DeleteLocalizedPolicyShort(params *DeleteLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteLocalizedPolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteLocalizedPolicyParams()
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
		ID:                 "deleteLocalizedPolicy",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteLocalizedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteLocalizedPolicyNoContent:
		response := &DeleteLocalizedPolicyResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteLocalizedPolicyBadRequest:
		response := &DeleteLocalizedPolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveLocalizedPolicyVersions1Short retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
*/
func (a *Client) RetrieveLocalizedPolicyVersions1Short(params *RetrieveLocalizedPolicyVersions1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLocalizedPolicyVersions1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLocalizedPolicyVersions1Params()
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
		ID:                 "retrieveLocalizedPolicyVersions_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLocalizedPolicyVersions1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLocalizedPolicyVersions1OK:
		response := &RetrieveLocalizedPolicyVersions1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreateLocalizedPolicyVersion1Short create a localized version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) CreateLocalizedPolicyVersion1Short(params *CreateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreateLocalizedPolicyVersion1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreateLocalizedPolicyVersion1Params()
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
		ID:                 "createLocalizedPolicyVersion_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreateLocalizedPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreateLocalizedPolicyVersion1Created:
		response := &CreateLocalizedPolicyVersion1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreateLocalizedPolicyVersion1BadRequest:
		response := &CreateLocalizedPolicyVersion1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *CreateLocalizedPolicyVersion1Conflict:
		response := &CreateLocalizedPolicyVersion1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSingleLocalizedPolicyVersion1Short retrieve a localized version from country-specific policy
Retrieve a version of a particular country-specific policy.
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion1Short(params *RetrieveSingleLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSingleLocalizedPolicyVersion1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersion1Params()
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
		ID:                 "retrieveSingleLocalizedPolicyVersion_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersion1OK:
		response := &RetrieveSingleLocalizedPolicyVersion1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveSingleLocalizedPolicyVersion1NotFound:
		response := &RetrieveSingleLocalizedPolicyVersion1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateLocalizedPolicyVersion1Short update a localized version from country-specific policy
Update a version of a particular country-specific policy.
*/
func (a *Client) UpdateLocalizedPolicyVersion1Short(params *UpdateLocalizedPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateLocalizedPolicyVersion1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateLocalizedPolicyVersion1Params()
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
		ID:                 "updateLocalizedPolicyVersion_1",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateLocalizedPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateLocalizedPolicyVersion1OK:
		response := &UpdateLocalizedPolicyVersion1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateLocalizedPolicyVersion1BadRequest:
		response := &UpdateLocalizedPolicyVersion1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestPresignedURL1Short request presigned url for upload document
Request presigned URL for upload attachment for a particular localized version of base policy.
*/
func (a *Client) RequestPresignedURL1Short(params *RequestPresignedURL1Params, authInfo runtime.ClientAuthInfoWriter) (*RequestPresignedURL1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestPresignedURL1Params()
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
		ID:                 "requestPresignedURL_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/attachments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestPresignedURL1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestPresignedURL1Created:
		response := &RequestPresignedURL1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RequestPresignedURL1BadRequest:
		response := &RequestPresignedURL1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetDefaultPolicy1Short set default localized policy
Update a localized version policy to be the default.
*/
func (a *Client) SetDefaultPolicy1Short(params *SetDefaultPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultPolicy1Params()
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
		ID:                 "setDefaultPolicy_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetDefaultPolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetDefaultPolicy1OK:
		response := &SetDefaultPolicy1Response{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSingleLocalizedPolicyVersion3Short retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) RetrieveSingleLocalizedPolicyVersion3Short(params *RetrieveSingleLocalizedPolicyVersion3Params) (*RetrieveSingleLocalizedPolicyVersion3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSingleLocalizedPolicyVersion3Params()
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
		ID:                 "retrieveSingleLocalizedPolicyVersion_3",
		Method:             "GET",
		PathPattern:        "/agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSingleLocalizedPolicyVersion3Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSingleLocalizedPolicyVersion3OK:
		response := &RetrieveSingleLocalizedPolicyVersion3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveSingleLocalizedPolicyVersion3Forbidden:
		response := &RetrieveSingleLocalizedPolicyVersion3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *RetrieveSingleLocalizedPolicyVersion3NotFound:
		response := &RetrieveSingleLocalizedPolicyVersion3Response{}
		response.Error404 = v.Payload

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
