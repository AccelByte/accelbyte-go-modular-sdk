// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package data_deletion

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

// NewPublicCancelMyAccountDeletionRequestParams creates a new PublicCancelMyAccountDeletionRequestParams object
// with the default values initialized.
func NewPublicCancelMyAccountDeletionRequestParams() *PublicCancelMyAccountDeletionRequestParams {
	var ()
	return &PublicCancelMyAccountDeletionRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCancelMyAccountDeletionRequestParamsWithTimeout creates a new PublicCancelMyAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCancelMyAccountDeletionRequestParamsWithTimeout(timeout time.Duration) *PublicCancelMyAccountDeletionRequestParams {
	var ()
	return &PublicCancelMyAccountDeletionRequestParams{

		timeout: timeout,
	}
}

// NewPublicCancelMyAccountDeletionRequestParamsWithContext creates a new PublicCancelMyAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCancelMyAccountDeletionRequestParamsWithContext(ctx context.Context) *PublicCancelMyAccountDeletionRequestParams {
	var ()
	return &PublicCancelMyAccountDeletionRequestParams{

		Context: ctx,
	}
}

// NewPublicCancelMyAccountDeletionRequestParamsWithHTTPClient creates a new PublicCancelMyAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCancelMyAccountDeletionRequestParamsWithHTTPClient(client *http.Client) *PublicCancelMyAccountDeletionRequestParams {
	var ()
	return &PublicCancelMyAccountDeletionRequestParams{
		HTTPClient: client,
	}
}

/*PublicCancelMyAccountDeletionRequestParams contains all the parameters to send to the API endpoint
for the public cancel my account deletion request operation typically these are written to a http.Request
*/
type PublicCancelMyAccountDeletionRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public cancel my account deletion request params
func (o *PublicCancelMyAccountDeletionRequestParams) WithTimeout(timeout time.Duration) *PublicCancelMyAccountDeletionRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public cancel my account deletion request params
func (o *PublicCancelMyAccountDeletionRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public cancel my account deletion request params
func (o *PublicCancelMyAccountDeletionRequestParams) WithContext(ctx context.Context) *PublicCancelMyAccountDeletionRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public cancel my account deletion request params
func (o *PublicCancelMyAccountDeletionRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public cancel my account deletion request params
func (o *PublicCancelMyAccountDeletionRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public cancel my account deletion request params
func (o *PublicCancelMyAccountDeletionRequestParams) WithHTTPClient(client *http.Client) *PublicCancelMyAccountDeletionRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public cancel my account deletion request params
func (o *PublicCancelMyAccountDeletionRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public cancel my account deletion request params
func (o *PublicCancelMyAccountDeletionRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCancelMyAccountDeletionRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
