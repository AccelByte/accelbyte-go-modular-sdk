// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewBulkAcceptVersionedPolicyParams creates a new BulkAcceptVersionedPolicyParams object
// with the default values initialized.
func NewBulkAcceptVersionedPolicyParams() *BulkAcceptVersionedPolicyParams {
	var ()
	return &BulkAcceptVersionedPolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkAcceptVersionedPolicyParamsWithTimeout creates a new BulkAcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkAcceptVersionedPolicyParamsWithTimeout(timeout time.Duration) *BulkAcceptVersionedPolicyParams {
	var ()
	return &BulkAcceptVersionedPolicyParams{

		timeout: timeout,
	}
}

// NewBulkAcceptVersionedPolicyParamsWithContext creates a new BulkAcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkAcceptVersionedPolicyParamsWithContext(ctx context.Context) *BulkAcceptVersionedPolicyParams {
	var ()
	return &BulkAcceptVersionedPolicyParams{

		Context: ctx,
	}
}

// NewBulkAcceptVersionedPolicyParamsWithHTTPClient creates a new BulkAcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkAcceptVersionedPolicyParamsWithHTTPClient(client *http.Client) *BulkAcceptVersionedPolicyParams {
	var ()
	return &BulkAcceptVersionedPolicyParams{
		HTTPClient: client,
	}
}

/*BulkAcceptVersionedPolicyParams contains all the parameters to send to the API endpoint
for the bulk accept versioned policy operation typically these are written to a http.Request
*/
type BulkAcceptVersionedPolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*legalclientmodels.AcceptAgreementRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) WithTimeout(timeout time.Duration) *BulkAcceptVersionedPolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) WithContext(ctx context.Context) *BulkAcceptVersionedPolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) WithHTTPClient(client *http.Client) *BulkAcceptVersionedPolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) WithBody(body []*legalclientmodels.AcceptAgreementRequest) *BulkAcceptVersionedPolicyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk accept versioned policy params
func (o *BulkAcceptVersionedPolicyParams) SetBody(body []*legalclientmodels.AcceptAgreementRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *BulkAcceptVersionedPolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
