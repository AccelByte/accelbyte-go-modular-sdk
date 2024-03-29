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
)

// NewGetSessionParams creates a new GetSessionParams object
// with the default values initialized.
func NewGetSessionParams() *GetSessionParams {
	var ()
	return &GetSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSessionParamsWithTimeout creates a new GetSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSessionParamsWithTimeout(timeout time.Duration) *GetSessionParams {
	var ()
	return &GetSessionParams{

		timeout: timeout,
	}
}

// NewGetSessionParamsWithContext creates a new GetSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSessionParamsWithContext(ctx context.Context) *GetSessionParams {
	var ()
	return &GetSessionParams{

		Context: ctx,
	}
}

// NewGetSessionParamsWithHTTPClient creates a new GetSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSessionParamsWithHTTPClient(client *http.Client) *GetSessionParams {
	var ()
	return &GetSessionParams{
		HTTPClient: client,
	}
}

/*GetSessionParams contains all the parameters to send to the API endpoint
for the get session operation typically these are written to a http.Request
*/
type GetSessionParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get session params
func (o *GetSessionParams) WithTimeout(timeout time.Duration) *GetSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get session params
func (o *GetSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get session params
func (o *GetSessionParams) WithContext(ctx context.Context) *GetSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get session params
func (o *GetSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get session params
func (o *GetSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get session params
func (o *GetSessionParams) WithHTTPClient(client *http.Client) *GetSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get session params
func (o *GetSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get session params
func (o *GetSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get session params
func (o *GetSessionParams) WithNamespace(namespace string) *GetSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get session params
func (o *GetSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the get session params
func (o *GetSessionParams) WithSessionID(sessionID string) *GetSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the get session params
func (o *GetSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
