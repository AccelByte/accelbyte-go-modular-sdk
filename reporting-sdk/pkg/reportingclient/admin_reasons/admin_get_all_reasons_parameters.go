// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_reasons

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

// NewAdminGetAllReasonsParams creates a new AdminGetAllReasonsParams object
// with the default values initialized.
func NewAdminGetAllReasonsParams() *AdminGetAllReasonsParams {
	var ()
	return &AdminGetAllReasonsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetAllReasonsParamsWithTimeout creates a new AdminGetAllReasonsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetAllReasonsParamsWithTimeout(timeout time.Duration) *AdminGetAllReasonsParams {
	var ()
	return &AdminGetAllReasonsParams{

		timeout: timeout,
	}
}

// NewAdminGetAllReasonsParamsWithContext creates a new AdminGetAllReasonsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetAllReasonsParamsWithContext(ctx context.Context) *AdminGetAllReasonsParams {
	var ()
	return &AdminGetAllReasonsParams{

		Context: ctx,
	}
}

// NewAdminGetAllReasonsParamsWithHTTPClient creates a new AdminGetAllReasonsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetAllReasonsParamsWithHTTPClient(client *http.Client) *AdminGetAllReasonsParams {
	var ()
	return &AdminGetAllReasonsParams{
		HTTPClient: client,
	}
}

/*
AdminGetAllReasonsParams contains all the parameters to send to the API endpoint
for the admin get all reasons operation typically these are written to a http.Request
*/
type AdminGetAllReasonsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get all reasons params
func (o *AdminGetAllReasonsParams) WithTimeout(timeout time.Duration) *AdminGetAllReasonsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get all reasons params
func (o *AdminGetAllReasonsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get all reasons params
func (o *AdminGetAllReasonsParams) WithContext(ctx context.Context) *AdminGetAllReasonsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get all reasons params
func (o *AdminGetAllReasonsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get all reasons params
func (o *AdminGetAllReasonsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get all reasons params
func (o *AdminGetAllReasonsParams) WithHTTPClient(client *http.Client) *AdminGetAllReasonsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get all reasons params
func (o *AdminGetAllReasonsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get all reasons params
func (o *AdminGetAllReasonsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get all reasons params
func (o *AdminGetAllReasonsParams) WithNamespace(namespace string) *AdminGetAllReasonsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get all reasons params
func (o *AdminGetAllReasonsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetAllReasonsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
