// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package namespace

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

// NewPublicGetNamespacePublisherParams creates a new PublicGetNamespacePublisherParams object
// with the default values initialized.
func NewPublicGetNamespacePublisherParams() *PublicGetNamespacePublisherParams {
	var ()
	return &PublicGetNamespacePublisherParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetNamespacePublisherParamsWithTimeout creates a new PublicGetNamespacePublisherParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetNamespacePublisherParamsWithTimeout(timeout time.Duration) *PublicGetNamespacePublisherParams {
	var ()
	return &PublicGetNamespacePublisherParams{

		timeout: timeout,
	}
}

// NewPublicGetNamespacePublisherParamsWithContext creates a new PublicGetNamespacePublisherParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetNamespacePublisherParamsWithContext(ctx context.Context) *PublicGetNamespacePublisherParams {
	var ()
	return &PublicGetNamespacePublisherParams{

		Context: ctx,
	}
}

// NewPublicGetNamespacePublisherParamsWithHTTPClient creates a new PublicGetNamespacePublisherParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetNamespacePublisherParamsWithHTTPClient(client *http.Client) *PublicGetNamespacePublisherParams {
	var ()
	return &PublicGetNamespacePublisherParams{
		HTTPClient: client,
	}
}

/*PublicGetNamespacePublisherParams contains all the parameters to send to the API endpoint
for the public get namespace publisher operation typically these are written to a http.Request
*/
type PublicGetNamespacePublisherParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) WithTimeout(timeout time.Duration) *PublicGetNamespacePublisherParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) WithContext(ctx context.Context) *PublicGetNamespacePublisherParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) WithHTTPClient(client *http.Client) *PublicGetNamespacePublisherParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) WithNamespace(namespace string) *PublicGetNamespacePublisherParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get namespace publisher params
func (o *PublicGetNamespacePublisherParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetNamespacePublisherParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
