// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

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

// NewDeletePortParams creates a new DeletePortParams object
// with the default values initialized.
func NewDeletePortParams() *DeletePortParams {
	var ()
	return &DeletePortParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePortParamsWithTimeout creates a new DeletePortParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePortParamsWithTimeout(timeout time.Duration) *DeletePortParams {
	var ()
	return &DeletePortParams{

		timeout: timeout,
	}
}

// NewDeletePortParamsWithContext creates a new DeletePortParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePortParamsWithContext(ctx context.Context) *DeletePortParams {
	var ()
	return &DeletePortParams{

		Context: ctx,
	}
}

// NewDeletePortParamsWithHTTPClient creates a new DeletePortParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePortParamsWithHTTPClient(client *http.Client) *DeletePortParams {
	var ()
	return &DeletePortParams{
		HTTPClient: client,
	}
}

/*DeletePortParams contains all the parameters to send to the API endpoint
for the delete port operation typically these are written to a http.Request
*/
type DeletePortParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Name
	  port name

	*/
	Name string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete port params
func (o *DeletePortParams) WithTimeout(timeout time.Duration) *DeletePortParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete port params
func (o *DeletePortParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete port params
func (o *DeletePortParams) WithContext(ctx context.Context) *DeletePortParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete port params
func (o *DeletePortParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete port params
func (o *DeletePortParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete port params
func (o *DeletePortParams) WithHTTPClient(client *http.Client) *DeletePortParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete port params
func (o *DeletePortParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete port params
func (o *DeletePortParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithName adds the name to the delete port params
func (o *DeletePortParams) WithName(name string) *DeletePortParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the delete port params
func (o *DeletePortParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the delete port params
func (o *DeletePortParams) WithNamespace(namespace string) *DeletePortParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete port params
func (o *DeletePortParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePortParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
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
