// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

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

// NewDeleteLocalServerParams creates a new DeleteLocalServerParams object
// with the default values initialized.
func NewDeleteLocalServerParams() *DeleteLocalServerParams {
	var ()
	return &DeleteLocalServerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteLocalServerParamsWithTimeout creates a new DeleteLocalServerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteLocalServerParamsWithTimeout(timeout time.Duration) *DeleteLocalServerParams {
	var ()
	return &DeleteLocalServerParams{

		timeout: timeout,
	}
}

// NewDeleteLocalServerParamsWithContext creates a new DeleteLocalServerParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteLocalServerParamsWithContext(ctx context.Context) *DeleteLocalServerParams {
	var ()
	return &DeleteLocalServerParams{

		Context: ctx,
	}
}

// NewDeleteLocalServerParamsWithHTTPClient creates a new DeleteLocalServerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteLocalServerParamsWithHTTPClient(client *http.Client) *DeleteLocalServerParams {
	var ()
	return &DeleteLocalServerParams{
		HTTPClient: client,
	}
}

/*DeleteLocalServerParams contains all the parameters to send to the API endpoint
for the delete local server operation typically these are written to a http.Request
*/
type DeleteLocalServerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Name
	  name of the DS

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

// WithTimeout adds the timeout to the delete local server params
func (o *DeleteLocalServerParams) WithTimeout(timeout time.Duration) *DeleteLocalServerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete local server params
func (o *DeleteLocalServerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete local server params
func (o *DeleteLocalServerParams) WithContext(ctx context.Context) *DeleteLocalServerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete local server params
func (o *DeleteLocalServerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete local server params
func (o *DeleteLocalServerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete local server params
func (o *DeleteLocalServerParams) WithHTTPClient(client *http.Client) *DeleteLocalServerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete local server params
func (o *DeleteLocalServerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete local server params
func (o *DeleteLocalServerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithName adds the name to the delete local server params
func (o *DeleteLocalServerParams) WithName(name string) *DeleteLocalServerParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the delete local server params
func (o *DeleteLocalServerParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the delete local server params
func (o *DeleteLocalServerParams) WithNamespace(namespace string) *DeleteLocalServerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete local server params
func (o *DeleteLocalServerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteLocalServerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
