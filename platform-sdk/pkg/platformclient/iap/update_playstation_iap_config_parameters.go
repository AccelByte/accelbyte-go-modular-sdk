// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package iap

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

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdatePlaystationIAPConfigParams creates a new UpdatePlaystationIAPConfigParams object
// with the default values initialized.
func NewUpdatePlaystationIAPConfigParams() *UpdatePlaystationIAPConfigParams {
	var ()
	return &UpdatePlaystationIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePlaystationIAPConfigParamsWithTimeout creates a new UpdatePlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePlaystationIAPConfigParamsWithTimeout(timeout time.Duration) *UpdatePlaystationIAPConfigParams {
	var ()
	return &UpdatePlaystationIAPConfigParams{

		timeout: timeout,
	}
}

// NewUpdatePlaystationIAPConfigParamsWithContext creates a new UpdatePlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePlaystationIAPConfigParamsWithContext(ctx context.Context) *UpdatePlaystationIAPConfigParams {
	var ()
	return &UpdatePlaystationIAPConfigParams{

		Context: ctx,
	}
}

// NewUpdatePlaystationIAPConfigParamsWithHTTPClient creates a new UpdatePlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePlaystationIAPConfigParamsWithHTTPClient(client *http.Client) *UpdatePlaystationIAPConfigParams {
	var ()
	return &UpdatePlaystationIAPConfigParams{
		HTTPClient: client,
	}
}

/*
UpdatePlaystationIAPConfigParams contains all the parameters to send to the API endpoint
for the update playstation IAP config operation typically these are written to a http.Request
*/
type UpdatePlaystationIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PlaystationIAPConfigRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) WithTimeout(timeout time.Duration) *UpdatePlaystationIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) WithContext(ctx context.Context) *UpdatePlaystationIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) WithHTTPClient(client *http.Client) *UpdatePlaystationIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) WithBody(body *platformclientmodels.PlaystationIAPConfigRequest) *UpdatePlaystationIAPConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) SetBody(body *platformclientmodels.PlaystationIAPConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) WithNamespace(namespace string) *UpdatePlaystationIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update playstation IAP config params
func (o *UpdatePlaystationIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePlaystationIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
