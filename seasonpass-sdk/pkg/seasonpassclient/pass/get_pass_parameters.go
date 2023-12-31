// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pass

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

// NewGetPassParams creates a new GetPassParams object
// with the default values initialized.
func NewGetPassParams() *GetPassParams {
	var ()
	return &GetPassParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPassParamsWithTimeout creates a new GetPassParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPassParamsWithTimeout(timeout time.Duration) *GetPassParams {
	var ()
	return &GetPassParams{

		timeout: timeout,
	}
}

// NewGetPassParamsWithContext creates a new GetPassParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPassParamsWithContext(ctx context.Context) *GetPassParams {
	var ()
	return &GetPassParams{

		Context: ctx,
	}
}

// NewGetPassParamsWithHTTPClient creates a new GetPassParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPassParamsWithHTTPClient(client *http.Client) *GetPassParams {
	var ()
	return &GetPassParams{
		HTTPClient: client,
	}
}

/*GetPassParams contains all the parameters to send to the API endpoint
for the get pass operation typically these are written to a http.Request
*/
type GetPassParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code*/
	Code string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get pass params
func (o *GetPassParams) WithTimeout(timeout time.Duration) *GetPassParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get pass params
func (o *GetPassParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get pass params
func (o *GetPassParams) WithContext(ctx context.Context) *GetPassParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get pass params
func (o *GetPassParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get pass params
func (o *GetPassParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get pass params
func (o *GetPassParams) WithHTTPClient(client *http.Client) *GetPassParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get pass params
func (o *GetPassParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get pass params
func (o *GetPassParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCode adds the code to the get pass params
func (o *GetPassParams) WithCode(code string) *GetPassParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the get pass params
func (o *GetPassParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the get pass params
func (o *GetPassParams) WithNamespace(namespace string) *GetPassParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get pass params
func (o *GetPassParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the get pass params
func (o *GetPassParams) WithSeasonID(seasonID string) *GetPassParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the get pass params
func (o *GetPassParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *GetPassParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param code
	if err := r.SetPathParam("code", o.Code); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
