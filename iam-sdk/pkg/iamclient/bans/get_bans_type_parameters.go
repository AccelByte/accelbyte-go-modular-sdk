// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package bans

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

// NewGetBansTypeParams creates a new GetBansTypeParams object
// with the default values initialized.
func NewGetBansTypeParams() *GetBansTypeParams {
	var ()
	return &GetBansTypeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetBansTypeParamsWithTimeout creates a new GetBansTypeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetBansTypeParamsWithTimeout(timeout time.Duration) *GetBansTypeParams {
	var ()
	return &GetBansTypeParams{

		timeout: timeout,
	}
}

// NewGetBansTypeParamsWithContext creates a new GetBansTypeParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetBansTypeParamsWithContext(ctx context.Context) *GetBansTypeParams {
	var ()
	return &GetBansTypeParams{

		Context: ctx,
	}
}

// NewGetBansTypeParamsWithHTTPClient creates a new GetBansTypeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetBansTypeParamsWithHTTPClient(client *http.Client) *GetBansTypeParams {
	var ()
	return &GetBansTypeParams{
		HTTPClient: client,
	}
}

/*GetBansTypeParams contains all the parameters to send to the API endpoint
for the get bans type operation typically these are written to a http.Request
*/
type GetBansTypeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get bans type params
func (o *GetBansTypeParams) WithTimeout(timeout time.Duration) *GetBansTypeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get bans type params
func (o *GetBansTypeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get bans type params
func (o *GetBansTypeParams) WithContext(ctx context.Context) *GetBansTypeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get bans type params
func (o *GetBansTypeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get bans type params
func (o *GetBansTypeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get bans type params
func (o *GetBansTypeParams) WithHTTPClient(client *http.Client) *GetBansTypeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get bans type params
func (o *GetBansTypeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get bans type params
func (o *GetBansTypeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetBansTypeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
