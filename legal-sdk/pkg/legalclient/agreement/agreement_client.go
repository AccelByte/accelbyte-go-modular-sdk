// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package agreement

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new agreement API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for agreement API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ChangePreferenceConsentShort(params *ChangePreferenceConsentParams, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsentResponse, error)
	RetrieveAcceptedAgreementsShort(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsResponse, error)
	RetrieveAllUsersByPolicyVersionShort(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionResponse, error)
	ChangePreferenceConsent1Short(params *ChangePreferenceConsent1Params, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsent1Response, error)
	AcceptVersionedPolicyShort(params *AcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptVersionedPolicyResponse, error)
	RetrieveAgreementsPublicShort(params *RetrieveAgreementsPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAgreementsPublicResponse, error)
	BulkAcceptVersionedPolicyShort(params *BulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAcceptVersionedPolicyResponse, error)
	IndirectBulkAcceptVersionedPolicyV2Short(params *IndirectBulkAcceptVersionedPolicyV2Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyV2Response, error)
	IndirectBulkAcceptVersionedPolicy1Short(params *IndirectBulkAcceptVersionedPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicy1Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
ChangePreferenceConsentShort change preference consent
This API will Update Preference Consent
*/
func (a *Client) ChangePreferenceConsentShort(params *ChangePreferenceConsentParams, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChangePreferenceConsentParams()
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
		ID:                 "changePreferenceConsent",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChangePreferenceConsentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ChangePreferenceConsentOK:
		response := &ChangePreferenceConsentResponse{}

		response.IsSuccess = true

		return response, nil
	case *ChangePreferenceConsentNotFound:
		response := &ChangePreferenceConsentResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAcceptedAgreementsShort retrieve accepted legal agreements
This API will return all accepted Legal Agreements for specified user
*/
func (a *Client) RetrieveAcceptedAgreementsShort(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreementsParams()
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
		ID:                 "retrieveAcceptedAgreements",
		Method:             "GET",
		PathPattern:        "/agreement/admin/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreementsOK:
		response := &RetrieveAcceptedAgreementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllUsersByPolicyVersionShort retrieve users accepting legal agreements
This API will return users who has accepted a specific policy version.
*/
func (a *Client) RetrieveAllUsersByPolicyVersionShort(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllUsersByPolicyVersionParams()
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
		ID:                 "retrieveAllUsersByPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/agreements/policy-versions/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllUsersByPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllUsersByPolicyVersionOK:
		response := &RetrieveAllUsersByPolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveAllUsersByPolicyVersionNotFound:
		response := &RetrieveAllUsersByPolicyVersionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ChangePreferenceConsent1Short accept/revoke marketing preference consent
Change marketing preference consent.
*/
func (a *Client) ChangePreferenceConsent1Short(params *ChangePreferenceConsent1Params, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsent1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChangePreferenceConsent1Params()
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
		ID:                 "changePreferenceConsent_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/public/agreements/localized-policy-versions/preferences",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChangePreferenceConsent1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ChangePreferenceConsent1OK:
		response := &ChangePreferenceConsent1Response{}

		response.IsSuccess = true

		return response, nil
	case *ChangePreferenceConsent1BadRequest:
		response := &ChangePreferenceConsent1Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcceptVersionedPolicyShort accept a policy version
Accepts a legal policy version. Supply with localized version policy id to accept an agreement
*/
func (a *Client) AcceptVersionedPolicyShort(params *AcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptVersionedPolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptVersionedPolicyParams()
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
		ID:                 "acceptVersionedPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptVersionedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcceptVersionedPolicyCreated:
		response := &AcceptVersionedPolicyResponse{}

		response.IsSuccess = true

		return response, nil
	case *AcceptVersionedPolicyBadRequest:
		response := &AcceptVersionedPolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAgreementsPublicShort retrieve the accepted legal agreements
Retrieve accepted Legal Agreements.
*/
func (a *Client) RetrieveAgreementsPublicShort(params *RetrieveAgreementsPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAgreementsPublicResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAgreementsPublicParams()
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
		ID:                 "retrieveAgreementsPublic",
		Method:             "GET",
		PathPattern:        "/agreement/public/agreements/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAgreementsPublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAgreementsPublicOK:
		response := &RetrieveAgreementsPublicResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveAgreementsPublicBadRequest:
		response := &RetrieveAgreementsPublicResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkAcceptVersionedPolicyShort bulk accept policy versions
Accepts many legal policy versions all at once. Supply with localized version policy id to accept an agreement.
*/
func (a *Client) BulkAcceptVersionedPolicyShort(params *BulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAcceptVersionedPolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkAcceptVersionedPolicyParams()
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
		ID:                 "bulkAcceptVersionedPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkAcceptVersionedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkAcceptVersionedPolicyCreated:
		response := &BulkAcceptVersionedPolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *BulkAcceptVersionedPolicyBadRequest:
		response := &BulkAcceptVersionedPolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IndirectBulkAcceptVersionedPolicyV2Short bulk accept policy versions (indirect)
Accepts many legal policy versions all at once. Supply with localized version policy id, version policy id, policy id, userId, namespace, country code and client id to accept an agreement. This endpoint used by APIGateway during new user registration.
*/
func (a *Client) IndirectBulkAcceptVersionedPolicyV2Short(params *IndirectBulkAcceptVersionedPolicyV2Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyV2Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIndirectBulkAcceptVersionedPolicyV2Params()
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
		ID:                 "indirectBulkAcceptVersionedPolicyV2",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IndirectBulkAcceptVersionedPolicyV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IndirectBulkAcceptVersionedPolicyV2Created:
		response := &IndirectBulkAcceptVersionedPolicyV2Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IndirectBulkAcceptVersionedPolicy1Short bulk accept policy versions (indirect)
Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement. This endpoint used by Authentication Service during new user registration.
*/
func (a *Client) IndirectBulkAcceptVersionedPolicy1Short(params *IndirectBulkAcceptVersionedPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicy1Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIndirectBulkAcceptVersionedPolicy1Params()
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
		ID:                 "indirectBulkAcceptVersionedPolicy_1",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IndirectBulkAcceptVersionedPolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IndirectBulkAcceptVersionedPolicy1Created:
		response := &IndirectBulkAcceptVersionedPolicy1Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *IndirectBulkAcceptVersionedPolicy1NotFound:
		response := &IndirectBulkAcceptVersionedPolicy1Response{}
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
