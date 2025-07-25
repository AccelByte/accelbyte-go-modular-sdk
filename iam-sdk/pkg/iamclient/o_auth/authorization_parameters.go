// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// Deprecated: 2025-07-16 - Use AuthorizationResponseType<EnumValue>Constant instead.
// Get the enum in AuthorizationParams
const (
	AuthorizationCodeConstant  = "code"
	AuthorizationTokenConstant = "token"
)

// Get the enum in AuthorizationParams
const (
	AuthorizationResponseTypeCodeConstant  = "code"
	AuthorizationResponseTypeTokenConstant = "token"
)

// NewAuthorizationParams creates a new AuthorizationParams object
// with the default values initialized.
func NewAuthorizationParams() *AuthorizationParams {
	var (
		responseTypeDefault = string("code")
	)
	return &AuthorizationParams{
		ResponseType: responseTypeDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAuthorizationParamsWithTimeout creates a new AuthorizationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAuthorizationParamsWithTimeout(timeout time.Duration) *AuthorizationParams {
	var (
		responseTypeDefault = string("code")
	)
	return &AuthorizationParams{
		ResponseType: responseTypeDefault,

		timeout: timeout,
	}
}

// NewAuthorizationParamsWithContext creates a new AuthorizationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAuthorizationParamsWithContext(ctx context.Context) *AuthorizationParams {
	var (
		responseTypeDefault = string("code")
	)
	return &AuthorizationParams{
		ResponseType: responseTypeDefault,

		Context: ctx,
	}
}

// NewAuthorizationParamsWithHTTPClient creates a new AuthorizationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAuthorizationParamsWithHTTPClient(client *http.Client) *AuthorizationParams {
	var (
		responseTypeDefault = string("code")
	)
	return &AuthorizationParams{
		ResponseType: responseTypeDefault,
		HTTPClient:   client,
	}
}

/*AuthorizationParams contains all the parameters to send to the API endpoint
for the authorization operation typically these are written to a http.Request
*/
type AuthorizationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Login
	  User Name

	*/
	Login *string
	/*Password
	  Password

	*/
	Password *string
	/*Scope
	  Scope. The scope of request by roleId. Accept multiple roleIds separated by whitespace.

	*/
	Scope *string
	/*State
	  State. Random value for preventing cross-site request forgery used by client.

	*/
	State *string
	/*ClientID
	  Client id

	*/
	ClientID string
	/*RedirectURI
	  Redirect URI. The URI has to match one of the URIs set in client.

	*/
	RedirectURI string
	/*ResponseType
	  Response Type. Allowed values ['code', 'token'].

	*/
	ResponseType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the authorization params
func (o *AuthorizationParams) WithTimeout(timeout time.Duration) *AuthorizationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the authorization params
func (o *AuthorizationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the authorization params
func (o *AuthorizationParams) WithContext(ctx context.Context) *AuthorizationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the authorization params
func (o *AuthorizationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the authorization params
func (o *AuthorizationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the authorization params
func (o *AuthorizationParams) WithHTTPClient(client *http.Client) *AuthorizationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the authorization params
func (o *AuthorizationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the authorization params
func (o *AuthorizationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AuthorizationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLogin adds the login to the authorization params
func (o *AuthorizationParams) WithLogin(login *string) *AuthorizationParams {
	o.SetLogin(login)
	return o
}

// SetLogin adds the login to the authorization params
func (o *AuthorizationParams) SetLogin(login *string) {
	o.Login = login
}

// WithPassword adds the password to the authorization params
func (o *AuthorizationParams) WithPassword(password *string) *AuthorizationParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the authorization params
func (o *AuthorizationParams) SetPassword(password *string) {
	o.Password = password
}

// WithScope adds the scope to the authorization params
func (o *AuthorizationParams) WithScope(scope *string) *AuthorizationParams {
	o.SetScope(scope)
	return o
}

// SetScope adds the scope to the authorization params
func (o *AuthorizationParams) SetScope(scope *string) {
	o.Scope = scope
}

// WithState adds the state to the authorization params
func (o *AuthorizationParams) WithState(state *string) *AuthorizationParams {
	o.SetState(state)
	return o
}

// SetState adds the state to the authorization params
func (o *AuthorizationParams) SetState(state *string) {
	o.State = state
}

// WithClientID adds the clientID to the authorization params
func (o *AuthorizationParams) WithClientID(clientID string) *AuthorizationParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the authorization params
func (o *AuthorizationParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithRedirectURI adds the redirectURI to the authorization params
func (o *AuthorizationParams) WithRedirectURI(redirectURI string) *AuthorizationParams {
	o.SetRedirectURI(redirectURI)
	return o
}

// SetRedirectURI adds the redirectUri to the authorization params
func (o *AuthorizationParams) SetRedirectURI(redirectURI string) {
	o.RedirectURI = redirectURI
}

// WithResponseType adds the responseType to the authorization params
func (o *AuthorizationParams) WithResponseType(responseType string) *AuthorizationParams {
	o.SetResponseType(responseType)
	return o
}

// SetResponseType adds the responseType to the authorization params
func (o *AuthorizationParams) SetResponseType(responseType string) {
	o.ResponseType = responseType
}

// WriteToRequest writes these params to a swagger request
func (o *AuthorizationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Login != nil {

		// form param login
		var frLogin string
		if o.Login != nil {
			frLogin = *o.Login
		}
		fLogin := frLogin
		if fLogin != "" {
			if err := r.SetFormParam("login", fLogin); err != nil {
				return err
			}
		}

	}

	if o.Password != nil {

		// form param password
		var frPassword string
		if o.Password != nil {
			frPassword = *o.Password
		}
		fPassword := frPassword
		if fPassword != "" {
			if err := r.SetFormParam("password", fPassword); err != nil {
				return err
			}
		}

	}

	if o.Scope != nil {

		// form param scope
		var frScope string
		if o.Scope != nil {
			frScope = *o.Scope
		}
		fScope := frScope
		if fScope != "" {
			if err := r.SetFormParam("scope", fScope); err != nil {
				return err
			}
		}

	}

	if o.State != nil {

		// form param state
		var frState string
		if o.State != nil {
			frState = *o.State
		}
		fState := frState
		if fState != "" {
			if err := r.SetFormParam("state", fState); err != nil {
				return err
			}
		}

	}

	// form param client_id
	frClientID := o.ClientID
	fClientID := frClientID
	if fClientID != "" {
		if err := r.SetFormParam("client_id", fClientID); err != nil {
			return err
		}
	}

	// form param redirect_uri
	frRedirectURI := o.RedirectURI
	fRedirectURI := frRedirectURI
	if fRedirectURI != "" {
		if err := r.SetFormParam("redirect_uri", fRedirectURI); err != nil {
			return err
		}
	}

	// form param response_type
	frResponseType := o.ResponseType
	fResponseType := frResponseType
	if fResponseType != "" {
		if err := r.SetFormParam("response_type", fResponseType); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
