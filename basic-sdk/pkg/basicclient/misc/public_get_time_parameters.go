// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package misc

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

// NewPublicGetTimeParams creates a new PublicGetTimeParams object
// with the default values initialized.
func NewPublicGetTimeParams() *PublicGetTimeParams {

	return &PublicGetTimeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetTimeParamsWithTimeout creates a new PublicGetTimeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetTimeParamsWithTimeout(timeout time.Duration) *PublicGetTimeParams {

	return &PublicGetTimeParams{

		timeout: timeout,
	}
}

// NewPublicGetTimeParamsWithContext creates a new PublicGetTimeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetTimeParamsWithContext(ctx context.Context) *PublicGetTimeParams {

	return &PublicGetTimeParams{

		Context: ctx,
	}
}

// NewPublicGetTimeParamsWithHTTPClient creates a new PublicGetTimeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetTimeParamsWithHTTPClient(client *http.Client) *PublicGetTimeParams {

	return &PublicGetTimeParams{
		HTTPClient: client,
	}
}

/*
PublicGetTimeParams contains all the parameters to send to the API endpoint
for the public get time operation typically these are written to a http.Request
*/
type PublicGetTimeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get time params
func (o *PublicGetTimeParams) WithTimeout(timeout time.Duration) *PublicGetTimeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get time params
func (o *PublicGetTimeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get time params
func (o *PublicGetTimeParams) WithContext(ctx context.Context) *PublicGetTimeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get time params
func (o *PublicGetTimeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get time params
func (o *PublicGetTimeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get time params
func (o *PublicGetTimeParams) WithHTTPClient(client *http.Client) *PublicGetTimeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get time params
func (o *PublicGetTimeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get time params
func (o *PublicGetTimeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetTimeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
