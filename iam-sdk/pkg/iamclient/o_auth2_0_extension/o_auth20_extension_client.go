// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth2_0_extension

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new o auth2 0 extension API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for o auth2 0 extension API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	UserAuthenticationV3Short(params *UserAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*UserAuthenticationV3Response, error)
	AuthenticationWithPlatformLinkV3Short(params *AuthenticationWithPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV3Response, error)
	AuthenticateAndLinkForwardV3Short(params *AuthenticateAndLinkForwardV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticateAndLinkForwardV3Response, error)
	GenerateTokenByNewHeadlessAccountV3Short(params *GenerateTokenByNewHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV3Response, error)
	RequestOneTimeLinkingCodeV3Short(params *RequestOneTimeLinkingCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestOneTimeLinkingCodeV3Response, error)
	ValidateOneTimeLinkingCodeV3Short(params *ValidateOneTimeLinkingCodeV3Params) (*ValidateOneTimeLinkingCodeV3Response, error)
	RequestTokenByOneTimeLinkCodeResponseV3Short(params *RequestTokenByOneTimeLinkCodeResponseV3Params) (*RequestTokenByOneTimeLinkCodeResponseV3Response, error)
	GetCountryLocationV3Short(params *GetCountryLocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCountryLocationV3Response, error)
	LogoutShort(params *LogoutParams, authInfo runtime.ClientAuthInfoWriter) (*LogoutResponse, error)
	RequestTokenExchangeCodeV3Short(params *RequestTokenExchangeCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestTokenExchangeCodeV3Response, error)
	PlatformAuthenticationV3Short(params *PlatformAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformAuthenticationV3Response, error)
	PlatformTokenRefreshV3Short(params *PlatformTokenRefreshV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenRefreshV3Response, error)
	RequestTargetTokenResponseV3Short(params *RequestTargetTokenResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestTargetTokenResponseV3Response, error)
	UpgradeAndAuthenticateForwardV3Short(params *UpgradeAndAuthenticateForwardV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpgradeAndAuthenticateForwardV3Response, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
UserAuthenticationV3Short authentication api
This endpoint is being used to authenticate a user account.
It validates user's email / username and password.
Deactivated or login-banned users are unable to login.
Redirect URI and Client ID must be specified as a pair and only used to redirect to the specified redirect URI in case the requestId is no longer valid.

## Device Cookie Validation

Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

Action code: 10801
*/
func (a *Client) UserAuthenticationV3Short(params *UserAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*UserAuthenticationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUserAuthenticationV3Params()
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
		ID:                 "UserAuthenticationV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/authenticate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UserAuthenticationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UserAuthenticationV3Found:
		response := &UserAuthenticationV3Response{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthenticationWithPlatformLinkV3Short authentication with platform link
This endpoint is being used to authenticate a user account and perform platform link.
It validates user's email / username and password.
If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

## Device Cookie Validation

Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.
*/
func (a *Client) AuthenticationWithPlatformLinkV3Short(params *AuthenticationWithPlatformLinkV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticationWithPlatformLinkV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthenticationWithPlatformLinkV3Params()
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
		ID:                 "AuthenticationWithPlatformLinkV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/authenticateWithLink",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthenticationWithPlatformLinkV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthenticationWithPlatformLinkV3OK:
		response := &AuthenticationWithPlatformLinkV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *AuthenticationWithPlatformLinkV3BadRequest:
		response := &AuthenticationWithPlatformLinkV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AuthenticationWithPlatformLinkV3Unauthorized:
		response := &AuthenticationWithPlatformLinkV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AuthenticationWithPlatformLinkV3Forbidden:
		response := &AuthenticationWithPlatformLinkV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *AuthenticationWithPlatformLinkV3Conflict:
		response := &AuthenticationWithPlatformLinkV3Response{}
		response.Error409 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AuthenticateAndLinkForwardV3Short authentication with platform link, the response will be a forward
This endpoint is being used to authenticate a user account and perform platform link.
It validates user's email / username and password.
If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

## Device Cookie Validation

Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.
*/
func (a *Client) AuthenticateAndLinkForwardV3Short(params *AuthenticateAndLinkForwardV3Params, authInfo runtime.ClientAuthInfoWriter) (*AuthenticateAndLinkForwardV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAuthenticateAndLinkForwardV3Params()
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
		ID:                 "AuthenticateAndLinkForwardV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/authenticateWithLink/forward",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AuthenticateAndLinkForwardV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AuthenticateAndLinkForwardV3Found:
		response := &AuthenticateAndLinkForwardV3Response{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GenerateTokenByNewHeadlessAccountV3Short create headless account and response token
This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
when 3rd platform account is not linked to justice account yet.
*/
func (a *Client) GenerateTokenByNewHeadlessAccountV3Short(params *GenerateTokenByNewHeadlessAccountV3Params, authInfo runtime.ClientAuthInfoWriter) (*GenerateTokenByNewHeadlessAccountV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGenerateTokenByNewHeadlessAccountV3Params()
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
		ID:                 "GenerateTokenByNewHeadlessAccountV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/headless/token",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GenerateTokenByNewHeadlessAccountV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GenerateTokenByNewHeadlessAccountV3OK:
		response := &GenerateTokenByNewHeadlessAccountV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *GenerateTokenByNewHeadlessAccountV3BadRequest:
		response := &GenerateTokenByNewHeadlessAccountV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GenerateTokenByNewHeadlessAccountV3Unauthorized:
		response := &GenerateTokenByNewHeadlessAccountV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *GenerateTokenByNewHeadlessAccountV3NotFound:
		response := &GenerateTokenByNewHeadlessAccountV3Response{}
		response.Error404 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestOneTimeLinkingCodeV3Short generate one time linking code
This endpoint is being used to request the one time code [8 length] for headless account to link or upgrade to a full account.
Should specify the target platform id and current user should already linked to this platform.
Current user should be a headless account.
## Supported platforms:
- **steam**
- **steamopenid**
- **facebook**
- **google**
- **googleplaygames**
- **oculus**
- **twitch**
- **discord**
- **android**
- **ios**
- **apple**
- **device**
- **justice**
- **epicgames**
- **ps4**
- **ps5**
- **nintendo**
- **awscognito**
- **live**
- **xblweb**
- **netflix**
- **snapchat**
*/
func (a *Client) RequestOneTimeLinkingCodeV3Short(params *RequestOneTimeLinkingCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestOneTimeLinkingCodeV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestOneTimeLinkingCodeV3Params()
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
		ID:                 "RequestOneTimeLinkingCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/link/code/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestOneTimeLinkingCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestOneTimeLinkingCodeV3OK:
		response := &RequestOneTimeLinkingCodeV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ValidateOneTimeLinkingCodeV3Short validate one time linking code
This endpoint is being used to validate one time link code.
*/
func (a *Client) ValidateOneTimeLinkingCodeV3Short(params *ValidateOneTimeLinkingCodeV3Params) (*ValidateOneTimeLinkingCodeV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewValidateOneTimeLinkingCodeV3Params()
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
		ID:                 "ValidateOneTimeLinkingCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/link/code/validate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ValidateOneTimeLinkingCodeV3Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ValidateOneTimeLinkingCodeV3OK:
		response := &ValidateOneTimeLinkingCodeV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestTokenByOneTimeLinkCodeResponseV3Short generate token by headless account's one time link code
This endpoint is being used to generate user's token by one time link code.
It requires a code which can be generated from `/iam/v3/link/code/request` or `/iam/v3/public/users/me/link/forward`.

This endpoint support creating transient token by utilizing **isTransient** param:
**isTransient=true** will generate a transient token with a short Time Expiration and without a refresh token
**isTransient=false** will consume the one-time code and generate the access token with a refresh token.
*/
func (a *Client) RequestTokenByOneTimeLinkCodeResponseV3Short(params *RequestTokenByOneTimeLinkCodeResponseV3Params) (*RequestTokenByOneTimeLinkCodeResponseV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestTokenByOneTimeLinkCodeResponseV3Params()
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
		ID:                 "RequestTokenByOneTimeLinkCodeResponseV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/link/token/exchange",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestTokenByOneTimeLinkCodeResponseV3Reader{formats: a.formats},
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestTokenByOneTimeLinkCodeResponseV3OK:
		response := &RequestTokenByOneTimeLinkCodeResponseV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
GetCountryLocationV3Short get country location
This endpoint get country location based on the request.
*/
func (a *Client) GetCountryLocationV3Short(params *GetCountryLocationV3Params, authInfo runtime.ClientAuthInfoWriter) (*GetCountryLocationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewGetCountryLocationV3Params()
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
		ID:                 "GetCountryLocationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/location/country",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{""},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &GetCountryLocationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *GetCountryLocationV3OK:
		response := &GetCountryLocationV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
LogoutShort logout
This endpoint is used to remove **access_token**, **refresh_token** from cookie.
*/
func (a *Client) LogoutShort(params *LogoutParams, authInfo runtime.ClientAuthInfoWriter) (*LogoutResponse, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewLogoutParams()
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
		ID:                 "Logout",
		Method:             "POST",
		PathPattern:        "/iam/v3/logout",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &LogoutReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *LogoutNoContent:
		response := &LogoutResponse{}

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestTokenExchangeCodeV3Short request code to get a new token
This endpoint is being used to request the code to exchange a new token.
The target new token's clientId should NOT be same with current using one.
Path namespace should be target namespace.
Client ID should match the target namespace.

The code in response can be consumed by `/iam/v3/token/exchange`
*/
func (a *Client) RequestTokenExchangeCodeV3Short(params *RequestTokenExchangeCodeV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestTokenExchangeCodeV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestTokenExchangeCodeV3Params()
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
		ID:                 "RequestTokenExchangeCodeV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/namespace/{namespace}/token/request",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestTokenExchangeCodeV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestTokenExchangeCodeV3OK:
		response := &RequestTokenExchangeCodeV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformAuthenticationV3Short platform authentication api
This endpoint authenticates user platform. It validates user to its
respective platforms. Deactivated or login-banned users are unable to login.
If already linked with justice account or match SSO condition, will redirect to client's redirect url with code. then invoke '/iam/v3/oauth/token' with grant_type=authorization_code
If already not linked with justice account and not match SSO condition, will redirect to client's account linking page
## Supported platforms:
- **steamopenid**Steam login page will redirects to this endpoint after login success
as previously defined on openID request parameter `openid.return_to` when request login to steam
https://openid.net/specs/openid-authentication-2_0.html#anchor27
- **ps4web**PS4 login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
https://ps4.siedev.net/resources/documents/WebAPI/1/Auth_WebAPI-Reference/0002.html#0GetAccessTokenUsingAuthorizationCode
- **xblweb**XBL login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
- **epicgames**Epicgames login page will redirects to this endpoint after login success
or an error occurred. If error, it redirects to the login page.
- **twitch**Twitch login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
- **facebook**Facebook login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
- **google**Google login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
- **snapchat**Snapchat login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
- **discord**Discord login page will redirects to this endpoint after login success
as previously defined on authorize request parameter `redirect_uri`
action code : 10709
*/
func (a *Client) PlatformAuthenticationV3Short(params *PlatformAuthenticationV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformAuthenticationV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformAuthenticationV3Params()
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
		ID:                 "PlatformAuthenticationV3",
		Method:             "GET",
		PathPattern:        "/iam/v3/platforms/{platformId}/authenticate",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"*/*"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformAuthenticationV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformAuthenticationV3Found:
		response := &PlatformAuthenticationV3Response{}
		response.Data = v.Location

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
PlatformTokenRefreshV3Short platform token validation
This endpoint will validate the third party platform token, for some platforms will also refresh the token stored in IAM, it will not generate any event or AB access/refresh token.
This endpoint can be used by game client to refresh third party token if game client got platform token not found error, for example got 404
platform token not found from IAP/DLC.

## Platforms will refresh stored token:
- **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
- **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
- **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
- **amazon**: The platform_tokenâs value is authorization code.
- **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
- **live**: The platform_tokenâs value is xbox XSTS token
- **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
- **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.
*/
func (a *Client) PlatformTokenRefreshV3Short(params *PlatformTokenRefreshV3Params, authInfo runtime.ClientAuthInfoWriter) (*PlatformTokenRefreshV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewPlatformTokenRefreshV3Params()
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
		ID:                 "PlatformTokenRefreshV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/platforms/{platformId}/token/verify",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &PlatformTokenRefreshV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *PlatformTokenRefreshV3OK:
		response := &PlatformTokenRefreshV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil
	case *PlatformTokenRefreshV3BadRequest:
		response := &PlatformTokenRefreshV3Response{}
		response.Error400 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformTokenRefreshV3Unauthorized:
		response := &PlatformTokenRefreshV3Response{}
		response.Error401 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformTokenRefreshV3Forbidden:
		response := &PlatformTokenRefreshV3Response{}
		response.Error403 = v.Payload

		response.IsSuccess = false

		return response, v
	case *PlatformTokenRefreshV3ServiceUnavailable:
		response := &PlatformTokenRefreshV3Response{}
		response.Error503 = v.Payload

		response.IsSuccess = false

		return response, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RequestTargetTokenResponseV3Short generate target token by code
This endpoint is being used to generate target token.
It requires basic header with ClientID and Secret, it should match the ClientID when call `/iam/v3/namespace/{namespace}/token/request`
The code should be generated from `/iam/v3/namespace/{namespace}/token/request`.
*/
func (a *Client) RequestTargetTokenResponseV3Short(params *RequestTargetTokenResponseV3Params, authInfo runtime.ClientAuthInfoWriter) (*RequestTargetTokenResponseV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRequestTargetTokenResponseV3Params()
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
		ID:                 "RequestTargetTokenResponseV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/token/exchange",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RequestTargetTokenResponseV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RequestTargetTokenResponseV3OK:
		response := &RequestTargetTokenResponseV3Response{}
		response.Data = v.Payload

		response.IsSuccess = true

		return response, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
UpgradeAndAuthenticateForwardV3Short handle the forward for account upgrade
In login website based flow, after account upgraded, we need this API to handle the forward
*/
func (a *Client) UpgradeAndAuthenticateForwardV3Short(params *UpgradeAndAuthenticateForwardV3Params, authInfo runtime.ClientAuthInfoWriter) (*UpgradeAndAuthenticateForwardV3Response, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewUpgradeAndAuthenticateForwardV3Params()
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
		ID:                 "UpgradeAndAuthenticateForwardV3",
		Method:             "POST",
		PathPattern:        "/iam/v3/upgrade/forward",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/x-www-form-urlencoded"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &UpgradeAndAuthenticateForwardV3Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *UpgradeAndAuthenticateForwardV3Found:
		response := &UpgradeAndAuthenticateForwardV3Response{}
		response.Data = v.Location

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
