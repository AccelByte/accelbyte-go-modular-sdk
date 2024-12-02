// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policy_versions_with_namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new policy versions with namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for policy versions with namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DeletePolicyVersionShort(params *DeletePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePolicyVersionResponse, error)
	UpdatePolicyVersion1Short(params *UpdatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersion1Response, error)
	PublishPolicyVersion1Short(params *PublishPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersion1Response, error)
	UnpublishPolicyVersionShort(params *UnpublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishPolicyVersionResponse, error)
	RetrieveSinglePolicyVersion1Short(params *RetrieveSinglePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersion1Response, error)
	CreatePolicyVersion1Short(params *CreatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersion1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
DeletePolicyVersionShort delete a version of policy
Delete a policy version from policy.Can only be deleted if match these criteria:


  * Policy version is not published
  * Policy version has never been accepted by any user
*/
func (a *Client) DeletePolicyVersionShort(params *DeletePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePolicyVersionParams()
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
		ID:                 "deletePolicyVersion",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePolicyVersionNoContent:
		response := &DeletePolicyVersionResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeletePolicyVersionBadRequest:
		response := &DeletePolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePolicyVersion1Short update a version of policy
Update a particular policy version.
*/
func (a *Client) UpdatePolicyVersion1Short(params *UpdatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersion1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePolicyVersion1Params()
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
		ID:                 "updatePolicyVersion_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePolicyVersion1OK:
		response := &UpdatePolicyVersion1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePolicyVersion1BadRequest:
		response := &UpdatePolicyVersion1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *UpdatePolicyVersion1Conflict:
		response := &UpdatePolicyVersion1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishPolicyVersion1Short manually publish a version from country-specific policy
Manually publish a version of a particular country-specific policy.
*/
func (a *Client) PublishPolicyVersion1Short(params *PublishPolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersion1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishPolicyVersion1Params()
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
		ID:                 "publishPolicyVersion_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishPolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishPolicyVersion1OK:
		response := &PublishPolicyVersion1Response{}

		response.IsSuccess = true

		return response, nil
	case *PublishPolicyVersion1BadRequest:
		response := &PublishPolicyVersion1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil
	case *PublishPolicyVersion1Conflict:
		response := &PublishPolicyVersion1Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnpublishPolicyVersionShort un-publish version from policy
Un-publish a policy version from policy.Can only be un-publish if match these criteria:


  * Policy version has never been accepted by any user
*/
func (a *Client) UnpublishPolicyVersionShort(params *UnpublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUnpublishPolicyVersionParams()
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
		ID:                 "unpublishPolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/unpublish",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UnpublishPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UnpublishPolicyVersionNoContent:
		response := &UnpublishPolicyVersionResponse{}

		response.IsSuccess = true

		return response, nil
	case *UnpublishPolicyVersionBadRequest:
		response := &UnpublishPolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSinglePolicyVersion1Short retrieve a version from country-specific policy
Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
*/
func (a *Client) RetrieveSinglePolicyVersion1Short(params *RetrieveSinglePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersion1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicyVersion1Params()
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
		ID:                 "retrieveSinglePolicyVersion_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicyVersion1OK:
		response := &RetrieveSinglePolicyVersion1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveSinglePolicyVersion1NotFound:
		response := &RetrieveSinglePolicyVersion1Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePolicyVersion1Short create a version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) CreatePolicyVersion1Short(params *CreatePolicyVersion1Params, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersion1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyVersion1Params()
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
		ID:                 "createPolicyVersion_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyVersion1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyVersion1Created:
		response := &CreatePolicyVersion1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePolicyVersion1BadRequest:
		response := &CreatePolicyVersion1Response{}
		response.Error400 = v.Payload

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
