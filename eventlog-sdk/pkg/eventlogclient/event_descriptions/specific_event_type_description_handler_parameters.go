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

// NewSpecificEventTypeDescriptionHandlerParams creates a new SpecificEventTypeDescriptionHandlerParams object
// with the default values initialized.
func NewSpecificEventTypeDescriptionHandlerParams() *SpecificEventTypeDescriptionHandlerParams {
	var ()
	return &SpecificEventTypeDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSpecificEventTypeDescriptionHandlerParamsWithTimeout creates a new SpecificEventTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSpecificEventTypeDescriptionHandlerParamsWithTimeout(timeout time.Duration) *SpecificEventTypeDescriptionHandlerParams {
	var ()
	return &SpecificEventTypeDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewSpecificEventTypeDescriptionHandlerParamsWithContext creates a new SpecificEventTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewSpecificEventTypeDescriptionHandlerParamsWithContext(ctx context.Context) *SpecificEventTypeDescriptionHandlerParams {
	var ()
	return &SpecificEventTypeDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewSpecificEventTypeDescriptionHandlerParamsWithHTTPClient creates a new SpecificEventTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSpecificEventTypeDescriptionHandlerParamsWithHTTPClient(client *http.Client) *SpecificEventTypeDescriptionHandlerParams {
	var ()
	return &SpecificEventTypeDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*SpecificEventTypeDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the specific event type description handler operation typically these are written to a http.Request
*/
type SpecificEventTypeDescriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EventTypes
	  Comma separated value of eventIDs

	*/
	EventTypes *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) WithTimeout(timeout time.Duration) *SpecificEventTypeDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) WithContext(ctx context.Context) *SpecificEventTypeDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) WithHTTPClient(client *http.Client) *SpecificEventTypeDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SpecificEventTypeDescriptionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEventTypes adds the eventTypes to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) WithEventTypes(eventTypes *string) *SpecificEventTypeDescriptionHandlerParams {
	o.SetEventTypes(eventTypes)
	return o
}

// SetEventTypes adds the eventTypes to the specific event type description handler params
func (o *SpecificEventTypeDescriptionHandlerParams) SetEventTypes(eventTypes *string) {
	o.EventTypes = eventTypes
}

// WriteToRequest writes these params to a swagger request
func (o *SpecificEventTypeDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.EventTypes != nil {

		// query param eventTypes
		var qrEventTypes string
		if o.EventTypes != nil {
			qrEventTypes = *o.EventTypes
		}
		qEventTypes := qrEventTypes
		if qEventTypes != "" {
			if err := r.SetQueryParam("eventTypes", qEventTypes); err != nil {
				return err
			}
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
