// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_reasons

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewPublicListReasonGroupsParams creates a new PublicListReasonGroupsParams object
// with the default values initialized.
func NewPublicListReasonGroupsParams() *PublicListReasonGroupsParams {
	var ()
	return &PublicListReasonGroupsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListReasonGroupsParamsWithTimeout creates a new PublicListReasonGroupsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListReasonGroupsParamsWithTimeout(timeout time.Duration) *PublicListReasonGroupsParams {
	var ()
	return &PublicListReasonGroupsParams{

		timeout: timeout,
	}
}

// NewPublicListReasonGroupsParamsWithContext creates a new PublicListReasonGroupsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListReasonGroupsParamsWithContext(ctx context.Context) *PublicListReasonGroupsParams {
	var ()
	return &PublicListReasonGroupsParams{

		Context: ctx,
	}
}

// NewPublicListReasonGroupsParamsWithHTTPClient creates a new PublicListReasonGroupsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListReasonGroupsParamsWithHTTPClient(client *http.Client) *PublicListReasonGroupsParams {
	var ()
	return &PublicListReasonGroupsParams{
		HTTPClient: client,
	}
}

/*PublicListReasonGroupsParams contains all the parameters to send to the API endpoint
for the public list reason groups operation typically these are written to a http.Request
*/
type PublicListReasonGroupsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Limit
	  number of data requested (default 25)

	*/
	Limit *int64
	/*Offset
	  number of data offset (default 0)

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public list reason groups params
func (o *PublicListReasonGroupsParams) WithTimeout(timeout time.Duration) *PublicListReasonGroupsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list reason groups params
func (o *PublicListReasonGroupsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list reason groups params
func (o *PublicListReasonGroupsParams) WithContext(ctx context.Context) *PublicListReasonGroupsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list reason groups params
func (o *PublicListReasonGroupsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list reason groups params
func (o *PublicListReasonGroupsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list reason groups params
func (o *PublicListReasonGroupsParams) WithHTTPClient(client *http.Client) *PublicListReasonGroupsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list reason groups params
func (o *PublicListReasonGroupsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list reason groups params
func (o *PublicListReasonGroupsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public list reason groups params
func (o *PublicListReasonGroupsParams) WithNamespace(namespace string) *PublicListReasonGroupsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list reason groups params
func (o *PublicListReasonGroupsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public list reason groups params
func (o *PublicListReasonGroupsParams) WithLimit(limit *int64) *PublicListReasonGroupsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list reason groups params
func (o *PublicListReasonGroupsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list reason groups params
func (o *PublicListReasonGroupsParams) WithOffset(offset *int64) *PublicListReasonGroupsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list reason groups params
func (o *PublicListReasonGroupsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListReasonGroupsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
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
