// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth

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

// NewPlatformTokenRequestHandlerParams creates a new PlatformTokenRequestHandlerParams object
// with the default values initialized.
func NewPlatformTokenRequestHandlerParams() *PlatformTokenRequestHandlerParams {
	var ()
	return &PlatformTokenRequestHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPlatformTokenRequestHandlerParamsWithTimeout creates a new PlatformTokenRequestHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPlatformTokenRequestHandlerParamsWithTimeout(timeout time.Duration) *PlatformTokenRequestHandlerParams {
	var ()
	return &PlatformTokenRequestHandlerParams{

		timeout: timeout,
	}
}

// NewPlatformTokenRequestHandlerParamsWithContext creates a new PlatformTokenRequestHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewPlatformTokenRequestHandlerParamsWithContext(ctx context.Context) *PlatformTokenRequestHandlerParams {
	var ()
	return &PlatformTokenRequestHandlerParams{

		Context: ctx,
	}
}

// NewPlatformTokenRequestHandlerParamsWithHTTPClient creates a new PlatformTokenRequestHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPlatformTokenRequestHandlerParamsWithHTTPClient(client *http.Client) *PlatformTokenRequestHandlerParams {
	var ()
	return &PlatformTokenRequestHandlerParams{
		HTTPClient: client,
	}
}

/*PlatformTokenRequestHandlerParams contains all the parameters to send to the API endpoint
for the platform token request handler operation typically these are written to a http.Request
*/
type PlatformTokenRequestHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*DeviceID
	  Device/hardware identifier

	*/
	DeviceID *string
	/*MacAddress
	  Mac address of device

	*/
	MacAddress *string
	/*PlatformToken
	  Token from platform auth

	*/
	PlatformToken *string
	/*Namespace
	  Requested namespace for token grant

	*/
	Namespace string
	/*PlatformID
	  Platform ID to login with

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) WithTimeout(timeout time.Duration) *PlatformTokenRequestHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) WithContext(ctx context.Context) *PlatformTokenRequestHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) WithHTTPClient(client *http.Client) *PlatformTokenRequestHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PlatformTokenRequestHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeviceID adds the deviceID to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) WithDeviceID(deviceID *string) *PlatformTokenRequestHandlerParams {
	o.SetDeviceID(deviceID)
	return o
}

// SetDeviceID adds the deviceId to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetDeviceID(deviceID *string) {
	o.DeviceID = deviceID
}

// WithMacAddress adds the macAddress to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) WithMacAddress(macAddress *string) *PlatformTokenRequestHandlerParams {
	o.SetMacAddress(macAddress)
	return o
}

// SetMacAddress adds the macAddress to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetMacAddress(macAddress *string) {
	o.MacAddress = macAddress
}

// WithPlatformToken adds the platformToken to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) WithPlatformToken(platformToken *string) *PlatformTokenRequestHandlerParams {
	o.SetPlatformToken(platformToken)
	return o
}

// SetPlatformToken adds the platformToken to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetPlatformToken(platformToken *string) {
	o.PlatformToken = platformToken
}

// WithNamespace adds the namespace to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) WithNamespace(namespace string) *PlatformTokenRequestHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) WithPlatformID(platformID string) *PlatformTokenRequestHandlerParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the platform token request handler params
func (o *PlatformTokenRequestHandlerParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PlatformTokenRequestHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.DeviceID != nil {

		// form param device_id
		var frDeviceID string
		if o.DeviceID != nil {
			frDeviceID = *o.DeviceID
		}
		fDeviceID := frDeviceID
		if fDeviceID != "" {
			if err := r.SetFormParam("device_id", fDeviceID); err != nil {
				return err
			}
		}

	}

	if o.MacAddress != nil {

		// form param macAddress
		var frMacAddress string
		if o.MacAddress != nil {
			frMacAddress = *o.MacAddress
		}
		fMacAddress := frMacAddress
		if fMacAddress != "" {
			if err := r.SetFormParam("macAddress", fMacAddress); err != nil {
				return err
			}
		}

	}

	if o.PlatformToken != nil {

		// form param platform_token
		var frPlatformToken string
		if o.PlatformToken != nil {
			frPlatformToken = *o.PlatformToken
		}
		fPlatformToken := frPlatformToken
		if fPlatformToken != "" {
			if err := r.SetFormParam("platform_token", fPlatformToken); err != nil {
				return err
			}
		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

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
