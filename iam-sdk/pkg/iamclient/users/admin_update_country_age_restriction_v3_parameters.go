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

// NewAdminUpdateCountryAgeRestrictionV3Params creates a new AdminUpdateCountryAgeRestrictionV3Params object
// with the default values initialized.
func NewAdminUpdateCountryAgeRestrictionV3Params() *AdminUpdateCountryAgeRestrictionV3Params {
	var ()
	return &AdminUpdateCountryAgeRestrictionV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateCountryAgeRestrictionV3ParamsWithTimeout creates a new AdminUpdateCountryAgeRestrictionV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateCountryAgeRestrictionV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateCountryAgeRestrictionV3Params {
	var ()
	return &AdminUpdateCountryAgeRestrictionV3Params{

		timeout: timeout,
	}
}

// NewAdminUpdateCountryAgeRestrictionV3ParamsWithContext creates a new AdminUpdateCountryAgeRestrictionV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateCountryAgeRestrictionV3ParamsWithContext(ctx context.Context) *AdminUpdateCountryAgeRestrictionV3Params {
	var ()
	return &AdminUpdateCountryAgeRestrictionV3Params{

		Context: ctx,
	}
}

// NewAdminUpdateCountryAgeRestrictionV3ParamsWithHTTPClient creates a new AdminUpdateCountryAgeRestrictionV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateCountryAgeRestrictionV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateCountryAgeRestrictionV3Params {
	var ()
	return &AdminUpdateCountryAgeRestrictionV3Params{
		HTTPClient: client,
	}
}

/*AdminUpdateCountryAgeRestrictionV3Params contains all the parameters to send to the API endpoint
for the admin update country age restriction v3 operation typically these are written to a http.Request
*/
type AdminUpdateCountryAgeRestrictionV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelCountryAgeRestrictionV3Request
	/*CountryCode
	  Country Code

	*/
	CountryCode string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) WithTimeout(timeout time.Duration) *AdminUpdateCountryAgeRestrictionV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) WithContext(ctx context.Context) *AdminUpdateCountryAgeRestrictionV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) WithHTTPClient(client *http.Client) *AdminUpdateCountryAgeRestrictionV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) WithBody(body *iamclientmodels.ModelCountryAgeRestrictionV3Request) *AdminUpdateCountryAgeRestrictionV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) SetBody(body *iamclientmodels.ModelCountryAgeRestrictionV3Request) {
	o.Body = body
}

// WithCountryCode adds the countryCode to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) WithCountryCode(countryCode string) *AdminUpdateCountryAgeRestrictionV3Params {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) WithNamespace(namespace string) *AdminUpdateCountryAgeRestrictionV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update country age restriction v3 params
func (o *AdminUpdateCountryAgeRestrictionV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateCountryAgeRestrictionV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param countryCode
	if err := r.SetPathParam("countryCode", o.CountryCode); err != nil {
		return err
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
