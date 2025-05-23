// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package x_ray

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

// NewQueryXrayTimelineByTicketIDParams creates a new QueryXrayTimelineByTicketIDParams object
// with the default values initialized.
func NewQueryXrayTimelineByTicketIDParams() *QueryXrayTimelineByTicketIDParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryXrayTimelineByTicketIDParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryXrayTimelineByTicketIDParamsWithTimeout creates a new QueryXrayTimelineByTicketIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryXrayTimelineByTicketIDParamsWithTimeout(timeout time.Duration) *QueryXrayTimelineByTicketIDParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryXrayTimelineByTicketIDParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryXrayTimelineByTicketIDParamsWithContext creates a new QueryXrayTimelineByTicketIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryXrayTimelineByTicketIDParamsWithContext(ctx context.Context) *QueryXrayTimelineByTicketIDParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryXrayTimelineByTicketIDParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryXrayTimelineByTicketIDParamsWithHTTPClient creates a new QueryXrayTimelineByTicketIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryXrayTimelineByTicketIDParamsWithHTTPClient(client *http.Client) *QueryXrayTimelineByTicketIDParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryXrayTimelineByTicketIDParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryXrayTimelineByTicketIDParams contains all the parameters to send to the API endpoint
for the query xray timeline by ticket id operation typically these are written to a http.Request
*/
type QueryXrayTimelineByTicketIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*TicketID
	  ticket ID

	*/
	TicketID string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*Offset
	  Pagination offset

	*/
	Offset *int64
	/*EndDate
	  End date time: 2025-04-23T08:43:40Z

	*/
	EndDate string
	/*StartDate
	  Start date time. Format: 2025-04-23T08:43:40Z

	*/
	StartDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) WithTimeout(timeout time.Duration) *QueryXrayTimelineByTicketIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) WithContext(ctx context.Context) *QueryXrayTimelineByTicketIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) WithHTTPClient(client *http.Client) *QueryXrayTimelineByTicketIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryXrayTimelineByTicketIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) WithNamespace(namespace string) *QueryXrayTimelineByTicketIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTicketID adds the ticketID to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) WithTicketID(ticketID string) *QueryXrayTimelineByTicketIDParams {
	o.SetTicketID(ticketID)
	return o
}

// SetTicketID adds the ticketId to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetTicketID(ticketID string) {
	o.TicketID = ticketID
}

// WithLimit adds the limit to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) WithLimit(limit *int64) *QueryXrayTimelineByTicketIDParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) WithOffset(offset *int64) *QueryXrayTimelineByTicketIDParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithEndDate adds the endDate to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) WithEndDate(endDate string) *QueryXrayTimelineByTicketIDParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithStartDate adds the startDate to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) WithStartDate(startDate string) *QueryXrayTimelineByTicketIDParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query xray timeline by ticket id params
func (o *QueryXrayTimelineByTicketIDParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *QueryXrayTimelineByTicketIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param ticketId
	if err := r.SetPathParam("ticketId", o.TicketID); err != nil {
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

	// query param endDate
	qrEndDate := o.EndDate
	qEndDate := qrEndDate
	if qEndDate != "" {
		if err := r.SetQueryParam("endDate", qEndDate); err != nil {
			return err
		}
	}

	// query param startDate
	qrStartDate := o.StartDate
	qStartDate := qrStartDate
	if qStartDate != "" {
		if err := r.SetQueryParam("startDate", qStartDate); err != nil {
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
