// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package base_legal_policies_with_namespace

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new base legal policies with namespace API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for base legal policies with namespace API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveAllLegalPoliciesByNamespaceShort(params *RetrieveAllLegalPoliciesByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesByNamespaceOK, error)
	CreatePolicy1Short(params *CreatePolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicy1Created, error)
	RetrieveSinglePolicy1Short(params *RetrieveSinglePolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicy1OK, error)
	PartialUpdatePolicy1Short(params *PartialUpdatePolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdatePolicy1OK, error)
	RetrievePolicyCountry1Short(params *RetrievePolicyCountry1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrievePolicyCountry1OK, error)
	RetrieveAllPolicyTypes1Short(params *RetrieveAllPolicyTypes1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPolicyTypes1OK, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
RetrieveAllLegalPoliciesByNamespaceShort retrieve all base legal policy in the namespace
Retrieve all base policies in the namespace.
*/
func (a *Client) RetrieveAllLegalPoliciesByNamespaceShort(params *RetrieveAllLegalPoliciesByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesByNamespaceOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllLegalPoliciesByNamespaceParams()
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
		ID:                 "retrieveAllLegalPoliciesByNamespace",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllLegalPoliciesByNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllLegalPoliciesByNamespaceOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePolicy1Short create a base legal policy
Create a legal policy.
*/
func (a *Client) CreatePolicy1Short(params *CreatePolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicy1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicy1Params()
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
		ID:                 "createPolicy_1",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePolicy1Created:
		return v, nil
	case *CreatePolicy1BadRequest:
		return nil, v
	case *CreatePolicy1Conflict:
		return nil, v
	case *CreatePolicy1UnprocessableEntity:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSinglePolicy1Short retrieve a base legal policy
Retrieve a base policy.
*/
func (a *Client) RetrieveSinglePolicy1Short(params *RetrieveSinglePolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicy1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicy1Params()
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
		ID:                 "retrieveSinglePolicy_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicy1OK:
		return v, nil
	case *RetrieveSinglePolicy1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PartialUpdatePolicy1Short update base legal policy
Update an existing base policy.
*/
func (a *Client) PartialUpdatePolicy1Short(params *PartialUpdatePolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdatePolicy1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPartialUpdatePolicy1Params()
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
		ID:                 "partialUpdatePolicy_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PartialUpdatePolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PartialUpdatePolicy1OK:
		return v, nil
	case *PartialUpdatePolicy1BadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrievePolicyCountry1Short retrieve a base legal policy based on a particular country
Retrieve a Base Legal Policy based on a Particular Country.
*/
func (a *Client) RetrievePolicyCountry1Short(params *RetrievePolicyCountry1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrievePolicyCountry1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrievePolicyCountry1Params()
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
		ID:                 "retrievePolicyCountry_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrievePolicyCountry1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrievePolicyCountry1OK:
		return v, nil
	case *RetrievePolicyCountry1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllPolicyTypes1Short retrieve all policy type
Retrieve all supported policy types.
*/
func (a *Client) RetrieveAllPolicyTypes1Short(params *RetrieveAllPolicyTypes1Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPolicyTypes1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllPolicyTypes1Params()
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
		ID:                 "retrieveAllPolicyTypes_1",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policy-types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllPolicyTypes1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllPolicyTypes1OK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
