// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

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

// NewBulkGetSessionsParams creates a new BulkGetSessionsParams object
// with the default values initialized.
func NewBulkGetSessionsParams() *BulkGetSessionsParams {
	var ()
	return &BulkGetSessionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkGetSessionsParamsWithTimeout creates a new BulkGetSessionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkGetSessionsParamsWithTimeout(timeout time.Duration) *BulkGetSessionsParams {
	var ()
	return &BulkGetSessionsParams{

		timeout: timeout,
	}
}

// NewBulkGetSessionsParamsWithContext creates a new BulkGetSessionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkGetSessionsParamsWithContext(ctx context.Context) *BulkGetSessionsParams {
	var ()
	return &BulkGetSessionsParams{

		Context: ctx,
	}
}

// NewBulkGetSessionsParamsWithHTTPClient creates a new BulkGetSessionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkGetSessionsParamsWithHTTPClient(client *http.Client) *BulkGetSessionsParams {
	var ()
	return &BulkGetSessionsParams{
		HTTPClient: client,
	}
}

/*BulkGetSessionsParams contains all the parameters to send to the API endpoint
for the bulk get sessions operation typically these are written to a http.Request
*/
type BulkGetSessionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*MatchIDs
	  comma-delimited session IDs

	*/
	MatchIDs *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk get sessions params
func (o *BulkGetSessionsParams) WithTimeout(timeout time.Duration) *BulkGetSessionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk get sessions params
func (o *BulkGetSessionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk get sessions params
func (o *BulkGetSessionsParams) WithContext(ctx context.Context) *BulkGetSessionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk get sessions params
func (o *BulkGetSessionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk get sessions params
func (o *BulkGetSessionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk get sessions params
func (o *BulkGetSessionsParams) WithHTTPClient(client *http.Client) *BulkGetSessionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk get sessions params
func (o *BulkGetSessionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk get sessions params
func (o *BulkGetSessionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the bulk get sessions params
func (o *BulkGetSessionsParams) WithNamespace(namespace string) *BulkGetSessionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk get sessions params
func (o *BulkGetSessionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithMatchIDs adds the matchIDs to the bulk get sessions params
func (o *BulkGetSessionsParams) WithMatchIDs(matchIDs *string) *BulkGetSessionsParams {
	o.SetMatchIDs(matchIDs)
	return o
}

// SetMatchIDs adds the matchIDs to the bulk get sessions params
func (o *BulkGetSessionsParams) SetMatchIDs(matchIDs *string) {
	o.MatchIDs = matchIDs
}

// WriteToRequest writes these params to a swagger request
func (o *BulkGetSessionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.MatchIDs != nil {

		// query param matchIDs
		var qrMatchIDs string
		if o.MatchIDs != nil {
			qrMatchIDs = *o.MatchIDs
		}
		qMatchIDs := qrMatchIDs
		if qMatchIDs != "" {
			if err := r.SetQueryParam("matchIDs", qMatchIDs); err != nil {
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
