// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package o_auth

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

// NewVerifyTokenParams creates a new VerifyTokenParams object
// with the default values initialized.
func NewVerifyTokenParams() *VerifyTokenParams {
	var ()
	return &VerifyTokenParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewVerifyTokenParamsWithTimeout creates a new VerifyTokenParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewVerifyTokenParamsWithTimeout(timeout time.Duration) *VerifyTokenParams {
	var ()
	return &VerifyTokenParams{

		timeout: timeout,
	}
}

// NewVerifyTokenParamsWithContext creates a new VerifyTokenParams object
// with the default values initialized, and the ability to set a context for a request
func NewVerifyTokenParamsWithContext(ctx context.Context) *VerifyTokenParams {
	var ()
	return &VerifyTokenParams{

		Context: ctx,
	}
}

// NewVerifyTokenParamsWithHTTPClient creates a new VerifyTokenParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewVerifyTokenParamsWithHTTPClient(client *http.Client) *VerifyTokenParams {
	var ()
	return &VerifyTokenParams{
		HTTPClient: client,
	}
}

/*VerifyTokenParams contains all the parameters to send to the API endpoint
for the verify token operation typically these are written to a http.Request
*/
type VerifyTokenParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Token
	  Token to be verified

	*/
	Token string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the verify token params
func (o *VerifyTokenParams) WithTimeout(timeout time.Duration) *VerifyTokenParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the verify token params
func (o *VerifyTokenParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the verify token params
func (o *VerifyTokenParams) WithContext(ctx context.Context) *VerifyTokenParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the verify token params
func (o *VerifyTokenParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the verify token params
func (o *VerifyTokenParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the verify token params
func (o *VerifyTokenParams) WithHTTPClient(client *http.Client) *VerifyTokenParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the verify token params
func (o *VerifyTokenParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the verify token params
func (o *VerifyTokenParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *VerifyTokenParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithToken adds the token to the verify token params
func (o *VerifyTokenParams) WithToken(token string) *VerifyTokenParams {
	o.SetToken(token)
	return o
}

// SetToken adds the token to the verify token params
func (o *VerifyTokenParams) SetToken(token string) {
	o.Token = token
}

// WriteToRequest writes these params to a swagger request
func (o *VerifyTokenParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param token
	frToken := o.Token
	fToken := frToken
	if fToken != "" {
		if err := r.SetFormParam("token", fToken); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
