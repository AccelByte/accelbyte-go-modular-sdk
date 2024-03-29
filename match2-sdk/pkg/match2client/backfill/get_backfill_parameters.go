// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package backfill

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

// NewGetBackfillParams creates a new GetBackfillParams object
// with the default values initialized.
func NewGetBackfillParams() *GetBackfillParams {
	var ()
	return &GetBackfillParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetBackfillParamsWithTimeout creates a new GetBackfillParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetBackfillParamsWithTimeout(timeout time.Duration) *GetBackfillParams {
	var ()
	return &GetBackfillParams{

		timeout: timeout,
	}
}

// NewGetBackfillParamsWithContext creates a new GetBackfillParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetBackfillParamsWithContext(ctx context.Context) *GetBackfillParams {
	var ()
	return &GetBackfillParams{

		Context: ctx,
	}
}

// NewGetBackfillParamsWithHTTPClient creates a new GetBackfillParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetBackfillParamsWithHTTPClient(client *http.Client) *GetBackfillParams {
	var ()
	return &GetBackfillParams{
		HTTPClient: client,
	}
}

/*GetBackfillParams contains all the parameters to send to the API endpoint
for the get backfill operation typically these are written to a http.Request
*/
type GetBackfillParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BackfillID
	  backfill Ticket ID

	*/
	BackfillID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get backfill params
func (o *GetBackfillParams) WithTimeout(timeout time.Duration) *GetBackfillParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get backfill params
func (o *GetBackfillParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get backfill params
func (o *GetBackfillParams) WithContext(ctx context.Context) *GetBackfillParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get backfill params
func (o *GetBackfillParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get backfill params
func (o *GetBackfillParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get backfill params
func (o *GetBackfillParams) WithHTTPClient(client *http.Client) *GetBackfillParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get backfill params
func (o *GetBackfillParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get backfill params
func (o *GetBackfillParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetBackfillParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBackfillID adds the backfillID to the get backfill params
func (o *GetBackfillParams) WithBackfillID(backfillID string) *GetBackfillParams {
	o.SetBackfillID(backfillID)
	return o
}

// SetBackfillID adds the backfillId to the get backfill params
func (o *GetBackfillParams) SetBackfillID(backfillID string) {
	o.BackfillID = backfillID
}

// WithNamespace adds the namespace to the get backfill params
func (o *GetBackfillParams) WithNamespace(namespace string) *GetBackfillParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get backfill params
func (o *GetBackfillParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetBackfillParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param backfillID
	if err := r.SetPathParam("backfillID", o.BackfillID); err != nil {
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
