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
	"github.com/go-openapi/swag"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateAdyenConfigParams creates a new UpdateAdyenConfigParams object
// with the default values initialized.
func NewUpdateAdyenConfigParams() *UpdateAdyenConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateAdyenConfigParams{
		Sandbox:  &sandboxDefault,
		Validate: &validateDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateAdyenConfigParamsWithTimeout creates a new UpdateAdyenConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateAdyenConfigParamsWithTimeout(timeout time.Duration) *UpdateAdyenConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateAdyenConfigParams{
		Sandbox:  &sandboxDefault,
		Validate: &validateDefault,

		timeout: timeout,
	}
}

// NewUpdateAdyenConfigParamsWithContext creates a new UpdateAdyenConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateAdyenConfigParamsWithContext(ctx context.Context) *UpdateAdyenConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateAdyenConfigParams{
		Sandbox:  &sandboxDefault,
		Validate: &validateDefault,

		Context: ctx,
	}
}

// NewUpdateAdyenConfigParamsWithHTTPClient creates a new UpdateAdyenConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateAdyenConfigParamsWithHTTPClient(client *http.Client) *UpdateAdyenConfigParams {
	var (
		sandboxDefault  = bool(true)
		validateDefault = bool(false)
	)
	return &UpdateAdyenConfigParams{
		Sandbox:    &sandboxDefault,
		Validate:   &validateDefault,
		HTTPClient: client,
	}
}

/*UpdateAdyenConfigParams contains all the parameters to send to the API endpoint
for the update adyen config operation typically these are written to a http.Request
*/
type UpdateAdyenConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.AdyenConfig
	/*ID*/
	ID string
	/*Sandbox*/
	Sandbox *bool
	/*Validate*/
	Validate *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update adyen config params
func (o *UpdateAdyenConfigParams) WithTimeout(timeout time.Duration) *UpdateAdyenConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update adyen config params
func (o *UpdateAdyenConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update adyen config params
func (o *UpdateAdyenConfigParams) WithContext(ctx context.Context) *UpdateAdyenConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update adyen config params
func (o *UpdateAdyenConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update adyen config params
func (o *UpdateAdyenConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update adyen config params
func (o *UpdateAdyenConfigParams) WithHTTPClient(client *http.Client) *UpdateAdyenConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update adyen config params
func (o *UpdateAdyenConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update adyen config params
func (o *UpdateAdyenConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update adyen config params
func (o *UpdateAdyenConfigParams) WithBody(body *platformclientmodels.AdyenConfig) *UpdateAdyenConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update adyen config params
func (o *UpdateAdyenConfigParams) SetBody(body *platformclientmodels.AdyenConfig) {
	o.Body = body
}

// WithID adds the idVar to the update adyen config params
func (o *UpdateAdyenConfigParams) WithID(idVar string) *UpdateAdyenConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the update adyen config params
func (o *UpdateAdyenConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WithSandbox adds the sandbox to the update adyen config params
func (o *UpdateAdyenConfigParams) WithSandbox(sandbox *bool) *UpdateAdyenConfigParams {
	o.SetSandbox(sandbox)
	return o
}

// SetSandbox adds the sandbox to the update adyen config params
func (o *UpdateAdyenConfigParams) SetSandbox(sandbox *bool) {
	o.Sandbox = sandbox
}

// WithValidate adds the validate to the update adyen config params
func (o *UpdateAdyenConfigParams) WithValidate(validate *bool) *UpdateAdyenConfigParams {
	o.SetValidate(validate)
	return o
}

// SetValidate adds the validate to the update adyen config params
func (o *UpdateAdyenConfigParams) SetValidate(validate *bool) {
	o.Validate = validate
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateAdyenConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
	}

	if o.Sandbox != nil {

		// query param sandbox
		var qrSandbox bool
		if o.Sandbox != nil {
			qrSandbox = *o.Sandbox
		}
		qSandbox := swag.FormatBool(qrSandbox)
		if qSandbox != "" {
			if err := r.SetQueryParam("sandbox", qSandbox); err != nil {
				return err
			}
		}

	}

	if o.Validate != nil {

		// query param validate
		var qrValidate bool
		if o.Validate != nil {
			qrValidate = *o.Validate
		}
		qValidate := swag.FormatBool(qrValidate)
		if qValidate != "" {
			if err := r.SetQueryParam("validate", qValidate); err != nil {
				return err
			}
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
