// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package utility

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

// NewCheckReadinessParams creates a new CheckReadinessParams object
// with the default values initialized.
func NewCheckReadinessParams() *CheckReadinessParams {
	var ()
	return &CheckReadinessParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCheckReadinessParamsWithTimeout creates a new CheckReadinessParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCheckReadinessParamsWithTimeout(timeout time.Duration) *CheckReadinessParams {
	var ()
	return &CheckReadinessParams{

		timeout: timeout,
	}
}

// NewCheckReadinessParamsWithContext creates a new CheckReadinessParams object
// with the default values initialized, and the ability to set a context for a request
func NewCheckReadinessParamsWithContext(ctx context.Context) *CheckReadinessParams {
	var ()
	return &CheckReadinessParams{

		Context: ctx,
	}
}

// NewCheckReadinessParamsWithHTTPClient creates a new CheckReadinessParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCheckReadinessParamsWithHTTPClient(client *http.Client) *CheckReadinessParams {
	var ()
	return &CheckReadinessParams{
		HTTPClient: client,
	}
}

/*CheckReadinessParams contains all the parameters to send to the API endpoint
for the check readiness operation typically these are written to a http.Request
*/
type CheckReadinessParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the check readiness params
func (o *CheckReadinessParams) WithTimeout(timeout time.Duration) *CheckReadinessParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the check readiness params
func (o *CheckReadinessParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the check readiness params
func (o *CheckReadinessParams) WithContext(ctx context.Context) *CheckReadinessParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the check readiness params
func (o *CheckReadinessParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the check readiness params
func (o *CheckReadinessParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the check readiness params
func (o *CheckReadinessParams) WithHTTPClient(client *http.Client) *CheckReadinessParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the check readiness params
func (o *CheckReadinessParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the check readiness params
func (o *CheckReadinessParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CheckReadinessParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *CheckReadinessParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
