// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package account

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

// NewAccountLinkTokenGetParams creates a new AccountLinkTokenGetParams object
// with the default values initialized.
func NewAccountLinkTokenGetParams() *AccountLinkTokenGetParams {
	var ()
	return &AccountLinkTokenGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAccountLinkTokenGetParamsWithTimeout creates a new AccountLinkTokenGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAccountLinkTokenGetParamsWithTimeout(timeout time.Duration) *AccountLinkTokenGetParams {
	var ()
	return &AccountLinkTokenGetParams{

		timeout: timeout,
	}
}

// NewAccountLinkTokenGetParamsWithContext creates a new AccountLinkTokenGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewAccountLinkTokenGetParamsWithContext(ctx context.Context) *AccountLinkTokenGetParams {
	var ()
	return &AccountLinkTokenGetParams{

		Context: ctx,
	}
}

// NewAccountLinkTokenGetParamsWithHTTPClient creates a new AccountLinkTokenGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAccountLinkTokenGetParamsWithHTTPClient(client *http.Client) *AccountLinkTokenGetParams {
	var ()
	return &AccountLinkTokenGetParams{
		HTTPClient: client,
	}
}

/*AccountLinkTokenGetParams contains all the parameters to send to the API endpoint
for the account link token get operation typically these are written to a http.Request
*/
type AccountLinkTokenGetParams struct {

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

// WithTimeout adds the timeout to the account link token get params
func (o *AccountLinkTokenGetParams) WithTimeout(timeout time.Duration) *AccountLinkTokenGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the account link token get params
func (o *AccountLinkTokenGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the account link token get params
func (o *AccountLinkTokenGetParams) WithContext(ctx context.Context) *AccountLinkTokenGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the account link token get params
func (o *AccountLinkTokenGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the account link token get params
func (o *AccountLinkTokenGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the account link token get params
func (o *AccountLinkTokenGetParams) WithHTTPClient(client *http.Client) *AccountLinkTokenGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the account link token get params
func (o *AccountLinkTokenGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the account link token get params
func (o *AccountLinkTokenGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the account link token get params
func (o *AccountLinkTokenGetParams) WithNamespace(namespace string) *AccountLinkTokenGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the account link token get params
func (o *AccountLinkTokenGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AccountLinkTokenGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
