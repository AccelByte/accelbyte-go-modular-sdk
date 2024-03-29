// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sso

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

// NewLogoutSSOClientParams creates a new LogoutSSOClientParams object
// with the default values initialized.
func NewLogoutSSOClientParams() *LogoutSSOClientParams {
	var ()
	return &LogoutSSOClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewLogoutSSOClientParamsWithTimeout creates a new LogoutSSOClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewLogoutSSOClientParamsWithTimeout(timeout time.Duration) *LogoutSSOClientParams {
	var ()
	return &LogoutSSOClientParams{

		timeout: timeout,
	}
}

// NewLogoutSSOClientParamsWithContext creates a new LogoutSSOClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewLogoutSSOClientParamsWithContext(ctx context.Context) *LogoutSSOClientParams {
	var ()
	return &LogoutSSOClientParams{

		Context: ctx,
	}
}

// NewLogoutSSOClientParamsWithHTTPClient creates a new LogoutSSOClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewLogoutSSOClientParamsWithHTTPClient(client *http.Client) *LogoutSSOClientParams {
	var ()
	return &LogoutSSOClientParams{
		HTTPClient: client,
	}
}

/*LogoutSSOClientParams contains all the parameters to send to the API endpoint
for the logout sso client operation typically these are written to a http.Request
*/
type LogoutSSOClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformID
	  SSO Client ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the logout sso client params
func (o *LogoutSSOClientParams) WithTimeout(timeout time.Duration) *LogoutSSOClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the logout sso client params
func (o *LogoutSSOClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the logout sso client params
func (o *LogoutSSOClientParams) WithContext(ctx context.Context) *LogoutSSOClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the logout sso client params
func (o *LogoutSSOClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the logout sso client params
func (o *LogoutSSOClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the logout sso client params
func (o *LogoutSSOClientParams) WithHTTPClient(client *http.Client) *LogoutSSOClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the logout sso client params
func (o *LogoutSSOClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the logout sso client params
func (o *LogoutSSOClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *LogoutSSOClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformID adds the platformID to the logout sso client params
func (o *LogoutSSOClientParams) WithPlatformID(platformID string) *LogoutSSOClientParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the logout sso client params
func (o *LogoutSSOClientParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *LogoutSSOClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
