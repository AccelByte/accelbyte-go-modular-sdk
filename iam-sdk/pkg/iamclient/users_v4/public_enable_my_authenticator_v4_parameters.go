// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users_v4

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewPublicEnableMyAuthenticatorV4Params creates a new PublicEnableMyAuthenticatorV4Params object
// with the default values initialized.
func NewPublicEnableMyAuthenticatorV4Params() *PublicEnableMyAuthenticatorV4Params {
	var ()
	return &PublicEnableMyAuthenticatorV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicEnableMyAuthenticatorV4ParamsWithTimeout creates a new PublicEnableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicEnableMyAuthenticatorV4ParamsWithTimeout(timeout time.Duration) *PublicEnableMyAuthenticatorV4Params {
	var ()
	return &PublicEnableMyAuthenticatorV4Params{

		timeout: timeout,
	}
}

// NewPublicEnableMyAuthenticatorV4ParamsWithContext creates a new PublicEnableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicEnableMyAuthenticatorV4ParamsWithContext(ctx context.Context) *PublicEnableMyAuthenticatorV4Params {
	var ()
	return &PublicEnableMyAuthenticatorV4Params{

		Context: ctx,
	}
}

// NewPublicEnableMyAuthenticatorV4ParamsWithHTTPClient creates a new PublicEnableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicEnableMyAuthenticatorV4ParamsWithHTTPClient(client *http.Client) *PublicEnableMyAuthenticatorV4Params {
	var ()
	return &PublicEnableMyAuthenticatorV4Params{
		HTTPClient: client,
	}
}

/*
PublicEnableMyAuthenticatorV4Params contains all the parameters to send to the API endpoint
for the public enable my authenticator v4 operation typically these are written to a http.Request
*/
type PublicEnableMyAuthenticatorV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code
	  code

	*/
	Code *string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) WithTimeout(timeout time.Duration) *PublicEnableMyAuthenticatorV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) WithContext(ctx context.Context) *PublicEnableMyAuthenticatorV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) WithHTTPClient(client *http.Client) *PublicEnableMyAuthenticatorV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCode adds the code to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) WithCode(code *string) *PublicEnableMyAuthenticatorV4Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) SetCode(code *string) {
	o.Code = code
}

// WithNamespace adds the namespace to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) WithNamespace(namespace string) *PublicEnableMyAuthenticatorV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public enable my authenticator v4 params
func (o *PublicEnableMyAuthenticatorV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicEnableMyAuthenticatorV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Code != nil {

		// form param code
		var frCode string
		if o.Code != nil {
			frCode = *o.Code
		}
		fCode := frCode
		if fCode != "" {
			if err := r.SetFormParam("code", fCode); err != nil {
				return err
			}
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
