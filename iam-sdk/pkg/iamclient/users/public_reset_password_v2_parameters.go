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

// NewPublicResetPasswordV2Params creates a new PublicResetPasswordV2Params object
// with the default values initialized.
func NewPublicResetPasswordV2Params() *PublicResetPasswordV2Params {
	var ()
	return &PublicResetPasswordV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicResetPasswordV2ParamsWithTimeout creates a new PublicResetPasswordV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicResetPasswordV2ParamsWithTimeout(timeout time.Duration) *PublicResetPasswordV2Params {
	var ()
	return &PublicResetPasswordV2Params{

		timeout: timeout,
	}
}

// NewPublicResetPasswordV2ParamsWithContext creates a new PublicResetPasswordV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicResetPasswordV2ParamsWithContext(ctx context.Context) *PublicResetPasswordV2Params {
	var ()
	return &PublicResetPasswordV2Params{

		Context: ctx,
	}
}

// NewPublicResetPasswordV2ParamsWithHTTPClient creates a new PublicResetPasswordV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicResetPasswordV2ParamsWithHTTPClient(client *http.Client) *PublicResetPasswordV2Params {
	var ()
	return &PublicResetPasswordV2Params{
		HTTPClient: client,
	}
}

/*PublicResetPasswordV2Params contains all the parameters to send to the API endpoint
for the public reset password v2 operation typically these are written to a http.Request
*/
type PublicResetPasswordV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelResetPasswordRequest
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

// WithTimeout adds the timeout to the public reset password v2 params
func (o *PublicResetPasswordV2Params) WithTimeout(timeout time.Duration) *PublicResetPasswordV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public reset password v2 params
func (o *PublicResetPasswordV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public reset password v2 params
func (o *PublicResetPasswordV2Params) WithContext(ctx context.Context) *PublicResetPasswordV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public reset password v2 params
func (o *PublicResetPasswordV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public reset password v2 params
func (o *PublicResetPasswordV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public reset password v2 params
func (o *PublicResetPasswordV2Params) WithHTTPClient(client *http.Client) *PublicResetPasswordV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public reset password v2 params
func (o *PublicResetPasswordV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public reset password v2 params
func (o *PublicResetPasswordV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicResetPasswordV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public reset password v2 params
func (o *PublicResetPasswordV2Params) WithBody(body *iamclientmodels.ModelResetPasswordRequest) *PublicResetPasswordV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public reset password v2 params
func (o *PublicResetPasswordV2Params) SetBody(body *iamclientmodels.ModelResetPasswordRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public reset password v2 params
func (o *PublicResetPasswordV2Params) WithNamespace(namespace string) *PublicResetPasswordV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public reset password v2 params
func (o *PublicResetPasswordV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicResetPasswordV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
