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
	RetrieveAllLegalPoliciesByNamespaceShort(params *RetrieveAllLegalPoliciesByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesByNamespaceResponse, error)
	CreatePolicyShort(params *CreatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyResponse, error)
	RetrieveSinglePolicyShort(params *RetrieveSinglePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyResponse, error)
	DeleteBasePolicyShort(params *DeleteBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBasePolicyResponse, error)
	PartialUpdatePolicyShort(params *PartialUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdatePolicyResponse, error)
	RetrievePolicyCountryShort(params *RetrievePolicyCountryParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePolicyCountryResponse, error)
	RetrieveAllPoliciesFromBasePolicyShort(params *RetrieveAllPoliciesFromBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPoliciesFromBasePolicyResponse, error)
	CreatePolicyUnderBasePolicyShort(params *CreatePolicyUnderBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyUnderBasePolicyResponse, error)
	RetrieveAllPolicyTypesShort(params *RetrieveAllPolicyTypesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPolicyTypesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
RetrieveAllLegalPoliciesByNamespaceShort retrieve all base legal policy in the namespace
Retrieve all base policies in the namespace.
*/
func (a *Client) RetrieveAllLegalPoliciesByNamespaceShort(params *RetrieveAllLegalPoliciesByNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesByNamespaceResponse, error) {
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
		response := &RetrieveAllLegalPoliciesByNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePolicyShort create a base legal policy
Create a legal policy.
Note:

  - countryType field only accept COUNTRY or COUNTRY_GROUP.
  - COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.

* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) CreatePolicyShort(params *CreatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyParams()
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
		ID:                 "createPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyCreated:
		response := &CreatePolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePolicyBadRequest:
		response := &CreatePolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePolicyConflict:
		response := &CreatePolicyResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *CreatePolicyUnprocessableEntity:
		response := &CreatePolicyResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveSinglePolicyShort retrieve a base legal policy
Retrieve a base policy.
*/
func (a *Client) RetrieveSinglePolicyShort(params *RetrieveSinglePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveSinglePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveSinglePolicyParams()
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
		ID:                 "retrieveSinglePolicy",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveSinglePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveSinglePolicyOK:
		response := &RetrieveSinglePolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveSinglePolicyNotFound:
		response := &RetrieveSinglePolicyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteBasePolicyShort delete base legal policy
Delete base legal policy.Can only be deleted if match these criteria:

  - Base policy don't have published policy version
  - Policy version under base policy has never been accepted by any user
*/
func (a *Client) DeleteBasePolicyShort(params *DeleteBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*DeleteBasePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteBasePolicyParams()
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
		ID:                 "deleteBasePolicy",
		Method:             "DELETE",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteBasePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteBasePolicyNoContent:
		response := &DeleteBasePolicyResponse{}

		response.IsSuccess = true

		return response, nil
	case *DeleteBasePolicyBadRequest:
		response := &DeleteBasePolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PartialUpdatePolicyShort update base legal policy
Update an existing base policy.
Note:

  - countryType field only accept COUNTRY or COUNTRY_GROUP.
  - COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.

* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) PartialUpdatePolicyShort(params *PartialUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*PartialUpdatePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPartialUpdatePolicyParams()
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
		ID:                 "partialUpdatePolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PartialUpdatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PartialUpdatePolicyOK:
		response := &PartialUpdatePolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PartialUpdatePolicyBadRequest:
		response := &PartialUpdatePolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrievePolicyCountryShort retrieve a base legal policy based on a particular country
Retrieve a Base Legal Policy based on a Particular Country.
*/
func (a *Client) RetrievePolicyCountryShort(params *RetrievePolicyCountryParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePolicyCountryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrievePolicyCountryParams()
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
		ID:                 "retrievePolicyCountry",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrievePolicyCountryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrievePolicyCountryOK:
		response := &RetrievePolicyCountryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrievePolicyCountryNotFound:
		response := &RetrievePolicyCountryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllPoliciesFromBasePolicyShort retrieve all policies from base legal policy
Retrieve all policies from Base Legal Policy.
*/
func (a *Client) RetrieveAllPoliciesFromBasePolicyShort(params *RetrieveAllPoliciesFromBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPoliciesFromBasePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllPoliciesFromBasePolicyParams()
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
		ID:                 "retrieveAllPoliciesFromBasePolicy",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllPoliciesFromBasePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllPoliciesFromBasePolicyOK:
		response := &RetrieveAllPoliciesFromBasePolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveAllPoliciesFromBasePolicyNotFound:
		response := &RetrieveAllPoliciesFromBasePolicyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
CreatePolicyUnderBasePolicyShort create policy under base policy
Create policy under base policy.
Note:

  - countryType field only accept COUNTRY or COUNTRY_GROUP.
  - COUNTRY_GROUP policy requires the countryGroupName and countries fields to be provided.

* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) CreatePolicyUnderBasePolicyShort(params *CreatePolicyUnderBasePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*CreatePolicyUnderBasePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewCreatePolicyUnderBasePolicyParams()
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
		ID:                 "createPolicyUnderBasePolicy",
		Method:             "POST",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &CreatePolicyUnderBasePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *CreatePolicyUnderBasePolicyCreated:
		response := &CreatePolicyUnderBasePolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *CreatePolicyUnderBasePolicyBadRequest:
		response := &CreatePolicyUnderBasePolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllPolicyTypesShort retrieve all policy type
Retrieve all supported policy types.
*/
func (a *Client) RetrieveAllPolicyTypesShort(params *RetrieveAllPolicyTypesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllPolicyTypesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllPolicyTypesParams()
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
		ID:                 "retrieveAllPolicyTypes",
		Method:             "GET",
		PathPattern:        "/agreement/admin/namespaces/{namespace}/policy-types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllPolicyTypesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllPolicyTypesOK:
		response := &RetrieveAllPolicyTypesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
