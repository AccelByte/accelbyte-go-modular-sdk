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

// NewPublicVerifyRegistrationCodeParams creates a new PublicVerifyRegistrationCodeParams object
// with the default values initialized.
func NewPublicVerifyRegistrationCodeParams() *PublicVerifyRegistrationCodeParams {
	var ()
	return &PublicVerifyRegistrationCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicVerifyRegistrationCodeParamsWithTimeout creates a new PublicVerifyRegistrationCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicVerifyRegistrationCodeParamsWithTimeout(timeout time.Duration) *PublicVerifyRegistrationCodeParams {
	var ()
	return &PublicVerifyRegistrationCodeParams{

		timeout: timeout,
	}
}

// NewPublicVerifyRegistrationCodeParamsWithContext creates a new PublicVerifyRegistrationCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicVerifyRegistrationCodeParamsWithContext(ctx context.Context) *PublicVerifyRegistrationCodeParams {
	var ()
	return &PublicVerifyRegistrationCodeParams{

		Context: ctx,
	}
}

// NewPublicVerifyRegistrationCodeParamsWithHTTPClient creates a new PublicVerifyRegistrationCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicVerifyRegistrationCodeParamsWithHTTPClient(client *http.Client) *PublicVerifyRegistrationCodeParams {
	var ()
	return &PublicVerifyRegistrationCodeParams{
		HTTPClient: client,
	}
}

/*PublicVerifyRegistrationCodeParams contains all the parameters to send to the API endpoint
for the public verify registration code operation typically these are written to a http.Request
*/
type PublicVerifyRegistrationCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelVerifyRegistrationCode
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) WithTimeout(timeout time.Duration) *PublicVerifyRegistrationCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) WithContext(ctx context.Context) *PublicVerifyRegistrationCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) WithHTTPClient(client *http.Client) *PublicVerifyRegistrationCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicVerifyRegistrationCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) WithBody(body *iamclientmodels.ModelVerifyRegistrationCode) *PublicVerifyRegistrationCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) SetBody(body *iamclientmodels.ModelVerifyRegistrationCode) {
	o.Body = body
}

// WithNamespace adds the namespace to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) WithNamespace(namespace string) *PublicVerifyRegistrationCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public verify registration code params
func (o *PublicVerifyRegistrationCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicVerifyRegistrationCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
