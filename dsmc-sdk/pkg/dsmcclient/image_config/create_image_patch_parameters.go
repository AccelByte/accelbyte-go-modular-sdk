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

// NewCreateImagePatchParams creates a new CreateImagePatchParams object
// with the default values initialized.
func NewCreateImagePatchParams() *CreateImagePatchParams {
	var ()
	return &CreateImagePatchParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateImagePatchParamsWithTimeout creates a new CreateImagePatchParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateImagePatchParamsWithTimeout(timeout time.Duration) *CreateImagePatchParams {
	var ()
	return &CreateImagePatchParams{

		timeout: timeout,
	}
}

// NewCreateImagePatchParamsWithContext creates a new CreateImagePatchParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateImagePatchParamsWithContext(ctx context.Context) *CreateImagePatchParams {
	var ()
	return &CreateImagePatchParams{

		Context: ctx,
	}
}

// NewCreateImagePatchParamsWithHTTPClient creates a new CreateImagePatchParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateImagePatchParamsWithHTTPClient(client *http.Client) *CreateImagePatchParams {
	var ()
	return &CreateImagePatchParams{
		HTTPClient: client,
	}
}

/*CreateImagePatchParams contains all the parameters to send to the API endpoint
for the create image patch operation typically these are written to a http.Request
*/
type CreateImagePatchParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsCreateImagePatchRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create image patch params
func (o *CreateImagePatchParams) WithTimeout(timeout time.Duration) *CreateImagePatchParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create image patch params
func (o *CreateImagePatchParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create image patch params
func (o *CreateImagePatchParams) WithContext(ctx context.Context) *CreateImagePatchParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create image patch params
func (o *CreateImagePatchParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create image patch params
func (o *CreateImagePatchParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create image patch params
func (o *CreateImagePatchParams) WithHTTPClient(client *http.Client) *CreateImagePatchParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create image patch params
func (o *CreateImagePatchParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create image patch params
func (o *CreateImagePatchParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create image patch params
func (o *CreateImagePatchParams) WithBody(body *dsmcclientmodels.ModelsCreateImagePatchRequest) *CreateImagePatchParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create image patch params
func (o *CreateImagePatchParams) SetBody(body *dsmcclientmodels.ModelsCreateImagePatchRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *CreateImagePatchParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
