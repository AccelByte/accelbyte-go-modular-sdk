// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package third_party

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

// NewAdminGetThirdPartyConfigParams creates a new AdminGetThirdPartyConfigParams object
// with the default values initialized.
func NewAdminGetThirdPartyConfigParams() *AdminGetThirdPartyConfigParams {
	var ()
	return &AdminGetThirdPartyConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetThirdPartyConfigParamsWithTimeout creates a new AdminGetThirdPartyConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetThirdPartyConfigParamsWithTimeout(timeout time.Duration) *AdminGetThirdPartyConfigParams {
	var ()
	return &AdminGetThirdPartyConfigParams{

		timeout: timeout,
	}
}

// NewAdminGetThirdPartyConfigParamsWithContext creates a new AdminGetThirdPartyConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetThirdPartyConfigParamsWithContext(ctx context.Context) *AdminGetThirdPartyConfigParams {
	var ()
	return &AdminGetThirdPartyConfigParams{

		Context: ctx,
	}
}

// NewAdminGetThirdPartyConfigParamsWithHTTPClient creates a new AdminGetThirdPartyConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetThirdPartyConfigParamsWithHTTPClient(client *http.Client) *AdminGetThirdPartyConfigParams {
	var ()
	return &AdminGetThirdPartyConfigParams{
		HTTPClient: client,
	}
}

/*
AdminGetThirdPartyConfigParams contains all the parameters to send to the API endpoint
for the admin get third party config operation typically these are written to a http.Request
*/
type AdminGetThirdPartyConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) WithTimeout(timeout time.Duration) *AdminGetThirdPartyConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) WithContext(ctx context.Context) *AdminGetThirdPartyConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) WithHTTPClient(client *http.Client) *AdminGetThirdPartyConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) WithNamespace(namespace string) *AdminGetThirdPartyConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get third party config params
func (o *AdminGetThirdPartyConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetThirdPartyConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
