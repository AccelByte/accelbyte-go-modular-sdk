// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package base_legal_policies

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new base legal policies API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for base legal policies API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveAllLegalPoliciesShort(params *RetrieveAllLegalPoliciesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesResponse, error)
	OldCreatePolicyShort(params *OldCreatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreatePolicyResponse, error)
	OldRetrieveSinglePolicyShort(params *OldRetrieveSinglePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSinglePolicyResponse, error)
	OldPartialUpdatePolicyShort(params *OldPartialUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldPartialUpdatePolicyResponse, error)
	OldRetrievePolicyCountryShort(params *OldRetrievePolicyCountryParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrievePolicyCountryResponse, error)
	OldRetrieveAllPolicyTypesShort(params *OldRetrieveAllPolicyTypesParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveAllPolicyTypesResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
RetrieveAllLegalPoliciesShort retrieve all base legal policy
Retrieve all base policies.
*/
func (a *Client) RetrieveAllLegalPoliciesShort(params *RetrieveAllLegalPoliciesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllLegalPoliciesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllLegalPoliciesParams()
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
		ID:                 "retrieveAllLegalPolicies",
		Method:             "GET",
		PathPattern:        "/agreement/admin/base-policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllLegalPoliciesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllLegalPoliciesOK:
		response := &RetrieveAllLegalPoliciesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldCreatePolicyShort create a base legal policy
Create a legal policy.
Note:

  - countryType field only accept COUNTRY or COUNTRY_GROUP.
  - COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.

* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) OldCreatePolicyShort(params *OldCreatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreatePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldCreatePolicyParams()
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
		ID:                 "oldCreatePolicy",
		Method:             "POST",
		PathPattern:        "/agreement/admin/base-policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldCreatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldCreatePolicyCreated:
		response := &OldCreatePolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldCreatePolicyBadRequest:
		response := &OldCreatePolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OldCreatePolicyNotFound:
		response := &OldCreatePolicyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OldCreatePolicyUnprocessableEntity:
		response := &OldCreatePolicyResponse{}
		response.Error422 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveSinglePolicyShort retrieve a base legal policy
Retrieve a base policy.
*/
func (a *Client) OldRetrieveSinglePolicyShort(params *OldRetrieveSinglePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSinglePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveSinglePolicyParams()
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
		ID:                 "oldRetrieveSinglePolicy",
		Method:             "GET",
		PathPattern:        "/agreement/admin/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveSinglePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveSinglePolicyOK:
		response := &OldRetrieveSinglePolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldRetrieveSinglePolicyNotFound:
		response := &OldRetrieveSinglePolicyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldPartialUpdatePolicyShort update base legal policy
Update an existing base policy.
Note:

  - countryType field only accept COUNTRY or COUNTRY_GROUP.
  - COUNTRY_GROUP countryType requires the countryGroupName and affectedCountries fields to be provided.

* policy with COUNTRY_GROUP type include multiple countries and apply the same policy across the entire list of countries
*/
func (a *Client) OldPartialUpdatePolicyShort(params *OldPartialUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldPartialUpdatePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldPartialUpdatePolicyParams()
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
		ID:                 "oldPartialUpdatePolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/base-policies/{basePolicyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldPartialUpdatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldPartialUpdatePolicyOK:
		response := &OldPartialUpdatePolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldPartialUpdatePolicyBadRequest:
		response := &OldPartialUpdatePolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OldPartialUpdatePolicyNotFound:
		response := &OldPartialUpdatePolicyResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrievePolicyCountryShort retrieve a base legal policy based on a particular country
Retrieve a Base Legal Policy based on a Particular Country.
*/
func (a *Client) OldRetrievePolicyCountryShort(params *OldRetrievePolicyCountryParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrievePolicyCountryResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrievePolicyCountryParams()
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
		ID:                 "oldRetrievePolicyCountry",
		Method:             "GET",
		PathPattern:        "/agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrievePolicyCountryReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrievePolicyCountryOK:
		response := &OldRetrievePolicyCountryResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldRetrievePolicyCountryNotFound:
		response := &OldRetrievePolicyCountryResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveAllPolicyTypesShort retrieve all policy type
Retrieve all supported policy types.
*/
func (a *Client) OldRetrieveAllPolicyTypesShort(params *OldRetrieveAllPolicyTypesParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveAllPolicyTypesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveAllPolicyTypesParams()
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
		ID:                 "oldRetrieveAllPolicyTypes",
		Method:             "GET",
		PathPattern:        "/agreement/admin/policy-types",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveAllPolicyTypesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveAllPolicyTypesOK:
		response := &OldRetrieveAllPolicyTypesResponse{}
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
