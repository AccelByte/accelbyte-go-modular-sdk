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

// NewGetBackfillProposalParams creates a new GetBackfillProposalParams object
// with the default values initialized.
func NewGetBackfillProposalParams() *GetBackfillProposalParams {
	var ()
	return &GetBackfillProposalParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetBackfillProposalParamsWithTimeout creates a new GetBackfillProposalParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetBackfillProposalParamsWithTimeout(timeout time.Duration) *GetBackfillProposalParams {
	var ()
	return &GetBackfillProposalParams{

		timeout: timeout,
	}
}

// NewGetBackfillProposalParamsWithContext creates a new GetBackfillProposalParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetBackfillProposalParamsWithContext(ctx context.Context) *GetBackfillProposalParams {
	var ()
	return &GetBackfillProposalParams{

		Context: ctx,
	}
}

// NewGetBackfillProposalParamsWithHTTPClient creates a new GetBackfillProposalParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetBackfillProposalParamsWithHTTPClient(client *http.Client) *GetBackfillProposalParams {
	var ()
	return &GetBackfillProposalParams{
		HTTPClient: client,
	}
}

/*GetBackfillProposalParams contains all the parameters to send to the API endpoint
for the get backfill proposal operation typically these are written to a http.Request
*/
type GetBackfillProposalParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*SessionID
	  Session ID information

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get backfill proposal params
func (o *GetBackfillProposalParams) WithTimeout(timeout time.Duration) *GetBackfillProposalParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get backfill proposal params
func (o *GetBackfillProposalParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get backfill proposal params
func (o *GetBackfillProposalParams) WithContext(ctx context.Context) *GetBackfillProposalParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get backfill proposal params
func (o *GetBackfillProposalParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get backfill proposal params
func (o *GetBackfillProposalParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get backfill proposal params
func (o *GetBackfillProposalParams) WithHTTPClient(client *http.Client) *GetBackfillProposalParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get backfill proposal params
func (o *GetBackfillProposalParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get backfill proposal params
func (o *GetBackfillProposalParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetBackfillProposalParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get backfill proposal params
func (o *GetBackfillProposalParams) WithNamespace(namespace string) *GetBackfillProposalParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get backfill proposal params
func (o *GetBackfillProposalParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the get backfill proposal params
func (o *GetBackfillProposalParams) WithSessionID(sessionID string) *GetBackfillProposalParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the get backfill proposal params
func (o *GetBackfillProposalParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetBackfillProposalParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param sessionID
	qrSessionID := o.SessionID
	qSessionID := qrSessionID
	if qSessionID != "" {
		if err := r.SetQueryParam("sessionID", qSessionID); err != nil {
			return err
		}
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
