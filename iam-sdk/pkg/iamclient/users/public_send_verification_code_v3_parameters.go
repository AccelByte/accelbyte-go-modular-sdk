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

// NewPublicSendVerificationCodeV3Params creates a new PublicSendVerificationCodeV3Params object
// with the default values initialized.
func NewPublicSendVerificationCodeV3Params() *PublicSendVerificationCodeV3Params {
	var ()
	return &PublicSendVerificationCodeV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSendVerificationCodeV3ParamsWithTimeout creates a new PublicSendVerificationCodeV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSendVerificationCodeV3ParamsWithTimeout(timeout time.Duration) *PublicSendVerificationCodeV3Params {
	var ()
	return &PublicSendVerificationCodeV3Params{

		timeout: timeout,
	}
}

// NewPublicSendVerificationCodeV3ParamsWithContext creates a new PublicSendVerificationCodeV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSendVerificationCodeV3ParamsWithContext(ctx context.Context) *PublicSendVerificationCodeV3Params {
	var ()
	return &PublicSendVerificationCodeV3Params{

		Context: ctx,
	}
}

// NewPublicSendVerificationCodeV3ParamsWithHTTPClient creates a new PublicSendVerificationCodeV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSendVerificationCodeV3ParamsWithHTTPClient(client *http.Client) *PublicSendVerificationCodeV3Params {
	var ()
	return &PublicSendVerificationCodeV3Params{
		HTTPClient: client,
	}
}

/*PublicSendVerificationCodeV3Params contains all the parameters to send to the API endpoint
for the public send verification code v3 operation typically these are written to a http.Request
*/
type PublicSendVerificationCodeV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelSendVerificationCodeRequestV3
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) WithTimeout(timeout time.Duration) *PublicSendVerificationCodeV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) WithContext(ctx context.Context) *PublicSendVerificationCodeV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) WithHTTPClient(client *http.Client) *PublicSendVerificationCodeV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) WithBody(body *iamclientmodels.ModelSendVerificationCodeRequestV3) *PublicSendVerificationCodeV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) SetBody(body *iamclientmodels.ModelSendVerificationCodeRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) WithNamespace(namespace string) *PublicSendVerificationCodeV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public send verification code v3 params
func (o *PublicSendVerificationCodeV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSendVerificationCodeV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
