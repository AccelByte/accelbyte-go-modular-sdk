// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package global_configuration

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

// NewAdminDeleteGlobalConfigurationParams creates a new AdminDeleteGlobalConfigurationParams object
// with the default values initialized.
func NewAdminDeleteGlobalConfigurationParams() *AdminDeleteGlobalConfigurationParams {
	var ()
	return &AdminDeleteGlobalConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteGlobalConfigurationParamsWithTimeout creates a new AdminDeleteGlobalConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteGlobalConfigurationParamsWithTimeout(timeout time.Duration) *AdminDeleteGlobalConfigurationParams {
	var ()
	return &AdminDeleteGlobalConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminDeleteGlobalConfigurationParamsWithContext creates a new AdminDeleteGlobalConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteGlobalConfigurationParamsWithContext(ctx context.Context) *AdminDeleteGlobalConfigurationParams {
	var ()
	return &AdminDeleteGlobalConfigurationParams{

		Context: ctx,
	}
}

// NewAdminDeleteGlobalConfigurationParamsWithHTTPClient creates a new AdminDeleteGlobalConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteGlobalConfigurationParamsWithHTTPClient(client *http.Client) *AdminDeleteGlobalConfigurationParams {
	var ()
	return &AdminDeleteGlobalConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminDeleteGlobalConfigurationParams contains all the parameters to send to the API endpoint
for the admin delete global configuration operation typically these are written to a http.Request
*/
type AdminDeleteGlobalConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete global configuration params
func (o *AdminDeleteGlobalConfigurationParams) WithTimeout(timeout time.Duration) *AdminDeleteGlobalConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete global configuration params
func (o *AdminDeleteGlobalConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete global configuration params
func (o *AdminDeleteGlobalConfigurationParams) WithContext(ctx context.Context) *AdminDeleteGlobalConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete global configuration params
func (o *AdminDeleteGlobalConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete global configuration params
func (o *AdminDeleteGlobalConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete global configuration params
func (o *AdminDeleteGlobalConfigurationParams) WithHTTPClient(client *http.Client) *AdminDeleteGlobalConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete global configuration params
func (o *AdminDeleteGlobalConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete global configuration params
func (o *AdminDeleteGlobalConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteGlobalConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
