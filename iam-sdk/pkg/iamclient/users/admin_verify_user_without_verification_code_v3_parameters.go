// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

// NewAdminVerifyUserWithoutVerificationCodeV3Params creates a new AdminVerifyUserWithoutVerificationCodeV3Params object
// with the default values initialized.
func NewAdminVerifyUserWithoutVerificationCodeV3Params() *AdminVerifyUserWithoutVerificationCodeV3Params {
	var ()
	return &AdminVerifyUserWithoutVerificationCodeV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminVerifyUserWithoutVerificationCodeV3ParamsWithTimeout creates a new AdminVerifyUserWithoutVerificationCodeV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminVerifyUserWithoutVerificationCodeV3ParamsWithTimeout(timeout time.Duration) *AdminVerifyUserWithoutVerificationCodeV3Params {
	var ()
	return &AdminVerifyUserWithoutVerificationCodeV3Params{

		timeout: timeout,
	}
}

// NewAdminVerifyUserWithoutVerificationCodeV3ParamsWithContext creates a new AdminVerifyUserWithoutVerificationCodeV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminVerifyUserWithoutVerificationCodeV3ParamsWithContext(ctx context.Context) *AdminVerifyUserWithoutVerificationCodeV3Params {
	var ()
	return &AdminVerifyUserWithoutVerificationCodeV3Params{

		Context: ctx,
	}
}

// NewAdminVerifyUserWithoutVerificationCodeV3ParamsWithHTTPClient creates a new AdminVerifyUserWithoutVerificationCodeV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminVerifyUserWithoutVerificationCodeV3ParamsWithHTTPClient(client *http.Client) *AdminVerifyUserWithoutVerificationCodeV3Params {
	var ()
	return &AdminVerifyUserWithoutVerificationCodeV3Params{
		HTTPClient: client,
	}
}

/*AdminVerifyUserWithoutVerificationCodeV3Params contains all the parameters to send to the API endpoint
for the admin verify user without verification code v3 operation typically these are written to a http.Request
*/
type AdminVerifyUserWithoutVerificationCodeV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) WithTimeout(timeout time.Duration) *AdminVerifyUserWithoutVerificationCodeV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) WithContext(ctx context.Context) *AdminVerifyUserWithoutVerificationCodeV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) WithHTTPClient(client *http.Client) *AdminVerifyUserWithoutVerificationCodeV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) WithNamespace(namespace string) *AdminVerifyUserWithoutVerificationCodeV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) WithUserID(userID string) *AdminVerifyUserWithoutVerificationCodeV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin verify user without verification code v3 params
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminVerifyUserWithoutVerificationCodeV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
