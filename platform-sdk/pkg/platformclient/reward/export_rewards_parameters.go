// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

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

// NewExportRewardsParams creates a new ExportRewardsParams object
// with the default values initialized.
func NewExportRewardsParams() *ExportRewardsParams {
	var ()
	return &ExportRewardsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewExportRewardsParamsWithTimeout creates a new ExportRewardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewExportRewardsParamsWithTimeout(timeout time.Duration) *ExportRewardsParams {
	var ()
	return &ExportRewardsParams{

		timeout: timeout,
	}
}

// NewExportRewardsParamsWithContext creates a new ExportRewardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewExportRewardsParamsWithContext(ctx context.Context) *ExportRewardsParams {
	var ()
	return &ExportRewardsParams{

		Context: ctx,
	}
}

// NewExportRewardsParamsWithHTTPClient creates a new ExportRewardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewExportRewardsParamsWithHTTPClient(client *http.Client) *ExportRewardsParams {
	var ()
	return &ExportRewardsParams{
		HTTPClient: client,
	}
}

/*ExportRewardsParams contains all the parameters to send to the API endpoint
for the export rewards operation typically these are written to a http.Request
*/
type ExportRewardsParams struct {

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

// WithTimeout adds the timeout to the export rewards params
func (o *ExportRewardsParams) WithTimeout(timeout time.Duration) *ExportRewardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the export rewards params
func (o *ExportRewardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the export rewards params
func (o *ExportRewardsParams) WithContext(ctx context.Context) *ExportRewardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the export rewards params
func (o *ExportRewardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the export rewards params
func (o *ExportRewardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the export rewards params
func (o *ExportRewardsParams) WithHTTPClient(client *http.Client) *ExportRewardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the export rewards params
func (o *ExportRewardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the export rewards params
func (o *ExportRewardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the export rewards params
func (o *ExportRewardsParams) WithNamespace(namespace string) *ExportRewardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the export rewards params
func (o *ExportRewardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ExportRewardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
