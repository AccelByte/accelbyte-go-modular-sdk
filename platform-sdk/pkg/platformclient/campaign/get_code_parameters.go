// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

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
)

// NewGetCodeParams creates a new GetCodeParams object
// with the default values initialized.
func NewGetCodeParams() *GetCodeParams {
	var (
		redeemableDefault = bool(false)
	)
	return &GetCodeParams{
		Redeemable: &redeemableDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCodeParamsWithTimeout creates a new GetCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCodeParamsWithTimeout(timeout time.Duration) *GetCodeParams {
	var (
		redeemableDefault = bool(false)
	)
	return &GetCodeParams{
		Redeemable: &redeemableDefault,

		timeout: timeout,
	}
}

// NewGetCodeParamsWithContext creates a new GetCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetCodeParamsWithContext(ctx context.Context) *GetCodeParams {
	var (
		redeemableDefault = bool(false)
	)
	return &GetCodeParams{
		Redeemable: &redeemableDefault,

		Context: ctx,
	}
}

// NewGetCodeParamsWithHTTPClient creates a new GetCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCodeParamsWithHTTPClient(client *http.Client) *GetCodeParams {
	var (
		redeemableDefault = bool(false)
	)
	return &GetCodeParams{
		Redeemable: &redeemableDefault,
		HTTPClient: client,
	}
}

/*GetCodeParams contains all the parameters to send to the API endpoint
for the get code operation typically these are written to a http.Request
*/
type GetCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code*/
	Code string
	/*Namespace*/
	Namespace string
	/*Redeemable*/
	Redeemable *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get code params
func (o *GetCodeParams) WithTimeout(timeout time.Duration) *GetCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get code params
func (o *GetCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get code params
func (o *GetCodeParams) WithContext(ctx context.Context) *GetCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get code params
func (o *GetCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get code params
func (o *GetCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get code params
func (o *GetCodeParams) WithHTTPClient(client *http.Client) *GetCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get code params
func (o *GetCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get code params
func (o *GetCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCode adds the code to the get code params
func (o *GetCodeParams) WithCode(code string) *GetCodeParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the get code params
func (o *GetCodeParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the get code params
func (o *GetCodeParams) WithNamespace(namespace string) *GetCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get code params
func (o *GetCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRedeemable adds the redeemable to the get code params
func (o *GetCodeParams) WithRedeemable(redeemable *bool) *GetCodeParams {
	o.SetRedeemable(redeemable)
	return o
}

// SetRedeemable adds the redeemable to the get code params
func (o *GetCodeParams) SetRedeemable(redeemable *bool) {
	o.Redeemable = redeemable
}

// WriteToRequest writes these params to a swagger request
func (o *GetCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param code
	if err := r.SetPathParam("code", o.Code); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Redeemable != nil {

		// query param redeemable
		var qrRedeemable bool
		if o.Redeemable != nil {
			qrRedeemable = *o.Redeemable
		}
		qRedeemable := swag.FormatBool(qrRedeemable)
		if qRedeemable != "" {
			if err := r.SetQueryParam("redeemable", qRedeemable); err != nil {
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
