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
)

// NewAdminGetAgeRestrictionStatusV3Params creates a new AdminGetAgeRestrictionStatusV3Params object
// with the default values initialized.
func NewAdminGetAgeRestrictionStatusV3Params() *AdminGetAgeRestrictionStatusV3Params {
	var ()
	return &AdminGetAgeRestrictionStatusV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetAgeRestrictionStatusV3ParamsWithTimeout creates a new AdminGetAgeRestrictionStatusV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetAgeRestrictionStatusV3ParamsWithTimeout(timeout time.Duration) *AdminGetAgeRestrictionStatusV3Params {
	var ()
	return &AdminGetAgeRestrictionStatusV3Params{

		timeout: timeout,
	}
}

// NewAdminGetAgeRestrictionStatusV3ParamsWithContext creates a new AdminGetAgeRestrictionStatusV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetAgeRestrictionStatusV3ParamsWithContext(ctx context.Context) *AdminGetAgeRestrictionStatusV3Params {
	var ()
	return &AdminGetAgeRestrictionStatusV3Params{

		Context: ctx,
	}
}

// NewAdminGetAgeRestrictionStatusV3ParamsWithHTTPClient creates a new AdminGetAgeRestrictionStatusV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetAgeRestrictionStatusV3ParamsWithHTTPClient(client *http.Client) *AdminGetAgeRestrictionStatusV3Params {
	var ()
	return &AdminGetAgeRestrictionStatusV3Params{
		HTTPClient: client,
	}
}

/*AdminGetAgeRestrictionStatusV3Params contains all the parameters to send to the API endpoint
for the admin get age restriction status v3 operation typically these are written to a http.Request
*/
type AdminGetAgeRestrictionStatusV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) WithTimeout(timeout time.Duration) *AdminGetAgeRestrictionStatusV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) WithContext(ctx context.Context) *AdminGetAgeRestrictionStatusV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) WithHTTPClient(client *http.Client) *AdminGetAgeRestrictionStatusV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) WithNamespace(namespace string) *AdminGetAgeRestrictionStatusV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get age restriction status v3 params
func (o *AdminGetAgeRestrictionStatusV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetAgeRestrictionStatusV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
