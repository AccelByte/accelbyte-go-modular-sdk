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

// NewSpecificUXDescriptionHandlerParams creates a new SpecificUXDescriptionHandlerParams object
// with the default values initialized.
func NewSpecificUXDescriptionHandlerParams() *SpecificUXDescriptionHandlerParams {
	var ()
	return &SpecificUXDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSpecificUXDescriptionHandlerParamsWithTimeout creates a new SpecificUXDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSpecificUXDescriptionHandlerParamsWithTimeout(timeout time.Duration) *SpecificUXDescriptionHandlerParams {
	var ()
	return &SpecificUXDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewSpecificUXDescriptionHandlerParamsWithContext creates a new SpecificUXDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewSpecificUXDescriptionHandlerParamsWithContext(ctx context.Context) *SpecificUXDescriptionHandlerParams {
	var ()
	return &SpecificUXDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewSpecificUXDescriptionHandlerParamsWithHTTPClient creates a new SpecificUXDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSpecificUXDescriptionHandlerParamsWithHTTPClient(client *http.Client) *SpecificUXDescriptionHandlerParams {
	var ()
	return &SpecificUXDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*SpecificUXDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the specific ux description handler operation typically these are written to a http.Request
*/
type SpecificUXDescriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Ux
	  Comma separated value of UX

	*/
	Ux *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) WithTimeout(timeout time.Duration) *SpecificUXDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) WithContext(ctx context.Context) *SpecificUXDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) WithHTTPClient(client *http.Client) *SpecificUXDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SpecificUXDescriptionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithUx adds the ux to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) WithUx(ux *string) *SpecificUXDescriptionHandlerParams {
	o.SetUx(ux)
	return o
}

// SetUx adds the ux to the specific ux description handler params
func (o *SpecificUXDescriptionHandlerParams) SetUx(ux *string) {
	o.Ux = ux
}

// WriteToRequest writes these params to a swagger request
func (o *SpecificUXDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Ux != nil {

		// query param ux
		var qrUx string
		if o.Ux != nil {
			qrUx = *o.Ux
		}
		qUx := qrUx
		if qUx != "" {
			if err := r.SetQueryParam("ux", qUx); err != nil {
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
