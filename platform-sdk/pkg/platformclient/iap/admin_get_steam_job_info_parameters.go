// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

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

// NewAdminGetSteamJobInfoParams creates a new AdminGetSteamJobInfoParams object
// with the default values initialized.
func NewAdminGetSteamJobInfoParams() *AdminGetSteamJobInfoParams {
	var ()
	return &AdminGetSteamJobInfoParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetSteamJobInfoParamsWithTimeout creates a new AdminGetSteamJobInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetSteamJobInfoParamsWithTimeout(timeout time.Duration) *AdminGetSteamJobInfoParams {
	var ()
	return &AdminGetSteamJobInfoParams{

		timeout: timeout,
	}
}

// NewAdminGetSteamJobInfoParamsWithContext creates a new AdminGetSteamJobInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetSteamJobInfoParamsWithContext(ctx context.Context) *AdminGetSteamJobInfoParams {
	var ()
	return &AdminGetSteamJobInfoParams{

		Context: ctx,
	}
}

// NewAdminGetSteamJobInfoParamsWithHTTPClient creates a new AdminGetSteamJobInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetSteamJobInfoParamsWithHTTPClient(client *http.Client) *AdminGetSteamJobInfoParams {
	var ()
	return &AdminGetSteamJobInfoParams{
		HTTPClient: client,
	}
}

/*AdminGetSteamJobInfoParams contains all the parameters to send to the API endpoint
for the admin get steam job info operation typically these are written to a http.Request
*/
type AdminGetSteamJobInfoParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) WithTimeout(timeout time.Duration) *AdminGetSteamJobInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) WithContext(ctx context.Context) *AdminGetSteamJobInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) WithHTTPClient(client *http.Client) *AdminGetSteamJobInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetSteamJobInfoParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) WithNamespace(namespace string) *AdminGetSteamJobInfoParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get steam job info params
func (o *AdminGetSteamJobInfoParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetSteamJobInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
