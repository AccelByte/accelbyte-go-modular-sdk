// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_session

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

// NewLeaveGameSessionParams creates a new LeaveGameSessionParams object
// with the default values initialized.
func NewLeaveGameSessionParams() *LeaveGameSessionParams {
	var ()
	return &LeaveGameSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewLeaveGameSessionParamsWithTimeout creates a new LeaveGameSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewLeaveGameSessionParamsWithTimeout(timeout time.Duration) *LeaveGameSessionParams {
	var ()
	return &LeaveGameSessionParams{

		timeout: timeout,
	}
}

// NewLeaveGameSessionParamsWithContext creates a new LeaveGameSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewLeaveGameSessionParamsWithContext(ctx context.Context) *LeaveGameSessionParams {
	var ()
	return &LeaveGameSessionParams{

		Context: ctx,
	}
}

// NewLeaveGameSessionParamsWithHTTPClient creates a new LeaveGameSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewLeaveGameSessionParamsWithHTTPClient(client *http.Client) *LeaveGameSessionParams {
	var ()
	return &LeaveGameSessionParams{
		HTTPClient: client,
	}
}

/*
LeaveGameSessionParams contains all the parameters to send to the API endpoint
for the leave game session operation typically these are written to a http.Request
*/
type LeaveGameSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

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

// WithTimeout adds the timeout to the leave game session params
func (o *LeaveGameSessionParams) WithTimeout(timeout time.Duration) *LeaveGameSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the leave game session params
func (o *LeaveGameSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the leave game session params
func (o *LeaveGameSessionParams) WithContext(ctx context.Context) *LeaveGameSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the leave game session params
func (o *LeaveGameSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the leave game session params
func (o *LeaveGameSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the leave game session params
func (o *LeaveGameSessionParams) WithHTTPClient(client *http.Client) *LeaveGameSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the leave game session params
func (o *LeaveGameSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the leave game session params
func (o *LeaveGameSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *LeaveGameSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the leave game session params
func (o *LeaveGameSessionParams) WithNamespace(namespace string) *LeaveGameSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the leave game session params
func (o *LeaveGameSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the leave game session params
func (o *LeaveGameSessionParams) WithSessionID(sessionID string) *LeaveGameSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the leave game session params
func (o *LeaveGameSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *LeaveGameSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionId
	if err := r.SetPathParam("sessionId", o.SessionID); err != nil {
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
