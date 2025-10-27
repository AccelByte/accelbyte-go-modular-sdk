// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package localized_policy_versions

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new localized policy versions API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for localized policy versions API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	OldRetrieveLocalizedPolicyVersionsShort(params *OldRetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveLocalizedPolicyVersionsResponse, error)
	OldCreateLocalizedPolicyVersionShort(params *OldCreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreateLocalizedPolicyVersionResponse, error)
	OldRetrieveSingleLocalizedPolicyVersionShort(params *OldRetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSingleLocalizedPolicyVersionResponse, error)
	OldUpdateLocalizedPolicyVersionShort(params *OldUpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdateLocalizedPolicyVersionResponse, error)
	OldRequestPresignedURLShort(params *OldRequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*OldRequestPresignedURLResponse, error)
	OldSetDefaultLocalizedPolicyShort(params *OldSetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldSetDefaultLocalizedPolicyResponse, error)
	OldPublicRetrieveSingleLocalizedPolicyVersionShort(params *OldPublicRetrieveSingleLocalizedPolicyVersionParams) (*OldPublicRetrieveSingleLocalizedPolicyVersionResponse, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
OldRetrieveLocalizedPolicyVersionsShort retrieve versions from country-specific policy
Retrieve versions of a particular country-specific policy.
*/
func (a *Client) OldRetrieveLocalizedPolicyVersionsShort(params *OldRetrieveLocalizedPolicyVersionsParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveLocalizedPolicyVersionsResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveLocalizedPolicyVersionsParams()
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
		ID:                 "oldRetrieveLocalizedPolicyVersions",
		Method:             "GET",
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveLocalizedPolicyVersionsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveLocalizedPolicyVersionsOK:
		response := &OldRetrieveLocalizedPolicyVersionsResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldCreateLocalizedPolicyVersionShort create a localized version from country-specific policy
Create a version of a particular country-specific policy.
*/
func (a *Client) OldCreateLocalizedPolicyVersionShort(params *OldCreateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldCreateLocalizedPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldCreateLocalizedPolicyVersionParams()
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
		ID:                 "oldCreateLocalizedPolicyVersion",
		Method:             "POST",
		PathPattern:        "/agreement/admin/localized-policy-versions/versions/{policyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldCreateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldCreateLocalizedPolicyVersionCreated:
		response := &OldCreateLocalizedPolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldCreateLocalizedPolicyVersionBadRequest:
		response := &OldCreateLocalizedPolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OldCreateLocalizedPolicyVersionConflict:
		response := &OldCreateLocalizedPolicyVersionResponse{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRetrieveSingleLocalizedPolicyVersionShort retrieve a localized version from country-specific policy
Retrieve a version of a particular country-specific policy.
*/
func (a *Client) OldRetrieveSingleLocalizedPolicyVersionShort(params *OldRetrieveSingleLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldRetrieveSingleLocalizedPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRetrieveSingleLocalizedPolicyVersionParams()
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
		ID:                 "oldRetrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRetrieveSingleLocalizedPolicyVersionOK:
		response := &OldRetrieveSingleLocalizedPolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldRetrieveSingleLocalizedPolicyVersionNotFound:
		response := &OldRetrieveSingleLocalizedPolicyVersionResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldUpdateLocalizedPolicyVersionShort update a localized version from country-specific policy
Update a version of a particular country-specific policy.
*/
func (a *Client) OldUpdateLocalizedPolicyVersionShort(params *OldUpdateLocalizedPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*OldUpdateLocalizedPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldUpdateLocalizedPolicyVersionParams()
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
		ID:                 "oldUpdateLocalizedPolicyVersion",
		Method:             "PUT",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldUpdateLocalizedPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldUpdateLocalizedPolicyVersionOK:
		response := &OldUpdateLocalizedPolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldUpdateLocalizedPolicyVersionBadRequest:
		response := &OldUpdateLocalizedPolicyVersionResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldRequestPresignedURLShort request presigned url for upload document
Request presigned URL for upload attachment for a particular localized version of base policy.
*/
func (a *Client) OldRequestPresignedURLShort(params *OldRequestPresignedURLParams, authInfo runtime.ClientAuthInfoWriter) (*OldRequestPresignedURLResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldRequestPresignedURLParams()
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
		ID:                 "oldRequestPresignedURL",
		Method:             "POST",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/attachments",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldRequestPresignedURLReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldRequestPresignedURLCreated:
		response := &OldRequestPresignedURLResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldRequestPresignedURLBadRequest:
		response := &OldRequestPresignedURLResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldSetDefaultLocalizedPolicyShort set default localized policy
Update a localized version policy to be the default.
*/
func (a *Client) OldSetDefaultLocalizedPolicyShort(params *OldSetDefaultLocalizedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*OldSetDefaultLocalizedPolicyResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldSetDefaultLocalizedPolicyParams()
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
		ID:                 "oldSetDefaultLocalizedPolicy",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/localized-policy-versions/{localizedPolicyVersionId}/default",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldSetDefaultLocalizedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldSetDefaultLocalizedPolicyOK:
		response := &OldSetDefaultLocalizedPolicyResponse{}

		response.IsSuccess = true

		return response, nil
	case *OldSetDefaultLocalizedPolicyBadRequest:
		response := &OldSetDefaultLocalizedPolicyResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OldPublicRetrieveSingleLocalizedPolicyVersionShort retrieve a localized version
Retrieve specific localized policy version including the policy version and base policy version where the localized policy version located.
Other detail info:
*/
func (a *Client) OldPublicRetrieveSingleLocalizedPolicyVersionShort(params *OldPublicRetrieveSingleLocalizedPolicyVersionParams) (*OldPublicRetrieveSingleLocalizedPolicyVersionResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOldPublicRetrieveSingleLocalizedPolicyVersionParams()
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
		ID:                 "oldPublicRetrieveSingleLocalizedPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/public/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OldPublicRetrieveSingleLocalizedPolicyVersionReader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OldPublicRetrieveSingleLocalizedPolicyVersionOK:
		response := &OldPublicRetrieveSingleLocalizedPolicyVersionResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden:
		response := &OldPublicRetrieveSingleLocalizedPolicyVersionResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound:
		response := &OldPublicRetrieveSingleLocalizedPolicyVersionResponse{}
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
