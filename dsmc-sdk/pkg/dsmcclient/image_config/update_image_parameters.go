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

	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// NewUpdateImageParams creates a new UpdateImageParams object
// with the default values initialized.
func NewUpdateImageParams() *UpdateImageParams {
	var ()
	return &UpdateImageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateImageParamsWithTimeout creates a new UpdateImageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateImageParamsWithTimeout(timeout time.Duration) *UpdateImageParams {
	var ()
	return &UpdateImageParams{

		timeout: timeout,
	}
}

// NewUpdateImageParamsWithContext creates a new UpdateImageParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateImageParamsWithContext(ctx context.Context) *UpdateImageParams {
	var ()
	return &UpdateImageParams{

		Context: ctx,
	}
}

// NewUpdateImageParamsWithHTTPClient creates a new UpdateImageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateImageParamsWithHTTPClient(client *http.Client) *UpdateImageParams {
	var ()
	return &UpdateImageParams{
		HTTPClient: client,
	}
}

/*UpdateImageParams contains all the parameters to send to the API endpoint
for the update image operation typically these are written to a http.Request
*/
type UpdateImageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsImageRecordUpdate

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update image params
func (o *UpdateImageParams) WithTimeout(timeout time.Duration) *UpdateImageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update image params
func (o *UpdateImageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update image params
func (o *UpdateImageParams) WithContext(ctx context.Context) *UpdateImageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update image params
func (o *UpdateImageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update image params
func (o *UpdateImageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update image params
func (o *UpdateImageParams) WithHTTPClient(client *http.Client) *UpdateImageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update image params
func (o *UpdateImageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update image params
func (o *UpdateImageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update image params
func (o *UpdateImageParams) WithBody(body *dsmcclientmodels.ModelsImageRecordUpdate) *UpdateImageParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update image params
func (o *UpdateImageParams) SetBody(body *dsmcclientmodels.ModelsImageRecordUpdate) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateImageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
