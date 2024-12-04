// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package third_party_credential

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new third party credential API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for third party credential API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	RetrieveAllThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3Response, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Response, error)
	RetrieveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3Response, error)
	AddThirdPartyLoginPlatformCredentialV3Short(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Response, error)
	DeleteThirdPartyLoginPlatformCredentialV3Short(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3Response, error)
	UpdateThirdPartyLoginPlatformCredentialV3Short(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3Response, error)
	UpdateThirdPartyLoginPlatformDomainV3Short(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3Response, error)
	DeleteThirdPartyLoginPlatformDomainV3Short(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3Response, error)
	AdminCheckThirdPartyLoginPlatformAvailabilityV3Short(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3Response, error)
	RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Response, error)
	RetrieveActiveOIDCClientsPublicV3Short(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
RetrieveAllThirdPartyLoginPlatformCredentialV3Short get all third party platform credential
This is the API to Get All Active 3rd Platform Credential.
*/
func (a *Client) RetrieveAllThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllThirdPartyLoginPlatformCredentialV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveAllThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllThirdPartyLoginPlatformCredentialV3OK:
		response := &RetrieveAllThirdPartyLoginPlatformCredentialV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Unauthorized:
		response := &RetrieveAllThirdPartyLoginPlatformCredentialV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3Forbidden:
		response := &RetrieveAllThirdPartyLoginPlatformCredentialV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3NotFound:
		response := &RetrieveAllThirdPartyLoginPlatformCredentialV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllThirdPartyLoginPlatformCredentialV3InternalServerError:
		response := &RetrieveAllThirdPartyLoginPlatformCredentialV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short get all active third party platform active credential
This is the API to Get All Active 3rd Platform Credential.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/all/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3OK:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Unauthorized:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Forbidden:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3NotFound:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialV3InternalServerError:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveThirdPartyLoginPlatformCredentialV3Short retrieve third party platform credential
This is the API to Get 3rd Platform Credential.
*/
func (a *Client) RetrieveThirdPartyLoginPlatformCredentialV3Short(params *RetrieveThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveThirdPartyLoginPlatformCredentialV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "RetrieveThirdPartyLoginPlatformCredentialV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveThirdPartyLoginPlatformCredentialV3OK:
		response := &RetrieveThirdPartyLoginPlatformCredentialV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveThirdPartyLoginPlatformCredentialV3Unauthorized:
		response := &RetrieveThirdPartyLoginPlatformCredentialV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveThirdPartyLoginPlatformCredentialV3Forbidden:
		response := &RetrieveThirdPartyLoginPlatformCredentialV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveThirdPartyLoginPlatformCredentialV3NotFound:
		response := &RetrieveThirdPartyLoginPlatformCredentialV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveThirdPartyLoginPlatformCredentialV3InternalServerError:
		response := &RetrieveThirdPartyLoginPlatformCredentialV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AddThirdPartyLoginPlatformCredentialV3Short add third party platform credential
This is the API to Add 3rd Platform Credential.
- The secret for **apple** is base64 encoded private key.
- No secret for **awscognito**, we only need to configure AWS Cognito Region and User Pool
- The secret for **discord** is client secret of the twitch client id.
- The secret for **epicgames** is client secret of the epicgames client id.
- The secret for **facebook** is client secret of the facebook client id.
- The secret for **google** is client secret of the google OAuth client.
- No secret for **nintendo**, we only need to configure app id of the game
- No secret for **netflix**, we configure the Root, Public, Private Key certificate pem file and target environment; value: [sandbox, production]
- The secret for **oculus** is app secret of the oculus app.
- The secret for **ps4, ps5, and ps4web** is client secret of the psn web server.
- The secret for **steam** is the Steam Web API Key.
- The secret for **steamopenid** is the Steam Web API Key.
- The secret for **twitch** is client secret of the twitch client.
- The secret for **live** is the Relying Party Private Key in base64 encode PEM format.
- The secret for **xblwebapi** is client secret of the xbl client.

If generic oauth flow is set to true:
- Current supported value for TokenAuthenticationType are **code, idToken and bearerToken**
- `TokenClaimsMapping` is used to extract user info from idToken claims or user info endpoint response accessed using bearerToken.
Its a JSON format with key should be `name`, `email` and `avatarUrl`
since IAM will look up for these key when extracting user info. **default claims keys : userIdentity/sub, name, email and avatarUrl/picture**
*/
func (a *Client) AddThirdPartyLoginPlatformCredentialV3Short(params *AddThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*AddThirdPartyLoginPlatformCredentialV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAddThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "AddThirdPartyLoginPlatformCredentialV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AddThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AddThirdPartyLoginPlatformCredentialV3Created:
		response := &AddThirdPartyLoginPlatformCredentialV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AddThirdPartyLoginPlatformCredentialV3BadRequest:
		response := &AddThirdPartyLoginPlatformCredentialV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddThirdPartyLoginPlatformCredentialV3Unauthorized:
		response := &AddThirdPartyLoginPlatformCredentialV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddThirdPartyLoginPlatformCredentialV3Forbidden:
		response := &AddThirdPartyLoginPlatformCredentialV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AddThirdPartyLoginPlatformCredentialV3InternalServerError:
		response := &AddThirdPartyLoginPlatformCredentialV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteThirdPartyLoginPlatformCredentialV3Short delete third party platform credential
This is the API to Delete 3rd Platform Credential.
*/
func (a *Client) DeleteThirdPartyLoginPlatformCredentialV3Short(params *DeleteThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformCredentialV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "DeleteThirdPartyLoginPlatformCredentialV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformCredentialV3NoContent:
		response := &DeleteThirdPartyLoginPlatformCredentialV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteThirdPartyLoginPlatformCredentialV3Unauthorized:
		response := &DeleteThirdPartyLoginPlatformCredentialV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteThirdPartyLoginPlatformCredentialV3Forbidden:
		response := &DeleteThirdPartyLoginPlatformCredentialV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteThirdPartyLoginPlatformCredentialV3NotFound:
		response := &DeleteThirdPartyLoginPlatformCredentialV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteThirdPartyLoginPlatformCredentialV3InternalServerError:
		response := &DeleteThirdPartyLoginPlatformCredentialV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateThirdPartyLoginPlatformCredentialV3Short update third party platform credential
This is the API to Add 3rd Platform Credential.
- The secret for **apple** is base64 encoded private key.
- No secret for **awscognito**, we only need to configure AWS Cognito Region and User Pool
- The secret for **discord** is client secret of the twitch client id.
- The secret for **epicgames** is client secret of the epicgames client id.
- The secret for **facebook** is client secret of the facebook client id.
- The secret for **google** is client secret of the google OAuth client.
- No secret for **nintendo**, we only need to configure app id of the game
- No secret for **netflix**, we configure the Root, Public, Private Key certificate pem file and target environment; value: [sandbox, production]
- The secret for **oculus** is app secret of the oculus app.
- The secret for **ps4, ps5, and ps4web** is client secret of the psn web server.
- The secret for **steam** is the Steam Web API Key.
- The secret for **steamopenid** is the Steam Web API Key.
- The secret for **twitch** is client secret of the twitch client.
- The secret for **live** is the Relying Party Private Key in base64 encode PEM format.
- The secret for **xblwebapi** is client secret of the xbl client.

If generic oauth flow is set to true:
- Current supported value for TokenAuthenticationType is **code, idToken and bearerToken**
- `TokenClaimsMapping` is used to extract user info from idToken claims or user info endpoint response accessed using bearerToken.
Its a JSON format with key should be `name`, `email` and `avatarUrl`
since IAM will look up for these key when extracting user info.**default claims keys : userIdentity/sub, name, email and avatarUrl/picture**
*/
func (a *Client) UpdateThirdPartyLoginPlatformCredentialV3Short(params *UpdateThirdPartyLoginPlatformCredentialV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformCredentialV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformCredentialV3Params()
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
		ID:                 "UpdateThirdPartyLoginPlatformCredentialV3",
		Method:             "PATCH",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformCredentialV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformCredentialV3OK:
		response := &UpdateThirdPartyLoginPlatformCredentialV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateThirdPartyLoginPlatformCredentialV3BadRequest:
		response := &UpdateThirdPartyLoginPlatformCredentialV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateThirdPartyLoginPlatformCredentialV3Unauthorized:
		response := &UpdateThirdPartyLoginPlatformCredentialV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateThirdPartyLoginPlatformCredentialV3Forbidden:
		response := &UpdateThirdPartyLoginPlatformCredentialV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateThirdPartyLoginPlatformCredentialV3NotFound:
		response := &UpdateThirdPartyLoginPlatformCredentialV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateThirdPartyLoginPlatformCredentialV3InternalServerError:
		response := &UpdateThirdPartyLoginPlatformCredentialV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpdateThirdPartyLoginPlatformDomainV3Short set third party platform credential's domain
This is the API to set 3rd Platform domain.
*/
func (a *Client) UpdateThirdPartyLoginPlatformDomainV3Short(params *UpdateThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpdateThirdPartyLoginPlatformDomainV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpdateThirdPartyLoginPlatformDomainV3Params()
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
		ID:                 "UpdateThirdPartyLoginPlatformDomainV3",
		Method:             "PUT",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpdateThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpdateThirdPartyLoginPlatformDomainV3OK:
		response := &UpdateThirdPartyLoginPlatformDomainV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *UpdateThirdPartyLoginPlatformDomainV3BadRequest:
		response := &UpdateThirdPartyLoginPlatformDomainV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateThirdPartyLoginPlatformDomainV3Unauthorized:
		response := &UpdateThirdPartyLoginPlatformDomainV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateThirdPartyLoginPlatformDomainV3Forbidden:
		response := &UpdateThirdPartyLoginPlatformDomainV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateThirdPartyLoginPlatformDomainV3NotFound:
		response := &UpdateThirdPartyLoginPlatformDomainV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *UpdateThirdPartyLoginPlatformDomainV3InternalServerError:
		response := &UpdateThirdPartyLoginPlatformDomainV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
DeleteThirdPartyLoginPlatformDomainV3Short unregister third party platform credential's domain
This is the API to unregister 3rd Platform domain.
*/
func (a *Client) DeleteThirdPartyLoginPlatformDomainV3Short(params *DeleteThirdPartyLoginPlatformDomainV3Params, authInfo runtime.ClientAuthInfoWriter) (*DeleteThirdPartyLoginPlatformDomainV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewDeleteThirdPartyLoginPlatformDomainV3Params()
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
		ID:                 "DeleteThirdPartyLoginPlatformDomainV3",
		Method:             "DELETE",
		PathPattern:        "/iam/v3/admin/namespaces/{namespace}/platforms/{platformId}/clients/domain",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &DeleteThirdPartyLoginPlatformDomainV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *DeleteThirdPartyLoginPlatformDomainV3NoContent:
		response := &DeleteThirdPartyLoginPlatformDomainV3Response{}

		response.IsSuccess = true

		return response, nil
	case *DeleteThirdPartyLoginPlatformDomainV3BadRequest:
		response := &DeleteThirdPartyLoginPlatformDomainV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteThirdPartyLoginPlatformDomainV3Unauthorized:
		response := &DeleteThirdPartyLoginPlatformDomainV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteThirdPartyLoginPlatformDomainV3Forbidden:
		response := &DeleteThirdPartyLoginPlatformDomainV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteThirdPartyLoginPlatformDomainV3NotFound:
		response := &DeleteThirdPartyLoginPlatformDomainV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *DeleteThirdPartyLoginPlatformDomainV3InternalServerError:
		response := &DeleteThirdPartyLoginPlatformDomainV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCheckThirdPartyLoginPlatformAvailabilityV3Short check 3rd party platform availability
This is the API to check specific 3rd party platform availability.
Passing platform group name or it's member will return same platform availability data
Supported third party platform and platform group:
- PSN group(psn)
- ps4web
- ps4
- ps5
*/
func (a *Client) AdminCheckThirdPartyLoginPlatformAvailabilityV3Short(params *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminCheckThirdPartyLoginPlatformAvailabilityV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Params()
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
		ID:                 "AdminCheckThirdPartyLoginPlatformAvailabilityV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/admin/platforms/{platformId}/availability",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCheckThirdPartyLoginPlatformAvailabilityV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK:
		response := &AdminCheckThirdPartyLoginPlatformAvailabilityV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest:
		response := &AdminCheckThirdPartyLoginPlatformAvailabilityV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized:
		response := &AdminCheckThirdPartyLoginPlatformAvailabilityV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden:
		response := &AdminCheckThirdPartyLoginPlatformAvailabilityV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short get all active third party platform active credential for public usage
This is the Public API to Get All Active 3rd Platform Credential.
*/
func (a *Client) RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Short(params *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Params()
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
		ID:                 "RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/active",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3OK:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Unauthorized:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Forbidden:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3NotFound:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3InternalServerError:
		response := &RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveActiveOIDCClientsPublicV3Short get active oidc platform credential by client id
This is the Public API to Get All Active OIDC Platform Credential By Client ID
*/
func (a *Client) RetrieveActiveOIDCClientsPublicV3Short(params *RetrieveActiveOIDCClientsPublicV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveActiveOIDCClientsPublicV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveActiveOIDCClientsPublicV3Params()
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
		ID:                 "RetrieveActiveOIDCClientsPublicV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/public/namespaces/{namespace}/platforms/clients/oidc",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveActiveOIDCClientsPublicV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveActiveOIDCClientsPublicV3OK:
		response := &RetrieveActiveOIDCClientsPublicV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveActiveOIDCClientsPublicV3NotFound:
		response := &RetrieveActiveOIDCClientsPublicV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveActiveOIDCClientsPublicV3InternalServerError:
		response := &RetrieveActiveOIDCClientsPublicV3Response{}
		response.Error500 = v.Payload

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
