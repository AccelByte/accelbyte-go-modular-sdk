// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_statistic

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

// NewBulkIncUserStatItemParams creates a new BulkIncUserStatItemParams object
// with the default values initialized.
func NewBulkIncUserStatItemParams() *BulkIncUserStatItemParams {
	var ()
	return &BulkIncUserStatItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkIncUserStatItemParamsWithTimeout creates a new BulkIncUserStatItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkIncUserStatItemParamsWithTimeout(timeout time.Duration) *BulkIncUserStatItemParams {
	var ()
	return &BulkIncUserStatItemParams{

		timeout: timeout,
	}
}

// NewBulkIncUserStatItemParamsWithContext creates a new BulkIncUserStatItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkIncUserStatItemParamsWithContext(ctx context.Context) *BulkIncUserStatItemParams {
	var ()
	return &BulkIncUserStatItemParams{

		Context: ctx,
	}
}

// NewBulkIncUserStatItemParamsWithHTTPClient creates a new BulkIncUserStatItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkIncUserStatItemParamsWithHTTPClient(client *http.Client) *BulkIncUserStatItemParams {
	var ()
	return &BulkIncUserStatItemParams{
		HTTPClient: client,
	}
}

/*BulkIncUserStatItemParams contains all the parameters to send to the API endpoint
for the bulk inc user stat item operation typically these are written to a http.Request
*/
type BulkIncUserStatItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.BulkUserStatItemInc
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) WithTimeout(timeout time.Duration) *BulkIncUserStatItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) WithContext(ctx context.Context) *BulkIncUserStatItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) WithHTTPClient(client *http.Client) *BulkIncUserStatItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) WithBody(body []*socialclientmodels.BulkUserStatItemInc) *BulkIncUserStatItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) SetBody(body []*socialclientmodels.BulkUserStatItemInc) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) WithNamespace(namespace string) *BulkIncUserStatItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk inc user stat item params
func (o *BulkIncUserStatItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkIncUserStatItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
