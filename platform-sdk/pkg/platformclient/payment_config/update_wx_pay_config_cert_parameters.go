// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_config

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

// NewUpdateWxPayConfigCertParams creates a new UpdateWxPayConfigCertParams object
// with the default values initialized.
func NewUpdateWxPayConfigCertParams() *UpdateWxPayConfigCertParams {
	var ()
	return &UpdateWxPayConfigCertParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateWxPayConfigCertParamsWithTimeout creates a new UpdateWxPayConfigCertParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateWxPayConfigCertParamsWithTimeout(timeout time.Duration) *UpdateWxPayConfigCertParams {
	var ()
	return &UpdateWxPayConfigCertParams{

		timeout: timeout,
	}
}

// NewUpdateWxPayConfigCertParamsWithContext creates a new UpdateWxPayConfigCertParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateWxPayConfigCertParamsWithContext(ctx context.Context) *UpdateWxPayConfigCertParams {
	var ()
	return &UpdateWxPayConfigCertParams{

		Context: ctx,
	}
}

// NewUpdateWxPayConfigCertParamsWithHTTPClient creates a new UpdateWxPayConfigCertParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateWxPayConfigCertParamsWithHTTPClient(client *http.Client) *UpdateWxPayConfigCertParams {
	var ()
	return &UpdateWxPayConfigCertParams{
		HTTPClient: client,
	}
}

/*UpdateWxPayConfigCertParams contains all the parameters to send to the API endpoint
for the update wx pay config cert operation typically these are written to a http.Request
*/
type UpdateWxPayConfigCertParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File*/
	File runtime.NamedReadCloser
	/*ID*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) WithTimeout(timeout time.Duration) *UpdateWxPayConfigCertParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) WithContext(ctx context.Context) *UpdateWxPayConfigCertParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) WithHTTPClient(client *http.Client) *UpdateWxPayConfigCertParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFile adds the file to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) WithFile(file runtime.NamedReadCloser) *UpdateWxPayConfigCertParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithID adds the idVar to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) WithID(idVar string) *UpdateWxPayConfigCertParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the update wx pay config cert params
func (o *UpdateWxPayConfigCertParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateWxPayConfigCertParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.File != nil {

		if o.File != nil {

			// form file param file
			if err := r.SetFileParam("file", o.File); err != nil {
				return err
			}

		}

	}

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
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
