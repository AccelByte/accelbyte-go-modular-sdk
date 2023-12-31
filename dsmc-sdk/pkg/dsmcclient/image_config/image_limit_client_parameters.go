// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package image_config

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

// NewImageLimitClientParams creates a new ImageLimitClientParams object
// with the default values initialized.
func NewImageLimitClientParams() *ImageLimitClientParams {
	var ()
	return &ImageLimitClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImageLimitClientParamsWithTimeout creates a new ImageLimitClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImageLimitClientParamsWithTimeout(timeout time.Duration) *ImageLimitClientParams {
	var ()
	return &ImageLimitClientParams{

		timeout: timeout,
	}
}

// NewImageLimitClientParamsWithContext creates a new ImageLimitClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewImageLimitClientParamsWithContext(ctx context.Context) *ImageLimitClientParams {
	var ()
	return &ImageLimitClientParams{

		Context: ctx,
	}
}

// NewImageLimitClientParamsWithHTTPClient creates a new ImageLimitClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImageLimitClientParamsWithHTTPClient(client *http.Client) *ImageLimitClientParams {
	var ()
	return &ImageLimitClientParams{
		HTTPClient: client,
	}
}

/*ImageLimitClientParams contains all the parameters to send to the API endpoint
for the image limit client operation typically these are written to a http.Request
*/
type ImageLimitClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the image limit client params
func (o *ImageLimitClientParams) WithTimeout(timeout time.Duration) *ImageLimitClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the image limit client params
func (o *ImageLimitClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the image limit client params
func (o *ImageLimitClientParams) WithContext(ctx context.Context) *ImageLimitClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the image limit client params
func (o *ImageLimitClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the image limit client params
func (o *ImageLimitClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the image limit client params
func (o *ImageLimitClientParams) WithHTTPClient(client *http.Client) *ImageLimitClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the image limit client params
func (o *ImageLimitClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the image limit client params
func (o *ImageLimitClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the image limit client params
func (o *ImageLimitClientParams) WithNamespace(namespace string) *ImageLimitClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the image limit client params
func (o *ImageLimitClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImageLimitClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
