// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

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

// NewGetImageLimitParams creates a new GetImageLimitParams object
// with the default values initialized.
func NewGetImageLimitParams() *GetImageLimitParams {
	var ()
	return &GetImageLimitParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetImageLimitParamsWithTimeout creates a new GetImageLimitParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetImageLimitParamsWithTimeout(timeout time.Duration) *GetImageLimitParams {
	var ()
	return &GetImageLimitParams{

		timeout: timeout,
	}
}

// NewGetImageLimitParamsWithContext creates a new GetImageLimitParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetImageLimitParamsWithContext(ctx context.Context) *GetImageLimitParams {
	var ()
	return &GetImageLimitParams{

		Context: ctx,
	}
}

// NewGetImageLimitParamsWithHTTPClient creates a new GetImageLimitParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetImageLimitParamsWithHTTPClient(client *http.Client) *GetImageLimitParams {
	var ()
	return &GetImageLimitParams{
		HTTPClient: client,
	}
}

/*GetImageLimitParams contains all the parameters to send to the API endpoint
for the get image limit operation typically these are written to a http.Request
*/
type GetImageLimitParams struct {

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

// WithTimeout adds the timeout to the get image limit params
func (o *GetImageLimitParams) WithTimeout(timeout time.Duration) *GetImageLimitParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get image limit params
func (o *GetImageLimitParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get image limit params
func (o *GetImageLimitParams) WithContext(ctx context.Context) *GetImageLimitParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get image limit params
func (o *GetImageLimitParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get image limit params
func (o *GetImageLimitParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get image limit params
func (o *GetImageLimitParams) WithHTTPClient(client *http.Client) *GetImageLimitParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get image limit params
func (o *GetImageLimitParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get image limit params
func (o *GetImageLimitParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get image limit params
func (o *GetImageLimitParams) WithNamespace(namespace string) *GetImageLimitParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get image limit params
func (o *GetImageLimitParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetImageLimitParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
