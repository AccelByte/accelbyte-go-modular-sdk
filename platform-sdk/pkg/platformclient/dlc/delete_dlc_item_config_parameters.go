// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package dlc

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

// NewDeleteDLCItemConfigParams creates a new DeleteDLCItemConfigParams object
// with the default values initialized.
func NewDeleteDLCItemConfigParams() *DeleteDLCItemConfigParams {
	var ()
	return &DeleteDLCItemConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteDLCItemConfigParamsWithTimeout creates a new DeleteDLCItemConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteDLCItemConfigParamsWithTimeout(timeout time.Duration) *DeleteDLCItemConfigParams {
	var ()
	return &DeleteDLCItemConfigParams{

		timeout: timeout,
	}
}

// NewDeleteDLCItemConfigParamsWithContext creates a new DeleteDLCItemConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteDLCItemConfigParamsWithContext(ctx context.Context) *DeleteDLCItemConfigParams {
	var ()
	return &DeleteDLCItemConfigParams{

		Context: ctx,
	}
}

// NewDeleteDLCItemConfigParamsWithHTTPClient creates a new DeleteDLCItemConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteDLCItemConfigParamsWithHTTPClient(client *http.Client) *DeleteDLCItemConfigParams {
	var ()
	return &DeleteDLCItemConfigParams{
		HTTPClient: client,
	}
}

/*
DeleteDLCItemConfigParams contains all the parameters to send to the API endpoint
for the delete DLC item config operation typically these are written to a http.Request
*/
type DeleteDLCItemConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) WithTimeout(timeout time.Duration) *DeleteDLCItemConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) WithContext(ctx context.Context) *DeleteDLCItemConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) WithHTTPClient(client *http.Client) *DeleteDLCItemConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) WithNamespace(namespace string) *DeleteDLCItemConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete DLC item config params
func (o *DeleteDLCItemConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteDLCItemConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
