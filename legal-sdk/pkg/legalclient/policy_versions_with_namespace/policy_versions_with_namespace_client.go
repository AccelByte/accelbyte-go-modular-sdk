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
	UpdatePolicyVersionShort(params *UpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersionResponse, error)
	PublishPolicyVersionShort(params *PublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersionResponse, error)
	UnpublishPolicyVersionShort(params *UnpublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UnpublishPolicyVersionResponse, error)
	RetrieveSinglePolicyVersionShort(params *RetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersionResponse, error)
	CreatePolicyVersionShort(params *CreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
DeletePolicyVersionShort delete a version of policy
Delete a policy version from policy.Can only be deleted if match these criteria:

  - Policy version is not published
  - Policy version has never been accepted by any user
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

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePolicyVersionShort update a version of policy
Update a particular policy version.
*/
func (a *Client) UpdatePolicyVersionShort(params *UpdatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePolicyVersionParams()
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
		ID:                 "updatePolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePolicyVersionOK:
		response := &UpdatePolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdatePolicyVersionBadRequest:
		response := &UpdatePolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdatePolicyVersionConflict:
		response := &UpdatePolicyVersionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublishPolicyVersionShort manually publish a version from country-specific policy
Manually publish a version of a particular country-specific policy.
*/
func (a *Client) PublishPolicyVersionShort(params *PublishPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*PublishPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublishPolicyVersionParams()
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
		ID:                 "publishPolicyVersion",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/latest",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublishPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublishPolicyVersionOK:
		response := &PublishPolicyVersionResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublishPolicyVersionBadRequest:
		response := &PublishPolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PublishPolicyVersionConflict:
		response := &PublishPolicyVersionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UnpublishPolicyVersionShort un-publish version from policy
Un-publish a policy version from policy.Can only be un-publish if match these criteria:

  - Policy version has never been accepted by any user
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

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSinglePolicyVersionShort retrieve a version from country-specific policy
Retrieve a version of a particular country specific policy. If version is not provided, the Legal Service will assume caller requesting all versions from country-specific policy.
*/
func (a *Client) RetrieveSinglePolicyVersionShort(params *RetrieveSinglePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicyVersionParams()
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
		ID:                 "retrieveSinglePolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicyVersionOK:
		response := &RetrieveSinglePolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveSinglePolicyVersionNotFound:
		response := &RetrieveSinglePolicyVersionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePolicyVersionShort create a version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) CreatePolicyVersionShort(params *CreatePolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyVersionParams()
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
		ID:                 "createPolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}/versions",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyVersionCreated:
		response := &CreatePolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePolicyVersionBadRequest:
		response := &CreatePolicyVersionResponse{}
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
