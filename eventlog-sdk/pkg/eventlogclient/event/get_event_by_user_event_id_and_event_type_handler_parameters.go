// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package event

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

// NewGetEventByUserEventIDAndEventTypeHandlerParams creates a new GetEventByUserEventIDAndEventTypeHandlerParams object
// with the default values initialized.
func NewGetEventByUserEventIDAndEventTypeHandlerParams() *GetEventByUserEventIDAndEventTypeHandlerParams {
	var ()
	return &GetEventByUserEventIDAndEventTypeHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEventByUserEventIDAndEventTypeHandlerParamsWithTimeout creates a new GetEventByUserEventIDAndEventTypeHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEventByUserEventIDAndEventTypeHandlerParamsWithTimeout(timeout time.Duration) *GetEventByUserEventIDAndEventTypeHandlerParams {
	var ()
	return &GetEventByUserEventIDAndEventTypeHandlerParams{

		timeout: timeout,
	}
}

// NewGetEventByUserEventIDAndEventTypeHandlerParamsWithContext creates a new GetEventByUserEventIDAndEventTypeHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEventByUserEventIDAndEventTypeHandlerParamsWithContext(ctx context.Context) *GetEventByUserEventIDAndEventTypeHandlerParams {
	var ()
	return &GetEventByUserEventIDAndEventTypeHandlerParams{

		Context: ctx,
	}
}

// NewGetEventByUserEventIDAndEventTypeHandlerParamsWithHTTPClient creates a new GetEventByUserEventIDAndEventTypeHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEventByUserEventIDAndEventTypeHandlerParamsWithHTTPClient(client *http.Client) *GetEventByUserEventIDAndEventTypeHandlerParams {
	var ()
	return &GetEventByUserEventIDAndEventTypeHandlerParams{
		HTTPClient: client,
	}
}

/*GetEventByUserEventIDAndEventTypeHandlerParams contains all the parameters to send to the API endpoint
for the get event by user event id and event type handler operation typically these are written to a http.Request
*/
type GetEventByUserEventIDAndEventTypeHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EventID
	  Event's ID

	*/
	EventID float64
	/*EventType
	  Event's type

	*/
	EventType float64
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*Offset
	  Offset to query

	*/
	Offset *int64
	/*EndDate
	  Ending date. e.g. 2015-03-20T12:27:06.351Z

	*/
	EndDate string
	/*PageSize
	  Number of result in a page

	*/
	PageSize int64
	/*StartDate
	  Starting date. e.g. 2015-03-20T12:27:06.351Z

	*/
	StartDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithTimeout(timeout time.Duration) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithContext(ctx context.Context) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithHTTPClient(client *http.Client) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEventID adds the eventID to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithEventID(eventID float64) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetEventID(eventID)
	return o
}

// SetEventID adds the eventId to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetEventID(eventID float64) {
	o.EventID = eventID
}

// WithEventType adds the eventType to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithEventType(eventType float64) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetEventType(eventType)
	return o
}

// SetEventType adds the eventType to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetEventType(eventType float64) {
	o.EventType = eventType
}

// WithNamespace adds the namespace to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithNamespace(namespace string) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithUserID(userID string) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithOffset adds the offset to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithOffset(offset *int64) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithEndDate adds the endDate to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithEndDate(endDate string) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithPageSize adds the pageSize to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithPageSize(pageSize int64) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetPageSize(pageSize)
	return o
}

// SetPageSize adds the pageSize to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetPageSize(pageSize int64) {
	o.PageSize = pageSize
}

// WithStartDate adds the startDate to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WithStartDate(startDate string) *GetEventByUserEventIDAndEventTypeHandlerParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the get event by user event id and event type handler params
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *GetEventByUserEventIDAndEventTypeHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param eventId
	if err := r.SetPathParam("eventId", swag.FormatFloat64(o.EventID)); err != nil {
		return err
	}

	// path param eventType
	if err := r.SetPathParam("eventType", swag.FormatFloat64(o.EventType)); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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

	// query param pageSize
	qrPageSize := o.PageSize
	qPageSize := swag.FormatInt64(qrPageSize)
	if qPageSize != "" {
		if err := r.SetQueryParam("pageSize", qPageSize); err != nil {
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
