// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package operations

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

// NewTraceHandlerParams creates a new TraceHandlerParams object
// with the default values initialized.
func NewTraceHandlerParams() *TraceHandlerParams {
	var ()
	return &TraceHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewTraceHandlerParamsWithTimeout creates a new TraceHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTraceHandlerParamsWithTimeout(timeout time.Duration) *TraceHandlerParams {
	var ()
	return &TraceHandlerParams{

		timeout: timeout,
	}
}

// NewTraceHandlerParamsWithContext creates a new TraceHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewTraceHandlerParamsWithContext(ctx context.Context) *TraceHandlerParams {
	var ()
	return &TraceHandlerParams{

		Context: ctx,
	}
}

// NewTraceHandlerParamsWithHTTPClient creates a new TraceHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTraceHandlerParamsWithHTTPClient(client *http.Client) *TraceHandlerParams {
	var ()
	return &TraceHandlerParams{
		HTTPClient: client,
	}
}

/*TraceHandlerParams contains all the parameters to send to the API endpoint
for the trace handler operation typically these are written to a http.Request
*/
type TraceHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the trace handler params
func (o *TraceHandlerParams) WithTimeout(timeout time.Duration) *TraceHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the trace handler params
func (o *TraceHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the trace handler params
func (o *TraceHandlerParams) WithContext(ctx context.Context) *TraceHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the trace handler params
func (o *TraceHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the trace handler params
func (o *TraceHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the trace handler params
func (o *TraceHandlerParams) WithHTTPClient(client *http.Client) *TraceHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the trace handler params
func (o *TraceHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the trace handler params
func (o *TraceHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TraceHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *TraceHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
