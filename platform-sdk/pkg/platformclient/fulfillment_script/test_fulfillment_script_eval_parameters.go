// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment_script

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewTestFulfillmentScriptEvalParams creates a new TestFulfillmentScriptEvalParams object
// with the default values initialized.
func NewTestFulfillmentScriptEvalParams() *TestFulfillmentScriptEvalParams {
	var ()
	return &TestFulfillmentScriptEvalParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewTestFulfillmentScriptEvalParamsWithTimeout creates a new TestFulfillmentScriptEvalParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTestFulfillmentScriptEvalParamsWithTimeout(timeout time.Duration) *TestFulfillmentScriptEvalParams {
	var ()
	return &TestFulfillmentScriptEvalParams{

		timeout: timeout,
	}
}

// NewTestFulfillmentScriptEvalParamsWithContext creates a new TestFulfillmentScriptEvalParams object
// with the default values initialized, and the ability to set a context for a request
func NewTestFulfillmentScriptEvalParamsWithContext(ctx context.Context) *TestFulfillmentScriptEvalParams {
	var ()
	return &TestFulfillmentScriptEvalParams{

		Context: ctx,
	}
}

// NewTestFulfillmentScriptEvalParamsWithHTTPClient creates a new TestFulfillmentScriptEvalParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTestFulfillmentScriptEvalParamsWithHTTPClient(client *http.Client) *TestFulfillmentScriptEvalParams {
	var ()
	return &TestFulfillmentScriptEvalParams{
		HTTPClient: client,
	}
}

/*TestFulfillmentScriptEvalParams contains all the parameters to send to the API endpoint
for the test fulfillment script eval operation typically these are written to a http.Request
*/
type TestFulfillmentScriptEvalParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.FulfillmentScriptEvalTestRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) WithTimeout(timeout time.Duration) *TestFulfillmentScriptEvalParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) WithContext(ctx context.Context) *TestFulfillmentScriptEvalParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) WithHTTPClient(client *http.Client) *TestFulfillmentScriptEvalParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) WithBody(body *platformclientmodels.FulfillmentScriptEvalTestRequest) *TestFulfillmentScriptEvalParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the test fulfillment script eval params
func (o *TestFulfillmentScriptEvalParams) SetBody(body *platformclientmodels.FulfillmentScriptEvalTestRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *TestFulfillmentScriptEvalParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
