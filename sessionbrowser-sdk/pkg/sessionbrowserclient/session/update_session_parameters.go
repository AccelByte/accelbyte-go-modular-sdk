// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

	"github.com/AccelByte/accelbyte-go-modular-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

// NewUpdateSessionParams creates a new UpdateSessionParams object
// with the default values initialized.
func NewUpdateSessionParams() *UpdateSessionParams {
	var ()
	return &UpdateSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateSessionParamsWithTimeout creates a new UpdateSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateSessionParamsWithTimeout(timeout time.Duration) *UpdateSessionParams {
	var ()
	return &UpdateSessionParams{

		timeout: timeout,
	}
}

// NewUpdateSessionParamsWithContext creates a new UpdateSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateSessionParamsWithContext(ctx context.Context) *UpdateSessionParams {
	var ()
	return &UpdateSessionParams{

		Context: ctx,
	}
}

// NewUpdateSessionParamsWithHTTPClient creates a new UpdateSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateSessionParamsWithHTTPClient(client *http.Client) *UpdateSessionParams {
	var ()
	return &UpdateSessionParams{
		HTTPClient: client,
	}
}

/*UpdateSessionParams contains all the parameters to send to the API endpoint
for the update session operation typically these are written to a http.Request
*/
type UpdateSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionbrowserclientmodels.ModelsUpdateSessionRequest
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

// WithTimeout adds the timeout to the update session params
func (o *UpdateSessionParams) WithTimeout(timeout time.Duration) *UpdateSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update session params
func (o *UpdateSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update session params
func (o *UpdateSessionParams) WithContext(ctx context.Context) *UpdateSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update session params
func (o *UpdateSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update session params
func (o *UpdateSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update session params
func (o *UpdateSessionParams) WithHTTPClient(client *http.Client) *UpdateSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update session params
func (o *UpdateSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update session params
func (o *UpdateSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update session params
func (o *UpdateSessionParams) WithBody(body *sessionbrowserclientmodels.ModelsUpdateSessionRequest) *UpdateSessionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update session params
func (o *UpdateSessionParams) SetBody(body *sessionbrowserclientmodels.ModelsUpdateSessionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update session params
func (o *UpdateSessionParams) WithNamespace(namespace string) *UpdateSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update session params
func (o *UpdateSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the update session params
func (o *UpdateSessionParams) WithSessionID(sessionID string) *UpdateSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the update session params
func (o *UpdateSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
