// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewAdminGenerateMyAuthenticatorKeyV4Params creates a new AdminGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized.
func NewAdminGenerateMyAuthenticatorKeyV4Params() *AdminGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &AdminGenerateMyAuthenticatorKeyV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGenerateMyAuthenticatorKeyV4ParamsWithTimeout creates a new AdminGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGenerateMyAuthenticatorKeyV4ParamsWithTimeout(timeout time.Duration) *AdminGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &AdminGenerateMyAuthenticatorKeyV4Params{

		timeout: timeout,
	}
}

// NewAdminGenerateMyAuthenticatorKeyV4ParamsWithContext creates a new AdminGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGenerateMyAuthenticatorKeyV4ParamsWithContext(ctx context.Context) *AdminGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &AdminGenerateMyAuthenticatorKeyV4Params{

		Context: ctx,
	}
}

// NewAdminGenerateMyAuthenticatorKeyV4ParamsWithHTTPClient creates a new AdminGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGenerateMyAuthenticatorKeyV4ParamsWithHTTPClient(client *http.Client) *AdminGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &AdminGenerateMyAuthenticatorKeyV4Params{
		HTTPClient: client,
	}
}

/*AdminGenerateMyAuthenticatorKeyV4Params contains all the parameters to send to the API endpoint
for the admin generate my authenticator key v4 operation typically these are written to a http.Request
*/
type AdminGenerateMyAuthenticatorKeyV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin generate my authenticator key v4 params
func (o *AdminGenerateMyAuthenticatorKeyV4Params) WithTimeout(timeout time.Duration) *AdminGenerateMyAuthenticatorKeyV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin generate my authenticator key v4 params
func (o *AdminGenerateMyAuthenticatorKeyV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin generate my authenticator key v4 params
func (o *AdminGenerateMyAuthenticatorKeyV4Params) WithContext(ctx context.Context) *AdminGenerateMyAuthenticatorKeyV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin generate my authenticator key v4 params
func (o *AdminGenerateMyAuthenticatorKeyV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin generate my authenticator key v4 params
func (o *AdminGenerateMyAuthenticatorKeyV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin generate my authenticator key v4 params
func (o *AdminGenerateMyAuthenticatorKeyV4Params) WithHTTPClient(client *http.Client) *AdminGenerateMyAuthenticatorKeyV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin generate my authenticator key v4 params
func (o *AdminGenerateMyAuthenticatorKeyV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin generate my authenticator key v4 params
func (o *AdminGenerateMyAuthenticatorKeyV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGenerateMyAuthenticatorKeyV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
