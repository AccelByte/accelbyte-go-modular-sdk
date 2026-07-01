// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth2_0

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new o auth2 0 API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for o auth2 0 API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	GetAuthorizationServerMetadataWithNamespaceShort(params *GetAuthorizationServerMetadataWithNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetAuthorizationServerMetadataWithNamespaceResponse, error)
	AdminRetrieveUserThirdPartyPlatformTokenV3Short(params *AdminRetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveUserThirdPartyPlatformTokenV3Response, error)
	RevokeUserV3Short(params *RevokeUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserV3Response, error)
	AuthorizeV3Short(params *AuthorizeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthorizeV3Response, error)
	TokenIntrospectionV3Short(params *TokenIntrospectionV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenIntrospectionV3Response, error)
	GetJWKSV3Short(params *GetJWKSV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSV3Response, error)
	SendMFAAuthenticationCodeShort(params *SendMFAAuthenticationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendMFAAuthenticationCodeResponse, error)
	Change2FAMethodShort(params *Change2FAMethodParams, authInfo runtime.ClientAuthInfoWriter) (*Change2FAMethodResponse, error)
	Verify2FACodeShort(params *Verify2FACodeParams, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeResponse, error)
	Verify2FACodeForwardShort(params *Verify2FACodeForwardParams, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeForwardResponse, error)
	OAuthDynamicClientRegisterWithNamespaceV3Short(params *OAuthDynamicClientRegisterWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*OAuthDynamicClientRegisterWithNamespaceV3Response, error)
	RetrieveUserThirdPartyPlatformTokenV3Short(params *RetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveUserThirdPartyPlatformTokenV3Response, error)
	AuthCodeRequestV3Short(params *AuthCodeRequestV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthCodeRequestV3Response, error)
	PlatformTokenGrantV3Short(params *PlatformTokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV3Response, error)
	GetRevocationListV3Short(params *GetRevocationListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListV3Response, error)
	TokenRevocationV3Short(params *TokenRevocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenRevocationV3Response, error)
	SimultaneousLoginV3Short(params *SimultaneousLoginV3Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV3Response, error)
	TokenGrantV3Short(params *TokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV3Response, error)
	VerifyTokenV3Short(params *VerifyTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
GetAuthorizationServerMetadataWithNamespaceShort oauth authorization server metadata
Implements RFC 8414((https://datatracker.ietf.org/doc/html/rfc8414)), providing a standardized mechanism for OAuth 2.0 clients to discover authorization server metadata. Clients can retrieve detailed information about server capabilities, supported grant types, cryptographic algorithms, and API locations without manual configuration.
### Key Features:
Dynamic Discovery: Clients automatically discover server capabilities
Standard Compliance: Implements RFC 8414 OAuth 2.0 Authorization Server Metadata
Security Information: Provides details about supported security features
API Discovery: Returns URLs for all OAuth APIs (authorization, token, revocation, etc.)
### Request:
Method: GET
Path: '/.well-known/oauth-authorization-server/{namespace}'
Headers: Accept: application/json
### Response:
Returns a JSON object containing comprehensive metadata about the OAuth authorization server configuration.
*/
func (a *Client) GetAuthorizationServerMetadataWithNamespaceShort(params *GetAuthorizationServerMetadataWithNamespaceParams, authInfo runtime.ClientAuthInfoWriter) (*GetAuthorizationServerMetadataWithNamespaceResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetAuthorizationServerMetadataWithNamespaceParams()
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
		ID:                 "GetAuthorizationServerMetadataWithNamespace",
		Method:             "GET",
		PathPattern:        "/iam/.well-known/oauth-authorization-server/{namespace}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetAuthorizationServerMetadataWithNamespaceReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetAuthorizationServerMetadataWithNamespaceOK:
		response := &GetAuthorizationServerMetadataWithNamespaceResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminRetrieveUserThirdPartyPlatformTokenV3Short admin retrieve user third party platform token
Admin Retrieve User Third Party Platform Token
Retrieves third party platform token for users that logged in using a third party platform.
If the user has not linked the requested platform in the game namespace, attempts to retrieve the token from the publisher namespace.
Passing platform group name or it's member will return same access token that can be used across the platform members.
If platformUserId provided, IAM will prefer to get platform token by platform user id.

Notes:
The third party platform and platform group covered for this is:
- (psn) ps4web
- (psn) ps4
- (psn) ps5
- epicgames
- twitch
- awscognito
- amazon
- eaorigin
- snapchat
- twitch
- live
*/
func (a *Client) AdminRetrieveUserThirdPartyPlatformTokenV3Short(params *AdminRetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*AdminRetrieveUserThirdPartyPlatformTokenV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminRetrieveUserThirdPartyPlatformTokenV3Params()
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
		ID:                 "AdminRetrieveUserThirdPartyPlatformTokenV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminRetrieveUserThirdPartyPlatformTokenV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminRetrieveUserThirdPartyPlatformTokenV3OK:
		response := &AdminRetrieveUserThirdPartyPlatformTokenV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized:
		response := &AdminRetrieveUserThirdPartyPlatformTokenV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden:
		response := &AdminRetrieveUserThirdPartyPlatformTokenV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound:
		response := &AdminRetrieveUserThirdPartyPlatformTokenV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RevokeUserV3Short revoke user's tokens
Revokes all access tokens and refresh tokens a user has prior to the revocation time.

**Namespace restriction for includeGameNamespace:** When the query parameter includeGameNamespace is set to true, the {namespace} path parameter must be a **publisher namespace**. Passing a game namespace with includeGameNamespace=true returns HTTP 400.
*/
func (a *Client) RevokeUserV3Short(params *RevokeUserV3Params, authInfo runtime.ClientAuthInfoWriter) (*RevokeUserV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRevokeUserV3Params()
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
		ID:                 "RevokeUserV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RevokeUserV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RevokeUserV3NoContent:
		response := &RevokeUserV3Response{}

		response.IsSuccess = true

		return response, nil
	case *RevokeUserV3BadRequest:
		response := &RevokeUserV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RevokeUserV3Unauthorized:
		response := &RevokeUserV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RevokeUserV3Forbidden:
		response := &RevokeUserV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthorizeV3Short oauth2 authorize api
Initializes OAuth2.0 authorization code flow.
Stores the authorization request and redirects to the login page with the authorization request id.
The user can then do the authentication on the login page.
The user will be redirected back to the requesting client with authorization code if successfully authenticated.

Only authorization code flow is supported; implicit flow is not supported.
- **Authorize success**:
redirects to login page with the following information: ?request_id={authorization_request_id}
- **Authorize failure**:
redirects to the given redirect uri with the following information:
?error={error_code}&error;_description={error description}

For Public Client case, it's mandatory to fill **code_challenge** to avoid authorization code interception attack.
Please refer to the RFC for more information about Proof Key for Code Exchange(PKCE): https://datatracker.ietf.org/doc/html/rfc7636

Following are the error code based on the specification:
- invalid_request: The request is missing a required parameter,
includes an invalid parameter value, includes a parameter more than once, or is otherwise malformed.
- server_error:
The authorization server encountered an unexpected condition that prevented it from fulfilling the request.
- unauthorized_client: The client is not authorized to request a token using this method.
- access_denied: The resource owner or authorization server denied the request.
- invalid_scope: The requested scope is invalid, unknown, or malformed.
- unsupported_response_type: The authorization server does not support obtaining a token using this method.
- temporarily_unavailable: The authorization server is currently unable to handle the request
due to a temporary overloading or maintenance of the server.
Please refer to the RFC for more information about authorization code flow: https://tools.ietf.org/html/rfc6749#section-4.1
*/
func (a *Client) AuthorizeV3Short(params *AuthorizeV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthorizeV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthorizeV3Params()
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
		ID:                 "AuthorizeV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/authorize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthorizeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthorizeV3Found:
		response := &AuthorizeV3Response{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TokenIntrospectionV3Short oauth2 token introspection api
Returns information about an access token intended to be used by resource servers or other internal servers.
Requires authorized requests header with valid basic or bearer token.
*/
func (a *Client) TokenIntrospectionV3Short(params *TokenIntrospectionV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenIntrospectionV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenIntrospectionV3Params()
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
		ID:                 "TokenIntrospectionV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/introspect",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenIntrospectionV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TokenIntrospectionV3OK:
		response := &TokenIntrospectionV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TokenIntrospectionV3BadRequest:
		response := &TokenIntrospectionV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *TokenIntrospectionV3Unauthorized:
		response := &TokenIntrospectionV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetJWKSV3Short json web key set for verifying jwt
Serves public keys for verifying JWT access tokens generated by this service.
When a client application wants to verify a JWT token, it needs to get the 'kid' value found in the JWT token header and use it
to look up the corresponding public key from a set returned by this API. The client application can then use that public key to verify the JWT.
A client application might cache the keys so it doesn't need to do a request every time it needs to verify a JWT token. If a client application
caches the keys and a key with the same 'kid' cannot be found in the cache, it should then try to refresh the keys by making a request to this
API again.
Please refer to the RFC for more information about JWK (JSON Web Key): https://tools.ietf.org/html/rfc7517
*/
func (a *Client) GetJWKSV3Short(params *GetJWKSV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetJWKSV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetJWKSV3Params()
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
		ID:                 "GetJWKSV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/jwks",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetJWKSV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetJWKSV3OK:
		response := &GetJWKSV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SendMFAAuthenticationCodeShort send 2fa code
Send 2FA code
Sends the 2FA code.
*/
func (a *Client) SendMFAAuthenticationCodeShort(params *SendMFAAuthenticationCodeParams, authInfo runtime.ClientAuthInfoWriter) (*SendMFAAuthenticationCodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSendMFAAuthenticationCodeParams()
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
		ID:                 "SendMFAAuthenticationCode",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/code",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SendMFAAuthenticationCodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SendMFAAuthenticationCodeNoContent:
		response := &SendMFAAuthenticationCodeResponse{}

		response.IsSuccess = true

		return response, nil
	case *SendMFAAuthenticationCodeBadRequest:
		response := &SendMFAAuthenticationCodeResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendMFAAuthenticationCodeForbidden:
		response := &SendMFAAuthenticationCodeResponse{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendMFAAuthenticationCodeNotFound:
		response := &SendMFAAuthenticationCodeResponse{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendMFAAuthenticationCodeTooManyRequests:
		response := &SendMFAAuthenticationCodeResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SendMFAAuthenticationCodeInternalServerError:
		response := &SendMFAAuthenticationCodeResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Change2FAMethodShort change 2fa method
Change 2FA method
Changes the 2FA method. Only enabled methods are accepted.
Supported methods:
- authenticator
- backupCode
- email
*/
func (a *Client) Change2FAMethodShort(params *Change2FAMethodParams, authInfo runtime.ClientAuthInfoWriter) (*Change2FAMethodResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChange2FAMethodParams()
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
		ID:                 "Change2FAMethod",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/factor/change",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Change2FAMethodReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *Change2FAMethodNoContent:
		response := &Change2FAMethodResponse{}

		response.IsSuccess = true

		return response, nil
	case *Change2FAMethodBadRequest:
		response := &Change2FAMethodResponse{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *Change2FAMethodTooManyRequests:
		response := &Change2FAMethodResponse{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *Change2FAMethodInternalServerError:
		response := &Change2FAMethodResponse{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Verify2FACodeShort verify 2fa code
Verifies the 2FA code.

## 2FA remember device
To remember device for 2FA, the request should provide cookie: device_token or header: Device-Token
*/
func (a *Client) Verify2FACodeShort(params *Verify2FACodeParams, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerify2FACodeParams()
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
		ID:                 "Verify2FACode",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Verify2FACodeReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *Verify2FACodeOK:
		response := &Verify2FACodeResponse{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *Verify2FACodeUnauthorized:
		response := &Verify2FACodeResponse{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Verify2FACodeForwardShort verify 2fa code
Verifies the 2FA code.

This is a forward version for '/mfa/verify'. If there is any error, it will redirect to login website with error details.
If success, it will forward to auth request redirect url.
If got error, it will forward to login website.

## 2FA remember device
To remember device for 2FA, the request should provide cookie: device_token or header: Device-Token
*/
func (a *Client) Verify2FACodeForwardShort(params *Verify2FACodeForwardParams, authInfo runtime.ClientAuthInfoWriter) (*Verify2FACodeForwardResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerify2FACodeForwardParams()
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
		ID:                 "Verify2FACodeForward",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/mfa/verify/forward",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &Verify2FACodeForwardReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *Verify2FACodeForwardFound:
		response := &Verify2FACodeForwardResponse{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
OAuthDynamicClientRegisterWithNamespaceV3Short [dynamic client register] register client
Implements OAuth 2.0 Dynamic Client Registration Management Protocol as defined in RFC 7591.

Enables public users to register with an authorization server, obtaining an OAuth client dynamically without manual intervention.

ð Standards Compliance: This API fully conforms to RFC 7591 specifications for OAuth 2.0 Dynamic Client Registration.

â ï¸ Security Notice: Protected by IP-based rate limiting to prevent abuse while maintaining RFC 7591 compliance.
*/
func (a *Client) OAuthDynamicClientRegisterWithNamespaceV3Short(params *OAuthDynamicClientRegisterWithNamespaceV3Params, authInfo runtime.ClientAuthInfoWriter) (*OAuthDynamicClientRegisterWithNamespaceV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewOAuthDynamicClientRegisterWithNamespaceV3Params()
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
		ID:                 "OAuthDynamicClientRegisterWithNamespaceV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/namespace/{namespace}/register",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &OAuthDynamicClientRegisterWithNamespaceV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *OAuthDynamicClientRegisterWithNamespaceV3Created:
		response := &OAuthDynamicClientRegisterWithNamespaceV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *OAuthDynamicClientRegisterWithNamespaceV3BadRequest:
		response := &OAuthDynamicClientRegisterWithNamespaceV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OAuthDynamicClientRegisterWithNamespaceV3TooManyRequests:
		response := &OAuthDynamicClientRegisterWithNamespaceV3Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OAuthDynamicClientRegisterWithNamespaceV3InternalServerError:
		response := &OAuthDynamicClientRegisterWithNamespaceV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v
	case *OAuthDynamicClientRegisterWithNamespaceV3NotImplemented:
		response := &OAuthDynamicClientRegisterWithNamespaceV3Response{}
		response.Error501 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveUserThirdPartyPlatformTokenV3Short retrieve user third party platform token
Retrieve User Third Party Platform Token
Retrieves third party platform token for users that logged in using a third party platform.
If the user has not linked the requested platform in the game namespace, attempts to retrieve the token from the publisher namespace.
Passing platform group name or it's member will return same access token that can be used across the platform members.

The third party platform and platform group covered for this is:
- (psn) ps4web
- (psn) ps4
- (psn) ps5
- epicgames
- twitch
- awscognito
-
- eaorigin
- snapchat
- twitch
- live


**Authentication:**
The _**userId**_ parameter should match the one in the access token.
*/
func (a *Client) RetrieveUserThirdPartyPlatformTokenV3Short(params *RetrieveUserThirdPartyPlatformTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*RetrieveUserThirdPartyPlatformTokenV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveUserThirdPartyPlatformTokenV3Params()
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
		ID:                 "RetrieveUserThirdPartyPlatformTokenV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveUserThirdPartyPlatformTokenV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveUserThirdPartyPlatformTokenV3OK:
		response := &RetrieveUserThirdPartyPlatformTokenV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *RetrieveUserThirdPartyPlatformTokenV3Unauthorized:
		response := &RetrieveUserThirdPartyPlatformTokenV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveUserThirdPartyPlatformTokenV3Forbidden:
		response := &RetrieveUserThirdPartyPlatformTokenV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *RetrieveUserThirdPartyPlatformTokenV3NotFound:
		response := &RetrieveUserThirdPartyPlatformTokenV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthCodeRequestV3Short generate url to request auth code from third party platform
Generate url to request auth code from third party platform
## Supported platforms:
- **steamopenid** Redirects to steam login page, then redirects back to the platform authenticate API after successfully authenticating user steam.
- **xblweb** Redirects to xbox login page, then redirects back to the platform authenticate API after successfully authenticating xbox user.
- **ps4web** Redirects to psn login page, then redirects back to the platform authenticate API after successfully authenticating psn user.
- **epicgames** Redirects to Epicgames OAuth login page, then redirects to the platform authenticate API after successfully authenticating an Epicgames credential.
- **twitch** Redirects to twitch login page, then redirects back to the platform authenticate API after successfully authenticating twitch user.
- **azure** Redirects to azure login page, then redirects back to the platform authenticate(saml) API after successfully authenticating azure user.
- **facebook** Redirects to facebook login page, then redirects back to the platform authenticate API after successfully authenticating facebook user.
- **google** Redirects to google login page, then redirects back to the platform authenticate API after successfully authenticating google user.
- **snapchat** Redirects to snapchat login page, then redirects back to the platform authenticate API after successfully authenticating snapchat user.
- **discord** Redirects to discord login page, then redirects back to the platform authenticate API after successfully authenticating discord user.
- **amazon** Redirects to amazon login page, then redirects back to the platform authenticate API after successfully authenticating amazon user.
- **oculusweb** Redirects to oculus login page, then redirects back to Login Website page after successfully authenticating oculus user.
*/
func (a *Client) AuthCodeRequestV3Short(params *AuthCodeRequestV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthCodeRequestV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthCodeRequestV3Params()
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
		ID:                 "AuthCodeRequestV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/platforms/{platformId}/authorize",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthCodeRequestV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthCodeRequestV3Found:
		response := &AuthCodeRequestV3Response{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformTokenGrantV3Short oauth2 access token generation specific to platform
Platform token grant specifically used for performing token grant using platform, e.g. Steam, Device, etc.
Automatically creates a headless account if the account associated with the platform does not exist yet, unless the createHeadless param is set to false.
Requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret (only if using Confidential Client type). For more details on client types, refer to the [documentation guide](https://docs.accelbyte.io/gaming-services/modules/foundations/identity-access/authorization/manage-access-control-for-applications/#iam-client-types)

## Request Payload
Device token grant should be requested along with device_id parameter.
The other 3rd party platform token grant should be requested along with platform_token parameter.

## Supported platforms
- **steam**: The platform_tokenâs value is the binary ticket returned by Steam.
If this ticket was generated by Steam GetAuthTicketForWebApi with version >= 1.57, then platform token should use this style: `{identity}:{ticket}`, the `{identity}` was the parameter to call GetAuthTicketForWebApi when the ticket was created. Note: Do not contain `:` in this `{identity}`.
- **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
- **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
- **google**: The platform_tokenâs value is the authorization code or idToken returned by Google OAuth
- **googleplaygames**: The platform_tokenâs value is the authorization code or idToken returned by Google play games OAuth
- **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
- **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
- **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
- **android**: The device_id is the Androidâs device ID
- **ios**: The device_id is the iOSâs device ID.
- **apple**: The platform_tokenâs value is the authorization code or idToken returned by Apple OAuth.(We will use this code to generate APP token)
- **device**: Every device that doesn't run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
- **justice**: The platform_tokenâs value is the designated userâs access token.
- **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
- **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **nintendo**: The platform_tokenâs value is the id_token returned by Nintendo OAuth.
- **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
- **live**: The platform_tokenâs value is xbox XSTS token
- **xblweb**: The platform_tokenâs value is code returned by xbox after login
- **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
- **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
- **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

## Account Group
Several platforms are grouped under account groups. The accounts on these platforms have the same platform user id.
Login using one of these platform will returns the same IAM user.
Following is the current registered account grouping:
- Steam group(steamnetwork):
- steam
- steamopenid
- PSN group(psn)
- ps4web
- ps4
- ps5
- XBOX group(xbox)
- live
- xblweb
- Oculus group(oculusgroup)
- oculus
- oculusweb

## Access Token Content
Following is the access tokenâs content:
- **namespace**. It is the namespace the token was generated from.
- **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
- **roles** (deprecated). The subâs roles. It is empty if the token is generated from the client credential
- **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
- **permissions**. The sub or audâ permissions
- **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
- **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
- 1: Email Address Verified
- 2: Phone Number Verified
- 4: Anonymous
- 8: Suspicious Login
- **aud**. The aud is the client ID.
- **iat**. The time the token issues at. It is in Epoch time format
- **exp**. The time the token expires. It is in Epoch time format
- **sub**. The UserID. The sub is omitted if the token is generated from client credential

## Bans
The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.

## 2FA remember device
To remember device for 2FA, the request should provide cookie: device_token or header: Device-Token

## Login Queue
When the Login Queue is enabled and at capacity, this API returns a 401 Unauthorized response, with the queue ticket included in the response body.

## Legal eligibility check
If user hasn't accepted required legal policy (if any), the field `is_comply` will be false in response and response token will have no permission.
*/
func (a *Client) PlatformTokenGrantV3Short(params *PlatformTokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenGrantV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformTokenGrantV3Params()
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
		ID:                 "PlatformTokenGrantV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/platforms/{platformId}/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformTokenGrantV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformTokenGrantV3OK:
		response := &PlatformTokenGrantV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PlatformTokenGrantV3BadRequest:
		response := &PlatformTokenGrantV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformTokenGrantV3Unauthorized:
		response := &PlatformTokenGrantV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformTokenGrantV3Forbidden:
		response := &PlatformTokenGrantV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformTokenGrantV3ServiceUnavailable:
		response := &PlatformTokenGrantV3Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetRevocationListV3Short oauth2 revocation list api
Returns a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format.
Requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
The bloom filter uses MurmurHash3 algorithm for hashing the values
*/
func (a *Client) GetRevocationListV3Short(params *GetRevocationListV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetRevocationListV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetRevocationListV3Params()
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
		ID:                 "GetRevocationListV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/oauth/revocationlist",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetRevocationListV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetRevocationListV3OK:
		response := &GetRevocationListV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GetRevocationListV3Unauthorized:
		response := &GetRevocationListV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TokenRevocationV3Short oauth2 token revocation api
Revokes a token.
Requires authorized requests header with Basic Authentication from the client that established the token.
*/
func (a *Client) TokenRevocationV3Short(params *TokenRevocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenRevocationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenRevocationV3Params()
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
		ID:                 "TokenRevocationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/revoke",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenRevocationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TokenRevocationV3OK:
		response := &TokenRevocationV3Response{}

		response.IsSuccess = true

		return response, nil
	case *TokenRevocationV3BadRequest:
		response := &TokenRevocationV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *TokenRevocationV3Unauthorized:
		response := &TokenRevocationV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
SimultaneousLoginV3Short simultaneous login
# This API is in ALPHA, avoid using this API for now, reach out to AB support for inquiries

Simultaneous login flow.

The primary goals of this project are to entitle players to authenticate on a native PC platform(Steam/Epic) and the PlayStation platform,
link their accounts, and provide support for platform sync with a valid 3rd platform access token.

## Given a valid native ticket and empty simultaneous ticket, these cases will be failed
- Native ticket's account is not linked AGS account yet
- Native ticket's account is linked AGS account, but AGS account is not linked simultaneous platform yet
- Native ticket's account is linked AGS account, AGS account is linked simultaneous platform but there is no available simultaneous token.(only if this platform is expected to store the platform token)

## Given a valid native ticket and empty simultaneous ticket, this case will be success
- Native ticket's account already linked AGS account, this AGS account already linked simultaneous platform. There is valid simultaneous token.(this is required only when this simultaneous is expected to cache platform token)

## Given a valid native ticket token and valid simultaneous ticket, these cases will be failed
#### Native ticket's account is already linked with AGS account
- Native linked AGS account is linked this simultaneous platform but is different with simultaneous ticket's account
- Native linked AGS account is not linked with simultaneous but has a linking history with simultaneous platform and it is different with simultaneous ticket's account
#### Native ticket's account is not linked with AGS account and Simultaneous ticket's account is already linked wth AGS account
- Simultaneous linked AGS account is linked this native platform but is different with native ticket's account
- Simultaneous linked AGS account is not linked with native but has a linking history with native platform and it is different with native ticket's account

## Given a valid native ticket and valid simultaneous ticket, these cases will be success
- Native ticket's account & Simultaneous ticket's account are both not linked to AGS account yet
- Native ticket's account & Simultaneous ticket's account are already linked to same AGS account
*/
func (a *Client) SimultaneousLoginV3Short(params *SimultaneousLoginV3Params, authInfo runtime.ClientAuthInfoWriter) (*SimultaneousLoginV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewSimultaneousLoginV3Params()
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
		ID:                 "SimultaneousLoginV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/simultaneousLogin",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &SimultaneousLoginV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *SimultaneousLoginV3OK:
		response := &SimultaneousLoginV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *SimultaneousLoginV3BadRequest:
		response := &SimultaneousLoginV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SimultaneousLoginV3Unauthorized:
		response := &SimultaneousLoginV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SimultaneousLoginV3Conflict:
		response := &SimultaneousLoginV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v
	case *SimultaneousLoginV3InternalServerError:
		response := &SimultaneousLoginV3Response{}
		response.Error500 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
TokenGrantV3Short oauth2 access token generation
Supports grant type:
1. Grant Type == `authorization_code`:
It generates the user token by given the authorization
code which generated in "/iam/v3/authenticate" API response. It should also pass
in the redirect_uri, which should be the same as generating the
authorization code request.
2. Grant Type == `password`:
The grant type to use for authenticating a user, whether it's by email / username and password combination
or through platform.
3. Grant Type == `refresh_token`:
Used to get a new access token for a valid refresh token.
4. Grant Type == `client_credentials`:
It generates a token by checking the client credentials provided through Authorization header.
5. Grant Type == `urn:ietf:params:oauth:grant-type:extend_client_credentials`:
It generates a token by checking the client credentials provided through Authorization header.
It only allows publisher/studio namespace client.
In generated token:
1. There wil be no roles, namespace_roles & permission.
2. The scope will be fixed as 'extend'.
3. There will have a new field 'extend_namespace', the value is from token request body.

## Access Token Content
Following is the access tokenâs content:
- **namespace**. It is the namespace the token was generated from.
- **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
- **roles** (deprecated). The subâs roles. It is empty if the token is generated from the client credential
- **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
- **permissions**. The sub or audâ permissions
- **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
- **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
- 1: Email Address Verified
- 2: Phone Number Verified
- 4: Anonymous
- 8: Suspicious Login
- **aud**. The aud is the targeted resource server.
- **iat**. The time the token issues at. It is in Epoch time format
- **exp**. The time the token expires. It is in Epoch time format
- **client_id**. The UserID. The sub is omitted if the token is generated from client credential
- **scope**. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings

## Bans
The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.

## Device Cookie Validation
_**For grant type "password" only**_
Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
It will read the device cookie from cookie **Auth-Trust-Id**. If device cookie not found, it will generate a new one and sets it into the response body **auth_trust_id** on successful login.

## Track Login History
It will track login history to detect suspicious login activity. Provide **Device-Id** (alphanumeric) in the request header, otherwise it will be set to "unknown".
Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"

## 2FA remember device
To remember device for 2FA, the request should provide cookie: device_token or header: Device-Token

## Login Queue
_**For grant type "code" and "password" only**_
When the Login Queue is enabled and at capacity, this API returns a 401 Unauthorized response, with the queue ticket included in the response body.

## Legal eligibility check
If it is a user token request and user hasn't accepted required legal policy (if any), the field `is_comply` will be false in response and response token will have no permission.
*/
func (a *Client) TokenGrantV3Short(params *TokenGrantV3Params, authInfo runtime.ClientAuthInfoWriter) (*TokenGrantV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewTokenGrantV3Params()
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
		ID:                 "TokenGrantV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &TokenGrantV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *TokenGrantV3OK:
		response := &TokenGrantV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *TokenGrantV3BadRequest:
		response := &TokenGrantV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *TokenGrantV3Unauthorized:
		response := &TokenGrantV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *TokenGrantV3Forbidden:
		response := &TokenGrantV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *TokenGrantV3TooManyRequests:
		response := &TokenGrantV3Response{}
		response.Error429 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
VerifyTokenV3Short oauth2 token verification api
Requires Basic authentication (Base64-encoded ClientID:ClientSecret) in the Authorization header.
*/
func (a *Client) VerifyTokenV3Short(params *VerifyTokenV3Params, authInfo runtime.ClientAuthInfoWriter) (*VerifyTokenV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewVerifyTokenV3Params()
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
		ID:                 "VerifyTokenV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/oauth/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &VerifyTokenV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *VerifyTokenV3OK:
		response := &VerifyTokenV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *VerifyTokenV3BadRequest:
		response := &VerifyTokenV3Response{}

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
