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

// NewUpdateAppleIAPConfigParams creates a new UpdateAppleIAPConfigParams object
// with the default values initialized.
func NewUpdateAppleIAPConfigParams() *UpdateAppleIAPConfigParams {
	var ()
	return &UpdateAppleIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateAppleIAPConfigParamsWithTimeout creates a new UpdateAppleIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateAppleIAPConfigParamsWithTimeout(timeout time.Duration) *UpdateAppleIAPConfigParams {
	var ()
	return &UpdateAppleIAPConfigParams{

		timeout: timeout,
	}
}

// NewUpdateAppleIAPConfigParamsWithContext creates a new UpdateAppleIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateAppleIAPConfigParamsWithContext(ctx context.Context) *UpdateAppleIAPConfigParams {
	var ()
	return &UpdateAppleIAPConfigParams{

		Context: ctx,
	}
}

// NewUpdateAppleIAPConfigParamsWithHTTPClient creates a new UpdateAppleIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateAppleIAPConfigParamsWithHTTPClient(client *http.Client) *UpdateAppleIAPConfigParams {
	var ()
	return &UpdateAppleIAPConfigParams{
		HTTPClient: client,
	}
}

/*UpdateAppleIAPConfigParams contains all the parameters to send to the API endpoint
for the update apple iap config operation typically these are written to a http.Request
*/
type UpdateAppleIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.AppleIAPConfigRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) WithTimeout(timeout time.Duration) *UpdateAppleIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) WithContext(ctx context.Context) *UpdateAppleIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) WithHTTPClient(client *http.Client) *UpdateAppleIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) WithBody(body *platformclientmodels.AppleIAPConfigRequest) *UpdateAppleIAPConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) SetBody(body *platformclientmodels.AppleIAPConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) WithNamespace(namespace string) *UpdateAppleIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update apple iap config params
func (o *UpdateAppleIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateAppleIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
