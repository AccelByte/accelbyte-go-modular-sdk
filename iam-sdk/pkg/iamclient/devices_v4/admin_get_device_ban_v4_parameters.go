// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package devices_v4

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewAdminGetDeviceBanV4Params creates a new AdminGetDeviceBanV4Params object
// with the default values initialized.
func NewAdminGetDeviceBanV4Params() *AdminGetDeviceBanV4Params {
	var ()
	return &AdminGetDeviceBanV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetDeviceBanV4ParamsWithTimeout creates a new AdminGetDeviceBanV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetDeviceBanV4ParamsWithTimeout(timeout time.Duration) *AdminGetDeviceBanV4Params {
	var ()
	return &AdminGetDeviceBanV4Params{

		timeout: timeout,
	}
}

// NewAdminGetDeviceBanV4ParamsWithContext creates a new AdminGetDeviceBanV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetDeviceBanV4ParamsWithContext(ctx context.Context) *AdminGetDeviceBanV4Params {
	var ()
	return &AdminGetDeviceBanV4Params{

		Context: ctx,
	}
}

// NewAdminGetDeviceBanV4ParamsWithHTTPClient creates a new AdminGetDeviceBanV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetDeviceBanV4ParamsWithHTTPClient(client *http.Client) *AdminGetDeviceBanV4Params {
	var ()
	return &AdminGetDeviceBanV4Params{
		HTTPClient: client,
	}
}

/*
AdminGetDeviceBanV4Params contains all the parameters to send to the API endpoint
for the admin get device ban v4 operation typically these are written to a http.Request
*/
type AdminGetDeviceBanV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BanID
	  device id

	*/
	BanID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) WithTimeout(timeout time.Duration) *AdminGetDeviceBanV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) WithContext(ctx context.Context) *AdminGetDeviceBanV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) WithHTTPClient(client *http.Client) *AdminGetDeviceBanV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBanID adds the banID to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) WithBanID(banID string) *AdminGetDeviceBanV4Params {
	o.SetBanID(banID)
	return o
}

// SetBanID adds the banId to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) SetBanID(banID string) {
	o.BanID = banID
}

// WithNamespace adds the namespace to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) WithNamespace(namespace string) *AdminGetDeviceBanV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get device ban v4 params
func (o *AdminGetDeviceBanV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetDeviceBanV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param banId
	if err := r.SetPathParam("banId", o.BanID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
