// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewPublicGetMyBackupCodesV4Params creates a new PublicGetMyBackupCodesV4Params object
// with the default values initialized.
func NewPublicGetMyBackupCodesV4Params() *PublicGetMyBackupCodesV4Params {
	var ()
	return &PublicGetMyBackupCodesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMyBackupCodesV4ParamsWithTimeout creates a new PublicGetMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMyBackupCodesV4ParamsWithTimeout(timeout time.Duration) *PublicGetMyBackupCodesV4Params {
	var ()
	return &PublicGetMyBackupCodesV4Params{

		timeout: timeout,
	}
}

// NewPublicGetMyBackupCodesV4ParamsWithContext creates a new PublicGetMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMyBackupCodesV4ParamsWithContext(ctx context.Context) *PublicGetMyBackupCodesV4Params {
	var ()
	return &PublicGetMyBackupCodesV4Params{

		Context: ctx,
	}
}

// NewPublicGetMyBackupCodesV4ParamsWithHTTPClient creates a new PublicGetMyBackupCodesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMyBackupCodesV4ParamsWithHTTPClient(client *http.Client) *PublicGetMyBackupCodesV4Params {
	var ()
	return &PublicGetMyBackupCodesV4Params{
		HTTPClient: client,
	}
}

/*PublicGetMyBackupCodesV4Params contains all the parameters to send to the API endpoint
for the public get my backup codes v4 operation typically these are written to a http.Request
*/
type PublicGetMyBackupCodesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) WithTimeout(timeout time.Duration) *PublicGetMyBackupCodesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) WithContext(ctx context.Context) *PublicGetMyBackupCodesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) WithHTTPClient(client *http.Client) *PublicGetMyBackupCodesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) WithNamespace(namespace string) *PublicGetMyBackupCodesV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get my backup codes v4 params
func (o *PublicGetMyBackupCodesV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMyBackupCodesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
