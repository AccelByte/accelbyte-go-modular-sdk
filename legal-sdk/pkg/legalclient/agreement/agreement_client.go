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
	OldRetrieveAcceptedAgreementsShort(params *OldRetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveAcceptedAgreementsResponse, error)
	OldRetrieveAllUsersByPolicyVersionShort(params *OldRetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveAllUsersByPolicyVersionResponse, error)
	PublicChangePreferenceConsentShort(params *PublicChangePreferenceConsentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChangePreferenceConsentResponse, error)
	AcceptVersionedPolicyShort(params *AcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptVersionedPolicyResponse, error)
	RetrieveAgreementsPublicShort(params *RetrieveAgreementsPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAgreementsPublicResponse, error)
	BulkAcceptVersionedPolicyShort(params *BulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAcceptVersionedPolicyResponse, error)
	IndirectBulkAcceptVersionedPolicyV2Short(params *IndirectBulkAcceptVersionedPolicyV2Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyV2Response, error)
	PublicIndirectBulkAcceptVersionedPolicyShort(params *PublicIndirectBulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIndirectBulkAcceptVersionedPolicyResponse, error)

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

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveAcceptedAgreementsShort retrieve accepted legal agreements
This API will return all accepted Legal Agreements for specified user
*/
func (a *Client) OldRetrieveAcceptedAgreementsShort(params *OldRetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveAcceptedAgreementsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveAcceptedAgreementsParams()
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
		ID:                 "oldRetrieveAcceptedAgreements",
		Method:             "GET",
		PathPattern:        "/agreement/admin/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveAcceptedAgreementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveAcceptedAgreementsOK:
		response := &OldRetrieveAcceptedAgreementsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveAllUsersByPolicyVersionShort retrieve users accepting legal agreements
This API will return users who has accepted a specific policy version.
*/
func (a *Client) OldRetrieveAllUsersByPolicyVersionShort(params *OldRetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveAllUsersByPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveAllUsersByPolicyVersionParams()
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
		ID:                 "oldRetrieveAllUsersByPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/agreements/policy-versions/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveAllUsersByPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveAllUsersByPolicyVersionOK:
		response := &OldRetrieveAllUsersByPolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldRetrieveAllUsersByPolicyVersionNotFound:
		response := &OldRetrieveAllUsersByPolicyVersionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PublicChangePreferenceConsentShort accept/revoke marketing preference consent
Change marketing preference consent.
*/
func (a *Client) PublicChangePreferenceConsentShort(params *PublicChangePreferenceConsentParams, authInfo runtime.ClientAuthInfoWriter) (*PublicChangePreferenceConsentResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicChangePreferenceConsentParams()
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
		ID:                 "publicChangePreferenceConsent",
		Method:             "PATCH",
		PathPattern:        "/agreement/public/agreements/localized-policy-versions/preferences",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicChangePreferenceConsentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicChangePreferenceConsentOK:
		response := &PublicChangePreferenceConsentResponse{}

		response.IsSuccess = true

		return response, nil
	case *PublicChangePreferenceConsentBadRequest:
		response := &PublicChangePreferenceConsentResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

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

		return response, v

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

		return response, v

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

		return response, v

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
PublicIndirectBulkAcceptVersionedPolicyShort bulk accept policy versions (indirect)
Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement. This endpoint used by Authentication Service during new user registration.
*/
func (a *Client) PublicIndirectBulkAcceptVersionedPolicyShort(params *PublicIndirectBulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*PublicIndirectBulkAcceptVersionedPolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPublicIndirectBulkAcceptVersionedPolicyParams()
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
		ID:                 "publicIndirectBulkAcceptVersionedPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PublicIndirectBulkAcceptVersionedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PublicIndirectBulkAcceptVersionedPolicyCreated:
		response := &PublicIndirectBulkAcceptVersionedPolicyResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PublicIndirectBulkAcceptVersionedPolicyNotFound:
		response := &PublicIndirectBulkAcceptVersionedPolicyResponse{}
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
