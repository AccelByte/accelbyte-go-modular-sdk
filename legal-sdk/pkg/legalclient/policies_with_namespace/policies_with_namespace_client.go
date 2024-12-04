// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policies_with_namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new policies with namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for policies with namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	DeletePolicyShort(params *DeletePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePolicyResponse, error)
	UpdatePolicy1Short(params *UpdatePolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicy1Response, error)
	SetDefaultPolicy3Short(params *SetDefaultPolicy3Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
DeletePolicyShort delete policy
Delete policy.Can only be deleted if match these criteria:


  * Policy is not default policy
  * Policy version under policy has never been accepted by any user
*/
func (a *Client) DeletePolicyShort(params *DeletePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeletePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeletePolicyParams()
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
		ID:                 "deletePolicy",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeletePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeletePolicyNoContent:
		response := &DeletePolicyResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeletePolicyBadRequest:
		response := &DeletePolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdatePolicy1Short update country-specific policy
Update country-specific and country-group policy.
*/
func (a *Client) UpdatePolicy1Short(params *UpdatePolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*UpdatePolicy1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdatePolicy1Params()
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
		ID:                 "updatePolicy_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdatePolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdatePolicy1OK:
		response := &UpdatePolicy1Response{}

		response.IsSuccess = true

		return response, nil
	case *UpdatePolicy1BadRequest:
		response := &UpdatePolicy1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SetDefaultPolicy3Short set default policy
Update a policy to be the default.
*/
func (a *Client) SetDefaultPolicy3Short(params *SetDefaultPolicy3Params, authInfo runtime.ClientAuthInfoWriter) (*SetDefaultPolicy3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSetDefaultPolicy3Params()
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
		ID:                 "setDefaultPolicy_3",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policies/{policyId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SetDefaultPolicy3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SetDefaultPolicy3OK:
		response := &SetDefaultPolicy3Response{}

		response.IsSuccess = true

		return response, nil
	case *SetDefaultPolicy3BadRequest:
		response := &SetDefaultPolicy3Response{}
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
