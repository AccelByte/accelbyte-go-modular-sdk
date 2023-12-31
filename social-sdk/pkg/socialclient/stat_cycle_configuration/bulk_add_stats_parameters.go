// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package stat_cycle_configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/social-sdk/pkg/socialclientmodels"
)

// NewBulkAddStatsParams creates a new BulkAddStatsParams object
// with the default values initialized.
func NewBulkAddStatsParams() *BulkAddStatsParams {
	var ()
	return &BulkAddStatsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkAddStatsParamsWithTimeout creates a new BulkAddStatsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkAddStatsParamsWithTimeout(timeout time.Duration) *BulkAddStatsParams {
	var ()
	return &BulkAddStatsParams{

		timeout: timeout,
	}
}

// NewBulkAddStatsParamsWithContext creates a new BulkAddStatsParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkAddStatsParamsWithContext(ctx context.Context) *BulkAddStatsParams {
	var ()
	return &BulkAddStatsParams{

		Context: ctx,
	}
}

// NewBulkAddStatsParamsWithHTTPClient creates a new BulkAddStatsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkAddStatsParamsWithHTTPClient(client *http.Client) *BulkAddStatsParams {
	var ()
	return &BulkAddStatsParams{
		HTTPClient: client,
	}
}

/*BulkAddStatsParams contains all the parameters to send to the API endpoint
for the bulk add stats operation typically these are written to a http.Request
*/
type BulkAddStatsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.BulkCycleStatsAdd
	/*CycleID
	  cycle id

	*/
	CycleID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk add stats params
func (o *BulkAddStatsParams) WithTimeout(timeout time.Duration) *BulkAddStatsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk add stats params
func (o *BulkAddStatsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk add stats params
func (o *BulkAddStatsParams) WithContext(ctx context.Context) *BulkAddStatsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk add stats params
func (o *BulkAddStatsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk add stats params
func (o *BulkAddStatsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk add stats params
func (o *BulkAddStatsParams) WithHTTPClient(client *http.Client) *BulkAddStatsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk add stats params
func (o *BulkAddStatsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk add stats params
func (o *BulkAddStatsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk add stats params
func (o *BulkAddStatsParams) WithBody(body *socialclientmodels.BulkCycleStatsAdd) *BulkAddStatsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk add stats params
func (o *BulkAddStatsParams) SetBody(body *socialclientmodels.BulkCycleStatsAdd) {
	o.Body = body
}

// WithCycleID adds the cycleID to the bulk add stats params
func (o *BulkAddStatsParams) WithCycleID(cycleID string) *BulkAddStatsParams {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the bulk add stats params
func (o *BulkAddStatsParams) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithNamespace adds the namespace to the bulk add stats params
func (o *BulkAddStatsParams) WithNamespace(namespace string) *BulkAddStatsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk add stats params
func (o *BulkAddStatsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkAddStatsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param cycleId
	if err := r.SetPathParam("cycleId", o.CycleID); err != nil {
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
