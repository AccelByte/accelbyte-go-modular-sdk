// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_profile

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

// NewGetMyPrivateCustomAttributesInfoParams creates a new GetMyPrivateCustomAttributesInfoParams object
// with the default values initialized.
func NewGetMyPrivateCustomAttributesInfoParams() *GetMyPrivateCustomAttributesInfoParams {
	var ()
	return &GetMyPrivateCustomAttributesInfoParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetMyPrivateCustomAttributesInfoParamsWithTimeout creates a new GetMyPrivateCustomAttributesInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetMyPrivateCustomAttributesInfoParamsWithTimeout(timeout time.Duration) *GetMyPrivateCustomAttributesInfoParams {
	var ()
	return &GetMyPrivateCustomAttributesInfoParams{

		timeout: timeout,
	}
}

// NewGetMyPrivateCustomAttributesInfoParamsWithContext creates a new GetMyPrivateCustomAttributesInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetMyPrivateCustomAttributesInfoParamsWithContext(ctx context.Context) *GetMyPrivateCustomAttributesInfoParams {
	var ()
	return &GetMyPrivateCustomAttributesInfoParams{

		Context: ctx,
	}
}

// NewGetMyPrivateCustomAttributesInfoParamsWithHTTPClient creates a new GetMyPrivateCustomAttributesInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetMyPrivateCustomAttributesInfoParamsWithHTTPClient(client *http.Client) *GetMyPrivateCustomAttributesInfoParams {
	var ()
	return &GetMyPrivateCustomAttributesInfoParams{
		HTTPClient: client,
	}
}

/*GetMyPrivateCustomAttributesInfoParams contains all the parameters to send to the API endpoint
for the get my private custom attributes info operation typically these are written to a http.Request
*/
type GetMyPrivateCustomAttributesInfoParams struct {

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

// WithTimeout adds the timeout to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) WithTimeout(timeout time.Duration) *GetMyPrivateCustomAttributesInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) WithContext(ctx context.Context) *GetMyPrivateCustomAttributesInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) WithHTTPClient(client *http.Client) *GetMyPrivateCustomAttributesInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) WithNamespace(namespace string) *GetMyPrivateCustomAttributesInfoParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get my private custom attributes info params
func (o *GetMyPrivateCustomAttributesInfoParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetMyPrivateCustomAttributesInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
