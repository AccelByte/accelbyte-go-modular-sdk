// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users_v4

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminMakeFactorMyDefaultV4Params creates a new AdminMakeFactorMyDefaultV4Params object
// with the default values initialized.
func NewAdminMakeFactorMyDefaultV4Params() *AdminMakeFactorMyDefaultV4Params {
	var ()
	return &AdminMakeFactorMyDefaultV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminMakeFactorMyDefaultV4ParamsWithTimeout creates a new AdminMakeFactorMyDefaultV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminMakeFactorMyDefaultV4ParamsWithTimeout(timeout time.Duration) *AdminMakeFactorMyDefaultV4Params {
	var ()
	return &AdminMakeFactorMyDefaultV4Params{

		timeout: timeout,
	}
}

// NewAdminMakeFactorMyDefaultV4ParamsWithContext creates a new AdminMakeFactorMyDefaultV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminMakeFactorMyDefaultV4ParamsWithContext(ctx context.Context) *AdminMakeFactorMyDefaultV4Params {
	var ()
	return &AdminMakeFactorMyDefaultV4Params{

		Context: ctx,
	}
}

// NewAdminMakeFactorMyDefaultV4ParamsWithHTTPClient creates a new AdminMakeFactorMyDefaultV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminMakeFactorMyDefaultV4ParamsWithHTTPClient(client *http.Client) *AdminMakeFactorMyDefaultV4Params {
	var ()
	return &AdminMakeFactorMyDefaultV4Params{
		HTTPClient: client,
	}
}

/*
AdminMakeFactorMyDefaultV4Params contains all the parameters to send to the API endpoint
for the admin make factor my default v4 operation typically these are written to a http.Request
*/
type AdminMakeFactorMyDefaultV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Factor
	  method

	*/
	Factor string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) WithTimeout(timeout time.Duration) *AdminMakeFactorMyDefaultV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) WithContext(ctx context.Context) *AdminMakeFactorMyDefaultV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) WithHTTPClient(client *http.Client) *AdminMakeFactorMyDefaultV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFactor adds the factor to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) WithFactor(factor string) *AdminMakeFactorMyDefaultV4Params {
	o.SetFactor(factor)
	return o
}

// SetFactor adds the factor to the admin make factor my default v4 params
func (o *AdminMakeFactorMyDefaultV4Params) SetFactor(factor string) {
	o.Factor = factor
}

// WriteToRequest writes these params to a swagger request
func (o *AdminMakeFactorMyDefaultV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param factor
	frFactor := o.Factor
	fFactor := frFactor
	if fFactor != "" {
		if err := r.SetFormParam("factor", fFactor); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
