// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

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

// NewGetEntitlementParams creates a new GetEntitlementParams object
// with the default values initialized.
func NewGetEntitlementParams() *GetEntitlementParams {
	var ()
	return &GetEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEntitlementParamsWithTimeout creates a new GetEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEntitlementParamsWithTimeout(timeout time.Duration) *GetEntitlementParams {
	var ()
	return &GetEntitlementParams{

		timeout: timeout,
	}
}

// NewGetEntitlementParamsWithContext creates a new GetEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEntitlementParamsWithContext(ctx context.Context) *GetEntitlementParams {
	var ()
	return &GetEntitlementParams{

		Context: ctx,
	}
}

// NewGetEntitlementParamsWithHTTPClient creates a new GetEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEntitlementParamsWithHTTPClient(client *http.Client) *GetEntitlementParams {
	var ()
	return &GetEntitlementParams{
		HTTPClient: client,
	}
}

/*GetEntitlementParams contains all the parameters to send to the API endpoint
for the get entitlement operation typically these are written to a http.Request
*/
type GetEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EntitlementID*/
	EntitlementID string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get entitlement params
func (o *GetEntitlementParams) WithTimeout(timeout time.Duration) *GetEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get entitlement params
func (o *GetEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get entitlement params
func (o *GetEntitlementParams) WithContext(ctx context.Context) *GetEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get entitlement params
func (o *GetEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get entitlement params
func (o *GetEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get entitlement params
func (o *GetEntitlementParams) WithHTTPClient(client *http.Client) *GetEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get entitlement params
func (o *GetEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get entitlement params
func (o *GetEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithEntitlementID adds the entitlementID to the get entitlement params
func (o *GetEntitlementParams) WithEntitlementID(entitlementID string) *GetEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the get entitlement params
func (o *GetEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the get entitlement params
func (o *GetEntitlementParams) WithNamespace(namespace string) *GetEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get entitlement params
func (o *GetEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param entitlementId
	if err := r.SetPathParam("entitlementId", o.EntitlementID); err != nil {
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
