// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package clients

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

// NewGetClientsbyNamespaceParams creates a new GetClientsbyNamespaceParams object
// with the default values initialized.
func NewGetClientsbyNamespaceParams() *GetClientsbyNamespaceParams {
	var ()
	return &GetClientsbyNamespaceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetClientsbyNamespaceParamsWithTimeout creates a new GetClientsbyNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetClientsbyNamespaceParamsWithTimeout(timeout time.Duration) *GetClientsbyNamespaceParams {
	var ()
	return &GetClientsbyNamespaceParams{

		timeout: timeout,
	}
}

// NewGetClientsbyNamespaceParamsWithContext creates a new GetClientsbyNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetClientsbyNamespaceParamsWithContext(ctx context.Context) *GetClientsbyNamespaceParams {
	var ()
	return &GetClientsbyNamespaceParams{

		Context: ctx,
	}
}

// NewGetClientsbyNamespaceParamsWithHTTPClient creates a new GetClientsbyNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetClientsbyNamespaceParamsWithHTTPClient(client *http.Client) *GetClientsbyNamespaceParams {
	var ()
	return &GetClientsbyNamespaceParams{
		HTTPClient: client,
	}
}

/*
GetClientsbyNamespaceParams contains all the parameters to send to the API endpoint
for the get clientsby namespace operation typically these are written to a http.Request
*/
type GetClientsbyNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) WithTimeout(timeout time.Duration) *GetClientsbyNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) WithContext(ctx context.Context) *GetClientsbyNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) WithHTTPClient(client *http.Client) *GetClientsbyNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) WithNamespace(namespace string) *GetClientsbyNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get clientsby namespace params
func (o *GetClientsbyNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetClientsbyNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
