// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package images

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

// NewImageGetParams creates a new ImageGetParams object
// with the default values initialized.
func NewImageGetParams() *ImageGetParams {
	var ()
	return &ImageGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImageGetParamsWithTimeout creates a new ImageGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImageGetParamsWithTimeout(timeout time.Duration) *ImageGetParams {
	var ()
	return &ImageGetParams{

		timeout: timeout,
	}
}

// NewImageGetParamsWithContext creates a new ImageGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewImageGetParamsWithContext(ctx context.Context) *ImageGetParams {
	var ()
	return &ImageGetParams{

		Context: ctx,
	}
}

// NewImageGetParamsWithHTTPClient creates a new ImageGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImageGetParamsWithHTTPClient(client *http.Client) *ImageGetParams {
	var ()
	return &ImageGetParams{
		HTTPClient: client,
	}
}

/*ImageGetParams contains all the parameters to send to the API endpoint
for the image get operation typically these are written to a http.Request
*/
type ImageGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ImageID
	  the id of the image

	*/
	ImageID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the image get params
func (o *ImageGetParams) WithTimeout(timeout time.Duration) *ImageGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the image get params
func (o *ImageGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the image get params
func (o *ImageGetParams) WithContext(ctx context.Context) *ImageGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the image get params
func (o *ImageGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the image get params
func (o *ImageGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the image get params
func (o *ImageGetParams) WithHTTPClient(client *http.Client) *ImageGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the image get params
func (o *ImageGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the image get params
func (o *ImageGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithImageID adds the imageID to the image get params
func (o *ImageGetParams) WithImageID(imageID string) *ImageGetParams {
	o.SetImageID(imageID)
	return o
}

// SetImageID adds the imageId to the image get params
func (o *ImageGetParams) SetImageID(imageID string) {
	o.ImageID = imageID
}

// WithNamespace adds the namespace to the image get params
func (o *ImageGetParams) WithNamespace(namespace string) *ImageGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the image get params
func (o *ImageGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImageGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param imageID
	if err := r.SetPathParam("imageID", o.ImageID); err != nil {
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
