// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package match_pools

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewMatchPoolDetailsParams creates a new MatchPoolDetailsParams object
// with the default values initialized.
func NewMatchPoolDetailsParams() *MatchPoolDetailsParams {
	var ()
	return &MatchPoolDetailsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewMatchPoolDetailsParamsWithTimeout creates a new MatchPoolDetailsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewMatchPoolDetailsParamsWithTimeout(timeout time.Duration) *MatchPoolDetailsParams {
	var ()
	return &MatchPoolDetailsParams{

		timeout: timeout,
	}
}

// NewMatchPoolDetailsParamsWithContext creates a new MatchPoolDetailsParams object
// with the default values initialized, and the ability to set a context for a request
func NewMatchPoolDetailsParamsWithContext(ctx context.Context) *MatchPoolDetailsParams {
	var ()
	return &MatchPoolDetailsParams{

		Context: ctx,
	}
}

// NewMatchPoolDetailsParamsWithHTTPClient creates a new MatchPoolDetailsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewMatchPoolDetailsParamsWithHTTPClient(client *http.Client) *MatchPoolDetailsParams {
	var ()
	return &MatchPoolDetailsParams{
		HTTPClient: client,
	}
}

/*
MatchPoolDetailsParams contains all the parameters to send to the API endpoint
for the match pool details operation typically these are written to a http.Request
*/
type MatchPoolDetailsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Pool
	  Name of the match pool

	*/
	Pool string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the match pool details params
func (o *MatchPoolDetailsParams) WithTimeout(timeout time.Duration) *MatchPoolDetailsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the match pool details params
func (o *MatchPoolDetailsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the match pool details params
func (o *MatchPoolDetailsParams) WithContext(ctx context.Context) *MatchPoolDetailsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the match pool details params
func (o *MatchPoolDetailsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the match pool details params
func (o *MatchPoolDetailsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the match pool details params
func (o *MatchPoolDetailsParams) WithHTTPClient(client *http.Client) *MatchPoolDetailsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the match pool details params
func (o *MatchPoolDetailsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the match pool details params
func (o *MatchPoolDetailsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the match pool details params
func (o *MatchPoolDetailsParams) WithNamespace(namespace string) *MatchPoolDetailsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the match pool details params
func (o *MatchPoolDetailsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPool adds the pool to the match pool details params
func (o *MatchPoolDetailsParams) WithPool(pool string) *MatchPoolDetailsParams {
	o.SetPool(pool)
	return o
}

// SetPool adds the pool to the match pool details params
func (o *MatchPoolDetailsParams) SetPool(pool string) {
	o.Pool = pool
}

// WriteToRequest writes these params to a swagger request
func (o *MatchPoolDetailsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param pool
	if err := r.SetPathParam("pool", o.Pool); err != nil {
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
