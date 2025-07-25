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
	"github.com/go-openapi/swag"
)

// Deprecated: 2025-07-16 - Use TokenGrantGrantType<EnumValue>Constant instead.
// Get the enum in TokenGrantParams
const (
	TokenGrantAuthorizationCodeConstant = "authorization_code"
	TokenGrantClientCredentialsConstant = "client_credentials"
	TokenGrantPasswordConstant          = "password"
	TokenGrantRefreshTokenConstant      = "refresh_token"
)

// Get the enum in TokenGrantParams
const (
	TokenGrantGrantTypeAuthorizationCodeConstant = "authorization_code"
	TokenGrantGrantTypeClientCredentialsConstant = "client_credentials"
	TokenGrantGrantTypePasswordConstant          = "password"
	TokenGrantGrantTypeRefreshTokenConstant      = "refresh_token"
)

// NewTokenGrantParams creates a new TokenGrantParams object
// with the default values initialized.
func NewTokenGrantParams() *TokenGrantParams {
	var (
		grantTypeDefault = string("client_credentials")
	)
	return &TokenGrantParams{
		GrantType: grantTypeDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewTokenGrantParamsWithTimeout creates a new TokenGrantParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTokenGrantParamsWithTimeout(timeout time.Duration) *TokenGrantParams {
	var (
		grantTypeDefault = string("client_credentials")
	)
	return &TokenGrantParams{
		GrantType: grantTypeDefault,

		timeout: timeout,
	}
}

// NewTokenGrantParamsWithContext creates a new TokenGrantParams object
// with the default values initialized, and the ability to set a context for a request
func NewTokenGrantParamsWithContext(ctx context.Context) *TokenGrantParams {
	var (
		grantTypeDefault = string("client_credentials")
	)
	return &TokenGrantParams{
		GrantType: grantTypeDefault,

		Context: ctx,
	}
}

// NewTokenGrantParamsWithHTTPClient creates a new TokenGrantParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTokenGrantParamsWithHTTPClient(client *http.Client) *TokenGrantParams {
	var (
		grantTypeDefault = string("client_credentials")
	)
	return &TokenGrantParams{
		GrantType:  grantTypeDefault,
		HTTPClient: client,
	}
}

/*TokenGrantParams contains all the parameters to send to the API endpoint
for the token grant operation typically these are written to a http.Request
*/
type TokenGrantParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*DeviceID
	  DeviceID (Used on grant type 'password' to track login history) ex. 90252d14544846d79f367148e3f9a3d9

	*/
	DeviceID *string
	/*Code
	  Code (used with grant type 'authorization_code'

	*/
	Code *string
	/*ExtendExp
	  Extend expiration date of refresh token. Only available for grant type 'password'

	*/
	ExtendExp *bool
	/*Namespace
	  Delegated namespace (used with grant type 'password' to do token grant on other namespace)

	*/
	Namespace *string
	/*Password
	  Password (used with grant type 'password'

	*/
	Password *string
	/*RedirectURI
	  Redirect URI (used with grant type 'authorization_code'

	*/
	RedirectURI *string
	/*RefreshToken
	  Refresh Token (used with grant type 'refresh_token'

	*/
	RefreshToken *string
	/*Username
	  User Name (used with grant type 'password'

	*/
	Username *string
	/*GrantType
	  Grant Type

	*/
	GrantType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the token grant params
func (o *TokenGrantParams) WithTimeout(timeout time.Duration) *TokenGrantParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the token grant params
func (o *TokenGrantParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the token grant params
func (o *TokenGrantParams) WithContext(ctx context.Context) *TokenGrantParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the token grant params
func (o *TokenGrantParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the token grant params
func (o *TokenGrantParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the token grant params
func (o *TokenGrantParams) WithHTTPClient(client *http.Client) *TokenGrantParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the token grant params
func (o *TokenGrantParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the token grant params
func (o *TokenGrantParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TokenGrantParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeviceID adds the deviceID to the token grant params
func (o *TokenGrantParams) WithDeviceID(deviceID *string) *TokenGrantParams {
	o.SetDeviceID(deviceID)
	return o
}

// SetDeviceID adds the deviceId to the token grant params
func (o *TokenGrantParams) SetDeviceID(deviceID *string) {
	o.DeviceID = deviceID
}

// WithCode adds the code to the token grant params
func (o *TokenGrantParams) WithCode(code *string) *TokenGrantParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the token grant params
func (o *TokenGrantParams) SetCode(code *string) {
	o.Code = code
}

// WithExtendExp adds the extendExp to the token grant params
func (o *TokenGrantParams) WithExtendExp(extendExp *bool) *TokenGrantParams {
	o.SetExtendExp(extendExp)
	return o
}

// SetExtendExp adds the extendExp to the token grant params
func (o *TokenGrantParams) SetExtendExp(extendExp *bool) {
	o.ExtendExp = extendExp
}

// WithNamespace adds the namespace to the token grant params
func (o *TokenGrantParams) WithNamespace(namespace *string) *TokenGrantParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the token grant params
func (o *TokenGrantParams) SetNamespace(namespace *string) {
	o.Namespace = namespace
}

// WithPassword adds the password to the token grant params
func (o *TokenGrantParams) WithPassword(password *string) *TokenGrantParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the token grant params
func (o *TokenGrantParams) SetPassword(password *string) {
	o.Password = password
}

// WithRedirectURI adds the redirectURI to the token grant params
func (o *TokenGrantParams) WithRedirectURI(redirectURI *string) *TokenGrantParams {
	o.SetRedirectURI(redirectURI)
	return o
}

// SetRedirectURI adds the redirectUri to the token grant params
func (o *TokenGrantParams) SetRedirectURI(redirectURI *string) {
	o.RedirectURI = redirectURI
}

// WithRefreshToken adds the refreshToken to the token grant params
func (o *TokenGrantParams) WithRefreshToken(refreshToken *string) *TokenGrantParams {
	o.SetRefreshToken(refreshToken)
	return o
}

// SetRefreshToken adds the refreshToken to the token grant params
func (o *TokenGrantParams) SetRefreshToken(refreshToken *string) {
	o.RefreshToken = refreshToken
}

// WithUsername adds the username to the token grant params
func (o *TokenGrantParams) WithUsername(username *string) *TokenGrantParams {
	o.SetUsername(username)
	return o
}

// SetUsername adds the username to the token grant params
func (o *TokenGrantParams) SetUsername(username *string) {
	o.Username = username
}

// WithGrantType adds the grantType to the token grant params
func (o *TokenGrantParams) WithGrantType(grantType string) *TokenGrantParams {
	o.SetGrantType(grantType)
	return o
}

// SetGrantType adds the grantType to the token grant params
func (o *TokenGrantParams) SetGrantType(grantType string) {
	o.GrantType = grantType
}

// WriteToRequest writes these params to a swagger request
func (o *TokenGrantParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.DeviceID != nil {

		// header param Device-Id
		if err := r.SetHeaderParam("Device-Id", *o.DeviceID); err != nil {
			return err
		}

	}

	if o.Code != nil {

		// form param code
		var frCode string
		if o.Code != nil {
			frCode = *o.Code
		}
		fCode := frCode
		if fCode != "" {
			if err := r.SetFormParam("code", fCode); err != nil {
				return err
			}
		}

	}

	if o.ExtendExp != nil {

		// form param extend_exp
		var frExtendExp bool
		if o.ExtendExp != nil {
			frExtendExp = *o.ExtendExp
		}
		fExtendExp := swag.FormatBool(frExtendExp)
		if fExtendExp != "" {
			if err := r.SetFormParam("extend_exp", fExtendExp); err != nil {
				return err
			}
		}

	}

	if o.Namespace != nil {

		// form param namespace
		var frNamespace string
		if o.Namespace != nil {
			frNamespace = *o.Namespace
		}
		fNamespace := frNamespace
		if fNamespace != "" {
			if err := r.SetFormParam("namespace", fNamespace); err != nil {
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

	if o.RedirectURI != nil {

		// form param redirect_uri
		var frRedirectURI string
		if o.RedirectURI != nil {
			frRedirectURI = *o.RedirectURI
		}
		fRedirectURI := frRedirectURI
		if fRedirectURI != "" {
			if err := r.SetFormParam("redirect_uri", fRedirectURI); err != nil {
				return err
			}
		}

	}

	if o.RefreshToken != nil {

		// form param refresh_token
		var frRefreshToken string
		if o.RefreshToken != nil {
			frRefreshToken = *o.RefreshToken
		}
		fRefreshToken := frRefreshToken
		if fRefreshToken != "" {
			if err := r.SetFormParam("refresh_token", fRefreshToken); err != nil {
				return err
			}
		}

	}

	if o.Username != nil {

		// form param username
		var frUsername string
		if o.Username != nil {
			frUsername = *o.Username
		}
		fUsername := frUsername
		if fUsername != "" {
			if err := r.SetFormParam("username", fUsername); err != nil {
				return err
			}
		}

	}

	// form param grant_type
	frGrantType := o.GrantType
	fGrantType := frGrantType
	if fGrantType != "" {
		if err := r.SetFormParam("grant_type", fGrantType); err != nil {
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
