// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

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

// NewGetClientsParams creates a new GetClientsParams object
// with the default values initialized.
func NewGetClientsParams() *GetClientsParams {
	var ()
	return &GetClientsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetClientsParamsWithTimeout creates a new GetClientsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetClientsParamsWithTimeout(timeout time.Duration) *GetClientsParams {
	var ()
	return &GetClientsParams{

		timeout: timeout,
	}
}

// NewGetClientsParamsWithContext creates a new GetClientsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetClientsParamsWithContext(ctx context.Context) *GetClientsParams {
	var ()
	return &GetClientsParams{

		Context: ctx,
	}
}

// NewGetClientsParamsWithHTTPClient creates a new GetClientsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetClientsParamsWithHTTPClient(client *http.Client) *GetClientsParams {
	var ()
	return &GetClientsParams{
		HTTPClient: client,
	}
}

/*GetClientsParams contains all the parameters to send to the API endpoint
for the get clients operation typically these are written to a http.Request
*/
type GetClientsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get clients params
func (o *GetClientsParams) WithTimeout(timeout time.Duration) *GetClientsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get clients params
func (o *GetClientsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get clients params
func (o *GetClientsParams) WithContext(ctx context.Context) *GetClientsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get clients params
func (o *GetClientsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get clients params
func (o *GetClientsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get clients params
func (o *GetClientsParams) WithHTTPClient(client *http.Client) *GetClientsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get clients params
func (o *GetClientsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get clients params
func (o *GetClientsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetClientsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
