// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

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

// NewDeleteSessionLocalDSParams creates a new DeleteSessionLocalDSParams object
// with the default values initialized.
func NewDeleteSessionLocalDSParams() *DeleteSessionLocalDSParams {
	var ()
	return &DeleteSessionLocalDSParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSessionLocalDSParamsWithTimeout creates a new DeleteSessionLocalDSParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSessionLocalDSParamsWithTimeout(timeout time.Duration) *DeleteSessionLocalDSParams {
	var ()
	return &DeleteSessionLocalDSParams{

		timeout: timeout,
	}
}

// NewDeleteSessionLocalDSParamsWithContext creates a new DeleteSessionLocalDSParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSessionLocalDSParamsWithContext(ctx context.Context) *DeleteSessionLocalDSParams {
	var ()
	return &DeleteSessionLocalDSParams{

		Context: ctx,
	}
}

// NewDeleteSessionLocalDSParamsWithHTTPClient creates a new DeleteSessionLocalDSParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSessionLocalDSParamsWithHTTPClient(client *http.Client) *DeleteSessionLocalDSParams {
	var ()
	return &DeleteSessionLocalDSParams{
		HTTPClient: client,
	}
}

/*DeleteSessionLocalDSParams contains all the parameters to send to the API endpoint
for the delete session local ds operation typically these are written to a http.Request
*/
type DeleteSessionLocalDSParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*SessionID
	  session ID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete session local ds params
func (o *DeleteSessionLocalDSParams) WithTimeout(timeout time.Duration) *DeleteSessionLocalDSParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete session local ds params
func (o *DeleteSessionLocalDSParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete session local ds params
func (o *DeleteSessionLocalDSParams) WithContext(ctx context.Context) *DeleteSessionLocalDSParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete session local ds params
func (o *DeleteSessionLocalDSParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete session local ds params
func (o *DeleteSessionLocalDSParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete session local ds params
func (o *DeleteSessionLocalDSParams) WithHTTPClient(client *http.Client) *DeleteSessionLocalDSParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete session local ds params
func (o *DeleteSessionLocalDSParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete session local ds params
func (o *DeleteSessionLocalDSParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete session local ds params
func (o *DeleteSessionLocalDSParams) WithNamespace(namespace string) *DeleteSessionLocalDSParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete session local ds params
func (o *DeleteSessionLocalDSParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the delete session local ds params
func (o *DeleteSessionLocalDSParams) WithSessionID(sessionID string) *DeleteSessionLocalDSParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the delete session local ds params
func (o *DeleteSessionLocalDSParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSessionLocalDSParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionID
	if err := r.SetPathParam("sessionID", o.SessionID); err != nil {
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
