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

	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewAdminUpdateGlobalConfigurationParams creates a new AdminUpdateGlobalConfigurationParams object
// with the default values initialized.
func NewAdminUpdateGlobalConfigurationParams() *AdminUpdateGlobalConfigurationParams {
	var ()
	return &AdminUpdateGlobalConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateGlobalConfigurationParamsWithTimeout creates a new AdminUpdateGlobalConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateGlobalConfigurationParamsWithTimeout(timeout time.Duration) *AdminUpdateGlobalConfigurationParams {
	var ()
	return &AdminUpdateGlobalConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminUpdateGlobalConfigurationParamsWithContext creates a new AdminUpdateGlobalConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateGlobalConfigurationParamsWithContext(ctx context.Context) *AdminUpdateGlobalConfigurationParams {
	var ()
	return &AdminUpdateGlobalConfigurationParams{

		Context: ctx,
	}
}

// NewAdminUpdateGlobalConfigurationParamsWithHTTPClient creates a new AdminUpdateGlobalConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateGlobalConfigurationParamsWithHTTPClient(client *http.Client) *AdminUpdateGlobalConfigurationParams {
	var ()
	return &AdminUpdateGlobalConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminUpdateGlobalConfigurationParams contains all the parameters to send to the API endpoint
for the admin update global configuration operation typically these are written to a http.Request
*/
type AdminUpdateGlobalConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsPutGlobalConfigurationRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) WithTimeout(timeout time.Duration) *AdminUpdateGlobalConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) WithContext(ctx context.Context) *AdminUpdateGlobalConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) WithHTTPClient(client *http.Client) *AdminUpdateGlobalConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) WithBody(body *sessionclientmodels.ApimodelsPutGlobalConfigurationRequest) *AdminUpdateGlobalConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update global configuration params
func (o *AdminUpdateGlobalConfigurationParams) SetBody(body *sessionclientmodels.ApimodelsPutGlobalConfigurationRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateGlobalConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
