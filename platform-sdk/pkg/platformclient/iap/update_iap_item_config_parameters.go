// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateIAPItemConfigParams creates a new UpdateIAPItemConfigParams object
// with the default values initialized.
func NewUpdateIAPItemConfigParams() *UpdateIAPItemConfigParams {
	var ()
	return &UpdateIAPItemConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateIAPItemConfigParamsWithTimeout creates a new UpdateIAPItemConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateIAPItemConfigParamsWithTimeout(timeout time.Duration) *UpdateIAPItemConfigParams {
	var ()
	return &UpdateIAPItemConfigParams{

		timeout: timeout,
	}
}

// NewUpdateIAPItemConfigParamsWithContext creates a new UpdateIAPItemConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateIAPItemConfigParamsWithContext(ctx context.Context) *UpdateIAPItemConfigParams {
	var ()
	return &UpdateIAPItemConfigParams{

		Context: ctx,
	}
}

// NewUpdateIAPItemConfigParamsWithHTTPClient creates a new UpdateIAPItemConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateIAPItemConfigParamsWithHTTPClient(client *http.Client) *UpdateIAPItemConfigParams {
	var ()
	return &UpdateIAPItemConfigParams{
		HTTPClient: client,
	}
}

/*UpdateIAPItemConfigParams contains all the parameters to send to the API endpoint
for the update iap item config operation typically these are written to a http.Request
*/
type UpdateIAPItemConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.IAPItemConfigUpdate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update iap item config params
func (o *UpdateIAPItemConfigParams) WithTimeout(timeout time.Duration) *UpdateIAPItemConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update iap item config params
func (o *UpdateIAPItemConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update iap item config params
func (o *UpdateIAPItemConfigParams) WithContext(ctx context.Context) *UpdateIAPItemConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update iap item config params
func (o *UpdateIAPItemConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update iap item config params
func (o *UpdateIAPItemConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update iap item config params
func (o *UpdateIAPItemConfigParams) WithHTTPClient(client *http.Client) *UpdateIAPItemConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update iap item config params
func (o *UpdateIAPItemConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update iap item config params
func (o *UpdateIAPItemConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update iap item config params
func (o *UpdateIAPItemConfigParams) WithBody(body *platformclientmodels.IAPItemConfigUpdate) *UpdateIAPItemConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update iap item config params
func (o *UpdateIAPItemConfigParams) SetBody(body *platformclientmodels.IAPItemConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update iap item config params
func (o *UpdateIAPItemConfigParams) WithNamespace(namespace string) *UpdateIAPItemConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update iap item config params
func (o *UpdateIAPItemConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateIAPItemConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
