// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order_dedicated

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

// NewSyncOrdersParams creates a new SyncOrdersParams object
// with the default values initialized.
func NewSyncOrdersParams() *SyncOrdersParams {
	var ()
	return &SyncOrdersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncOrdersParamsWithTimeout creates a new SyncOrdersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncOrdersParamsWithTimeout(timeout time.Duration) *SyncOrdersParams {
	var ()
	return &SyncOrdersParams{

		timeout: timeout,
	}
}

// NewSyncOrdersParamsWithContext creates a new SyncOrdersParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncOrdersParamsWithContext(ctx context.Context) *SyncOrdersParams {
	var ()
	return &SyncOrdersParams{

		Context: ctx,
	}
}

// NewSyncOrdersParamsWithHTTPClient creates a new SyncOrdersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncOrdersParamsWithHTTPClient(client *http.Client) *SyncOrdersParams {
	var ()
	return &SyncOrdersParams{
		HTTPClient: client,
	}
}

/*SyncOrdersParams contains all the parameters to send to the API endpoint
for the sync orders operation typically these are written to a http.Request
*/
type SyncOrdersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*NextEvaluatedKey*/
	NextEvaluatedKey *string
	/*End
	  exclude ISODateTimeFormat no millis like yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	End string
	/*Start
	  include ISODateTimeFormat no millis like yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	Start string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the sync orders params
func (o *SyncOrdersParams) WithTimeout(timeout time.Duration) *SyncOrdersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync orders params
func (o *SyncOrdersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync orders params
func (o *SyncOrdersParams) WithContext(ctx context.Context) *SyncOrdersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync orders params
func (o *SyncOrdersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync orders params
func (o *SyncOrdersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync orders params
func (o *SyncOrdersParams) WithHTTPClient(client *http.Client) *SyncOrdersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync orders params
func (o *SyncOrdersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync orders params
func (o *SyncOrdersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNextEvaluatedKey adds the nextEvaluatedKey to the sync orders params
func (o *SyncOrdersParams) WithNextEvaluatedKey(nextEvaluatedKey *string) *SyncOrdersParams {
	o.SetNextEvaluatedKey(nextEvaluatedKey)
	return o
}

// SetNextEvaluatedKey adds the nextEvaluatedKey to the sync orders params
func (o *SyncOrdersParams) SetNextEvaluatedKey(nextEvaluatedKey *string) {
	o.NextEvaluatedKey = nextEvaluatedKey
}

// WithEnd adds the end to the sync orders params
func (o *SyncOrdersParams) WithEnd(end string) *SyncOrdersParams {
	o.SetEnd(end)
	return o
}

// SetEnd adds the end to the sync orders params
func (o *SyncOrdersParams) SetEnd(end string) {
	o.End = end
}

// WithStart adds the start to the sync orders params
func (o *SyncOrdersParams) WithStart(start string) *SyncOrdersParams {
	o.SetStart(start)
	return o
}

// SetStart adds the start to the sync orders params
func (o *SyncOrdersParams) SetStart(start string) {
	o.Start = start
}

// WriteToRequest writes these params to a swagger request
func (o *SyncOrdersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.NextEvaluatedKey != nil {

		// query param nextEvaluatedKey
		var qrNextEvaluatedKey string
		if o.NextEvaluatedKey != nil {
			qrNextEvaluatedKey = *o.NextEvaluatedKey
		}
		qNextEvaluatedKey := qrNextEvaluatedKey
		if qNextEvaluatedKey != "" {
			if err := r.SetQueryParam("nextEvaluatedKey", qNextEvaluatedKey); err != nil {
				return err
			}
		}

	}

	// query param end
	qrEnd := o.End
	qEnd := qrEnd
	if qEnd != "" {
		if err := r.SetQueryParam("end", qEnd); err != nil {
			return err
		}
	}

	// query param start
	qrStart := o.Start
	qStart := qrStart
	if qStart != "" {
		if err := r.SetQueryParam("start", qStart); err != nil {
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
