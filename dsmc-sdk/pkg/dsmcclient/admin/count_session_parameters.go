// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

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

// NewCountSessionParams creates a new CountSessionParams object
// with the default values initialized.
func NewCountSessionParams() *CountSessionParams {
	var ()
	return &CountSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCountSessionParamsWithTimeout creates a new CountSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCountSessionParamsWithTimeout(timeout time.Duration) *CountSessionParams {
	var ()
	return &CountSessionParams{

		timeout: timeout,
	}
}

// NewCountSessionParamsWithContext creates a new CountSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewCountSessionParamsWithContext(ctx context.Context) *CountSessionParams {
	var ()
	return &CountSessionParams{

		Context: ctx,
	}
}

// NewCountSessionParamsWithHTTPClient creates a new CountSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCountSessionParamsWithHTTPClient(client *http.Client) *CountSessionParams {
	var ()
	return &CountSessionParams{
		HTTPClient: client,
	}
}

/*CountSessionParams contains all the parameters to send to the API endpoint
for the count session operation typically these are written to a http.Request
*/
type CountSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Region
	  region where session is located. if not specified it will count all sessions.

	*/
	Region *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the count session params
func (o *CountSessionParams) WithTimeout(timeout time.Duration) *CountSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the count session params
func (o *CountSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the count session params
func (o *CountSessionParams) WithContext(ctx context.Context) *CountSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the count session params
func (o *CountSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the count session params
func (o *CountSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the count session params
func (o *CountSessionParams) WithHTTPClient(client *http.Client) *CountSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the count session params
func (o *CountSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the count session params
func (o *CountSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CountSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the count session params
func (o *CountSessionParams) WithNamespace(namespace string) *CountSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the count session params
func (o *CountSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the count session params
func (o *CountSessionParams) WithRegion(region *string) *CountSessionParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the count session params
func (o *CountSessionParams) SetRegion(region *string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *CountSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
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
