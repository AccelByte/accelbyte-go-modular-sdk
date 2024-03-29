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

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicForgotPasswordV2Params creates a new PublicForgotPasswordV2Params object
// with the default values initialized.
func NewPublicForgotPasswordV2Params() *PublicForgotPasswordV2Params {
	var ()
	return &PublicForgotPasswordV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicForgotPasswordV2ParamsWithTimeout creates a new PublicForgotPasswordV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicForgotPasswordV2ParamsWithTimeout(timeout time.Duration) *PublicForgotPasswordV2Params {
	var ()
	return &PublicForgotPasswordV2Params{

		timeout: timeout,
	}
}

// NewPublicForgotPasswordV2ParamsWithContext creates a new PublicForgotPasswordV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicForgotPasswordV2ParamsWithContext(ctx context.Context) *PublicForgotPasswordV2Params {
	var ()
	return &PublicForgotPasswordV2Params{

		Context: ctx,
	}
}

// NewPublicForgotPasswordV2ParamsWithHTTPClient creates a new PublicForgotPasswordV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicForgotPasswordV2ParamsWithHTTPClient(client *http.Client) *PublicForgotPasswordV2Params {
	var ()
	return &PublicForgotPasswordV2Params{
		HTTPClient: client,
	}
}

/*PublicForgotPasswordV2Params contains all the parameters to send to the API endpoint
for the public forgot password v2 operation typically these are written to a http.Request
*/
type PublicForgotPasswordV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelSendVerificationCodeRequest
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) WithTimeout(timeout time.Duration) *PublicForgotPasswordV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) WithContext(ctx context.Context) *PublicForgotPasswordV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) WithHTTPClient(client *http.Client) *PublicForgotPasswordV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicForgotPasswordV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) WithBody(body *iamclientmodels.ModelSendVerificationCodeRequest) *PublicForgotPasswordV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) SetBody(body *iamclientmodels.ModelSendVerificationCodeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) WithNamespace(namespace string) *PublicForgotPasswordV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public forgot password v2 params
func (o *PublicForgotPasswordV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicForgotPasswordV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
