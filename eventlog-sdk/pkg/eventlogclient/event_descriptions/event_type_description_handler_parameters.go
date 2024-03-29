// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package event_descriptions

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

// NewEventTypeDescriptionHandlerParams creates a new EventTypeDescriptionHandlerParams object
// with the default values initialized.
func NewEventTypeDescriptionHandlerParams() *EventTypeDescriptionHandlerParams {
	var ()
	return &EventTypeDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEventTypeDescriptionHandlerParamsWithTimeout creates a new EventTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEventTypeDescriptionHandlerParamsWithTimeout(timeout time.Duration) *EventTypeDescriptionHandlerParams {
	var ()
	return &EventTypeDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewEventTypeDescriptionHandlerParamsWithContext creates a new EventTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewEventTypeDescriptionHandlerParamsWithContext(ctx context.Context) *EventTypeDescriptionHandlerParams {
	var ()
	return &EventTypeDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewEventTypeDescriptionHandlerParamsWithHTTPClient creates a new EventTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEventTypeDescriptionHandlerParamsWithHTTPClient(client *http.Client) *EventTypeDescriptionHandlerParams {
	var ()
	return &EventTypeDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*EventTypeDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the event type description handler operation typically these are written to a http.Request
*/
type EventTypeDescriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the event type description handler params
func (o *EventTypeDescriptionHandlerParams) WithTimeout(timeout time.Duration) *EventTypeDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the event type description handler params
func (o *EventTypeDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the event type description handler params
func (o *EventTypeDescriptionHandlerParams) WithContext(ctx context.Context) *EventTypeDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the event type description handler params
func (o *EventTypeDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the event type description handler params
func (o *EventTypeDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the event type description handler params
func (o *EventTypeDescriptionHandlerParams) WithHTTPClient(client *http.Client) *EventTypeDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the event type description handler params
func (o *EventTypeDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the event type description handler params
func (o *EventTypeDescriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *EventTypeDescriptionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *EventTypeDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
