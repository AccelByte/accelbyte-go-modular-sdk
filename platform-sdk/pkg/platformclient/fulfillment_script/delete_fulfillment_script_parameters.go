// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
)

// NewDeleteFulfillmentScriptParams creates a new DeleteFulfillmentScriptParams object
// with the default values initialized.
func NewDeleteFulfillmentScriptParams() *DeleteFulfillmentScriptParams {
	var ()
	return &DeleteFulfillmentScriptParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteFulfillmentScriptParamsWithTimeout creates a new DeleteFulfillmentScriptParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteFulfillmentScriptParamsWithTimeout(timeout time.Duration) *DeleteFulfillmentScriptParams {
	var ()
	return &DeleteFulfillmentScriptParams{

		timeout: timeout,
	}
}

// NewDeleteFulfillmentScriptParamsWithContext creates a new DeleteFulfillmentScriptParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteFulfillmentScriptParamsWithContext(ctx context.Context) *DeleteFulfillmentScriptParams {
	var ()
	return &DeleteFulfillmentScriptParams{

		Context: ctx,
	}
}

// NewDeleteFulfillmentScriptParamsWithHTTPClient creates a new DeleteFulfillmentScriptParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteFulfillmentScriptParamsWithHTTPClient(client *http.Client) *DeleteFulfillmentScriptParams {
	var ()
	return &DeleteFulfillmentScriptParams{
		HTTPClient: client,
	}
}

/*DeleteFulfillmentScriptParams contains all the parameters to send to the API endpoint
for the delete fulfillment script operation typically these are written to a http.Request
*/
type DeleteFulfillmentScriptParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) WithTimeout(timeout time.Duration) *DeleteFulfillmentScriptParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) WithContext(ctx context.Context) *DeleteFulfillmentScriptParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) WithHTTPClient(client *http.Client) *DeleteFulfillmentScriptParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithID adds the idVar to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) WithID(idVar string) *DeleteFulfillmentScriptParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the delete fulfillment script params
func (o *DeleteFulfillmentScriptParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteFulfillmentScriptParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
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
