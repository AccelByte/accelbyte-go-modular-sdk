// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

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

// NewPublicGetMyWalletParams creates a new PublicGetMyWalletParams object
// with the default values initialized.
func NewPublicGetMyWalletParams() *PublicGetMyWalletParams {
	var ()
	return &PublicGetMyWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMyWalletParamsWithTimeout creates a new PublicGetMyWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMyWalletParamsWithTimeout(timeout time.Duration) *PublicGetMyWalletParams {
	var ()
	return &PublicGetMyWalletParams{

		timeout: timeout,
	}
}

// NewPublicGetMyWalletParamsWithContext creates a new PublicGetMyWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMyWalletParamsWithContext(ctx context.Context) *PublicGetMyWalletParams {
	var ()
	return &PublicGetMyWalletParams{

		Context: ctx,
	}
}

// NewPublicGetMyWalletParamsWithHTTPClient creates a new PublicGetMyWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMyWalletParamsWithHTTPClient(client *http.Client) *PublicGetMyWalletParams {
	var ()
	return &PublicGetMyWalletParams{
		HTTPClient: client,
	}
}

/*PublicGetMyWalletParams contains all the parameters to send to the API endpoint
for the public get my wallet operation typically these are written to a http.Request
*/
type PublicGetMyWalletParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CurrencyCode*/
	CurrencyCode string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get my wallet params
func (o *PublicGetMyWalletParams) WithTimeout(timeout time.Duration) *PublicGetMyWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get my wallet params
func (o *PublicGetMyWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get my wallet params
func (o *PublicGetMyWalletParams) WithContext(ctx context.Context) *PublicGetMyWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get my wallet params
func (o *PublicGetMyWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get my wallet params
func (o *PublicGetMyWalletParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get my wallet params
func (o *PublicGetMyWalletParams) WithHTTPClient(client *http.Client) *PublicGetMyWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get my wallet params
func (o *PublicGetMyWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get my wallet params
func (o *PublicGetMyWalletParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCurrencyCode adds the currencyCode to the public get my wallet params
func (o *PublicGetMyWalletParams) WithCurrencyCode(currencyCode string) *PublicGetMyWalletParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the public get my wallet params
func (o *PublicGetMyWalletParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the public get my wallet params
func (o *PublicGetMyWalletParams) WithNamespace(namespace string) *PublicGetMyWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get my wallet params
func (o *PublicGetMyWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMyWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param currencyCode
	if err := r.SetPathParam("currencyCode", o.CurrencyCode); err != nil {
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
