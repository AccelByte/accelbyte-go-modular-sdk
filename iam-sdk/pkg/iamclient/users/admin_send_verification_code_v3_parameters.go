// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

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

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminSendVerificationCodeV3Params creates a new AdminSendVerificationCodeV3Params object
// with the default values initialized.
func NewAdminSendVerificationCodeV3Params() *AdminSendVerificationCodeV3Params {
	var ()
	return &AdminSendVerificationCodeV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSendVerificationCodeV3ParamsWithTimeout creates a new AdminSendVerificationCodeV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSendVerificationCodeV3ParamsWithTimeout(timeout time.Duration) *AdminSendVerificationCodeV3Params {
	var ()
	return &AdminSendVerificationCodeV3Params{

		timeout: timeout,
	}
}

// NewAdminSendVerificationCodeV3ParamsWithContext creates a new AdminSendVerificationCodeV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSendVerificationCodeV3ParamsWithContext(ctx context.Context) *AdminSendVerificationCodeV3Params {
	var ()
	return &AdminSendVerificationCodeV3Params{

		Context: ctx,
	}
}

// NewAdminSendVerificationCodeV3ParamsWithHTTPClient creates a new AdminSendVerificationCodeV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSendVerificationCodeV3ParamsWithHTTPClient(client *http.Client) *AdminSendVerificationCodeV3Params {
	var ()
	return &AdminSendVerificationCodeV3Params{
		HTTPClient: client,
	}
}

/*AdminSendVerificationCodeV3Params contains all the parameters to send to the API endpoint
for the admin send verification code v3 operation typically these are written to a http.Request
*/
type AdminSendVerificationCodeV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelSendVerificationCodeRequestV3
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) WithTimeout(timeout time.Duration) *AdminSendVerificationCodeV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) WithContext(ctx context.Context) *AdminSendVerificationCodeV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) WithHTTPClient(client *http.Client) *AdminSendVerificationCodeV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) WithBody(body *iamclientmodels.ModelSendVerificationCodeRequestV3) *AdminSendVerificationCodeV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) SetBody(body *iamclientmodels.ModelSendVerificationCodeRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) WithNamespace(namespace string) *AdminSendVerificationCodeV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) WithUserID(userID string) *AdminSendVerificationCodeV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin send verification code v3 params
func (o *AdminSendVerificationCodeV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSendVerificationCodeV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
