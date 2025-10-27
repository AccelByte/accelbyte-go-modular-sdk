// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policies

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new policies API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for policies API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrievePoliciesShort(params *RetrievePoliciesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePoliciesResponse, error)
	OldUpdatePolicyShort(params *OldUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdatePolicyResponse, error)
	OldSetDefaultPolicyShort(params *OldSetDefaultPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldSetDefaultPolicyResponse, error)
	RetrieveCountryListWithPoliciesShort(params *RetrieveCountryListWithPoliciesParams) (*RetrieveCountryListWithPoliciesResponse, error)
	RetrieveLatestPoliciesShort(params *RetrieveLatestPoliciesParams) (*RetrieveLatestPoliciesResponse, error)
	RetrieveLatestPoliciesPublicShort(params *RetrieveLatestPoliciesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLatestPoliciesPublicResponse, error)
	OldRetrieveLatestPoliciesByNamespaceAndCountryPublicShort(params *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) (*OldRetrieveLatestPoliciesByNamespaceAndCountryPublicResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
RetrievePoliciesShort retrieve policies by country
Retrieve all active policies based on a country.
*/
func (a *Client) RetrievePoliciesShort(params *RetrievePoliciesParams, authInfo runtime.ClientAuthInfoWriter) (*RetrievePoliciesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrievePoliciesParams()
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
		ID:                 "retrievePolicies",
		Method:             "GET",
		PathPattern:        "/agreement/admin/policies/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrievePoliciesReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrievePoliciesOK:
		response := &RetrievePoliciesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldUpdatePolicyShort update country-specific policy
Update country-specific and country-group policy.
*/
func (a *Client) OldUpdatePolicyShort(params *OldUpdatePolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdatePolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldUpdatePolicyParams()
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
		ID:                 "oldUpdatePolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/{policyId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldUpdatePolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldUpdatePolicyOK:
		response := &OldUpdatePolicyResponse{}

		response.IsSuccess = true

		return response, nil
	case *OldUpdatePolicyBadRequest:
		response := &OldUpdatePolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldSetDefaultPolicyShort set default policy
Update a policy to be the default.
*/
func (a *Client) OldSetDefaultPolicyShort(params *OldSetDefaultPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldSetDefaultPolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldSetDefaultPolicyParams()
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
		ID:                 "oldSetDefaultPolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/policies/{policyId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldSetDefaultPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldSetDefaultPolicyOK:
		response := &OldSetDefaultPolicyResponse{}

		response.IsSuccess = true

		return response, nil
	case *OldSetDefaultPolicyBadRequest:
		response := &OldSetDefaultPolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveCountryListWithPoliciesShort retrieve list of countries that have active legal policies
Retrieve List of Countries that have Active and Visible Legal Policies.
*/
func (a *Client) RetrieveCountryListWithPoliciesShort(params *RetrieveCountryListWithPoliciesParams) (*RetrieveCountryListWithPoliciesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveCountryListWithPoliciesParams()
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
		ID:                 "retrieveCountryListWithPolicies",
		Method:             "GET",
		PathPattern:        "/agreement/public/policies/countries/list",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveCountryListWithPoliciesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveCountryListWithPoliciesOK:
		response := &RetrieveCountryListWithPoliciesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveLatestPoliciesShort retrieve latest policies by country
Retrieve all active latest policies based on a country.
Other detail info:

  - Leave the policyType empty if you want to be responded with all policy type
  - Fill the tags if you want to filter the responded policy by tags
  - Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist
*/
func (a *Client) RetrieveLatestPoliciesShort(params *RetrieveLatestPoliciesParams) (*RetrieveLatestPoliciesResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLatestPoliciesParams()
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
		ID:                 "retrieveLatestPolicies",
		Method:             "GET",
		PathPattern:        "/agreement/public/policies/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLatestPoliciesReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLatestPoliciesOK:
		response := &RetrieveLatestPoliciesResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveLatestPoliciesPublicShort retrieve latest policies by namespace and country
Retrieve all active latest policies based on a namespace and country. The country will be read from user token.
Other detail info:

  - Leave the policyType empty if you want to be responded with all policy type
  - Fill the tags if you want to filter the responded policy by tags
  - Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist
  - Fill the alwaysIncludeDefault with true if you want to be responded with always include default policy. If there are duplicate policies (default policies and country specific policies with same base policy) it'll include policy with same country code, for example:
  - Document 1 (default): Region US (default), UA
  - Document 2 (default): Region US (default)
  - Document 3 (default): Region US (default)
  - User: Region UA
  - Query: alwaysIncludeDefault: true
  - Response: Document 1 (UA), Document 2 (US), Document 3 (US)
*/
func (a *Client) RetrieveLatestPoliciesPublicShort(params *RetrieveLatestPoliciesPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveLatestPoliciesPublicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveLatestPoliciesPublicParams()
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
		ID:                 "retrieveLatestPoliciesPublic",
		Method:             "GET",
		PathPattern:        "/agreement/public/policies/namespaces/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveLatestPoliciesPublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveLatestPoliciesPublicOK:
		response := &RetrieveLatestPoliciesPublicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveLatestPoliciesPublicNotFound:
		response := &RetrieveLatestPoliciesPublicResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveLatestPoliciesByNamespaceAndCountryPublicShort retrieve latest policies by namespace and country
Retrieve all active latest policies based on a namespace and country.
Other detail info:

  - Leave the policyType empty if you want to be responded with all policy type
  - Fill the tags if you want to filter the responded policy by tags
  - Fill the defaultOnEmpty with true if you want to be responded with default country-specific policy if your requested country is not exist
  - Fill the alwaysIncludeDefault with true if you want to be responded with always include default policy. If there are duplicate policies (default policies and country specific policies with same base policy) it'll include policy with same country code, for example:
  - Document 1 (default): Region US (default), UA
  - Document 2 (default): Region US (default)
  - Document 3 (default): Region US (default)
  - User: Region UA
  - Query: alwaysIncludeDefault: true
  - Response: Document 1 (UA), Document 2 (US), Document 3 (US)
*/
func (a *Client) OldRetrieveLatestPoliciesByNamespaceAndCountryPublicShort(params *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams) (*OldRetrieveLatestPoliciesByNamespaceAndCountryPublicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveLatestPoliciesByNamespaceAndCountryPublicParams()
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
		ID:                 "oldRetrieveLatestPoliciesByNamespaceAndCountryPublic",
		Method:             "GET",
		PathPattern:        "/agreement/public/policies/namespaces/{namespace}/countries/{countryCode}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveLatestPoliciesByNamespaceAndCountryPublicReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveLatestPoliciesByNamespaceAndCountryPublicOK:
		response := &OldRetrieveLatestPoliciesByNamespaceAndCountryPublicResponse{}
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
