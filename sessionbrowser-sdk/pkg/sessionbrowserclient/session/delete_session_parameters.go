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

// NewDeleteSessionParams creates a new DeleteSessionParams object
// with the default values initialized.
func NewDeleteSessionParams() *DeleteSessionParams {
	var ()
	return &DeleteSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSessionParamsWithTimeout creates a new DeleteSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSessionParamsWithTimeout(timeout time.Duration) *DeleteSessionParams {
	var ()
	return &DeleteSessionParams{

		timeout: timeout,
	}
}

// NewDeleteSessionParamsWithContext creates a new DeleteSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSessionParamsWithContext(ctx context.Context) *DeleteSessionParams {
	var ()
	return &DeleteSessionParams{

		Context: ctx,
	}
}

// NewDeleteSessionParamsWithHTTPClient creates a new DeleteSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSessionParamsWithHTTPClient(client *http.Client) *DeleteSessionParams {
	var ()
	return &DeleteSessionParams{
		HTTPClient: client,
	}
}

/*DeleteSessionParams contains all the parameters to send to the API endpoint
for the delete session operation typically these are written to a http.Request
*/
type DeleteSessionParams struct {

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

// WithTimeout adds the timeout to the delete session params
func (o *DeleteSessionParams) WithTimeout(timeout time.Duration) *DeleteSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete session params
func (o *DeleteSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete session params
func (o *DeleteSessionParams) WithContext(ctx context.Context) *DeleteSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete session params
func (o *DeleteSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete session params
func (o *DeleteSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete session params
func (o *DeleteSessionParams) WithHTTPClient(client *http.Client) *DeleteSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete session params
func (o *DeleteSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete session params
func (o *DeleteSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete session params
func (o *DeleteSessionParams) WithNamespace(namespace string) *DeleteSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete session params
func (o *DeleteSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the delete session params
func (o *DeleteSessionParams) WithSessionID(sessionID string) *DeleteSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the delete session params
func (o *DeleteSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
