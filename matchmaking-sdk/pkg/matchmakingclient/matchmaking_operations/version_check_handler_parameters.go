// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking_operations

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

// NewVersionCheckHandlerParams creates a new VersionCheckHandlerParams object
// with the default values initialized.
func NewVersionCheckHandlerParams() *VersionCheckHandlerParams {
	var ()
	return &VersionCheckHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewVersionCheckHandlerParamsWithTimeout creates a new VersionCheckHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewVersionCheckHandlerParamsWithTimeout(timeout time.Duration) *VersionCheckHandlerParams {
	var ()
	return &VersionCheckHandlerParams{

		timeout: timeout,
	}
}

// NewVersionCheckHandlerParamsWithContext creates a new VersionCheckHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewVersionCheckHandlerParamsWithContext(ctx context.Context) *VersionCheckHandlerParams {
	var ()
	return &VersionCheckHandlerParams{

		Context: ctx,
	}
}

// NewVersionCheckHandlerParamsWithHTTPClient creates a new VersionCheckHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewVersionCheckHandlerParamsWithHTTPClient(client *http.Client) *VersionCheckHandlerParams {
	var ()
	return &VersionCheckHandlerParams{
		HTTPClient: client,
	}
}

/*
VersionCheckHandlerParams contains all the parameters to send to the API endpoint
for the version check handler operation typically these are written to a http.Request
*/
type VersionCheckHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the version check handler params
func (o *VersionCheckHandlerParams) WithTimeout(timeout time.Duration) *VersionCheckHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the version check handler params
func (o *VersionCheckHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the version check handler params
func (o *VersionCheckHandlerParams) WithContext(ctx context.Context) *VersionCheckHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the version check handler params
func (o *VersionCheckHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the version check handler params
func (o *VersionCheckHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the version check handler params
func (o *VersionCheckHandlerParams) WithHTTPClient(client *http.Client) *VersionCheckHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the version check handler params
func (o *VersionCheckHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the version check handler params
func (o *VersionCheckHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *VersionCheckHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *VersionCheckHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
