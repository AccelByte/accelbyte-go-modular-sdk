// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// NewAdminGetServicesConfigurationParams creates a new AdminGetServicesConfigurationParams object
// with the default values initialized.
func NewAdminGetServicesConfigurationParams() *AdminGetServicesConfigurationParams {
	var ()
	return &AdminGetServicesConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetServicesConfigurationParamsWithTimeout creates a new AdminGetServicesConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetServicesConfigurationParamsWithTimeout(timeout time.Duration) *AdminGetServicesConfigurationParams {
	var ()
	return &AdminGetServicesConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminGetServicesConfigurationParamsWithContext creates a new AdminGetServicesConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetServicesConfigurationParamsWithContext(ctx context.Context) *AdminGetServicesConfigurationParams {
	var ()
	return &AdminGetServicesConfigurationParams{

		Context: ctx,
	}
}

// NewAdminGetServicesConfigurationParamsWithHTTPClient creates a new AdminGetServicesConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetServicesConfigurationParamsWithHTTPClient(client *http.Client) *AdminGetServicesConfigurationParams {
	var ()
	return &AdminGetServicesConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminGetServicesConfigurationParams contains all the parameters to send to the API endpoint
for the admin get services configuration operation typically these are written to a http.Request
*/
type AdminGetServicesConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) WithTimeout(timeout time.Duration) *AdminGetServicesConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) WithContext(ctx context.Context) *AdminGetServicesConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) WithHTTPClient(client *http.Client) *AdminGetServicesConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) WithNamespace(namespace string) *AdminGetServicesConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get services configuration params
func (o *AdminGetServicesConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetServicesConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
