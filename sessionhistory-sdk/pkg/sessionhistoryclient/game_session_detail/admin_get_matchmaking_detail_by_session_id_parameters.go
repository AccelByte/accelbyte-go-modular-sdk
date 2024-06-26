// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_session_detail

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

// NewAdminGetMatchmakingDetailBySessionIDParams creates a new AdminGetMatchmakingDetailBySessionIDParams object
// with the default values initialized.
func NewAdminGetMatchmakingDetailBySessionIDParams() *AdminGetMatchmakingDetailBySessionIDParams {
	var ()
	return &AdminGetMatchmakingDetailBySessionIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetMatchmakingDetailBySessionIDParamsWithTimeout creates a new AdminGetMatchmakingDetailBySessionIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetMatchmakingDetailBySessionIDParamsWithTimeout(timeout time.Duration) *AdminGetMatchmakingDetailBySessionIDParams {
	var ()
	return &AdminGetMatchmakingDetailBySessionIDParams{

		timeout: timeout,
	}
}

// NewAdminGetMatchmakingDetailBySessionIDParamsWithContext creates a new AdminGetMatchmakingDetailBySessionIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetMatchmakingDetailBySessionIDParamsWithContext(ctx context.Context) *AdminGetMatchmakingDetailBySessionIDParams {
	var ()
	return &AdminGetMatchmakingDetailBySessionIDParams{

		Context: ctx,
	}
}

// NewAdminGetMatchmakingDetailBySessionIDParamsWithHTTPClient creates a new AdminGetMatchmakingDetailBySessionIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetMatchmakingDetailBySessionIDParamsWithHTTPClient(client *http.Client) *AdminGetMatchmakingDetailBySessionIDParams {
	var ()
	return &AdminGetMatchmakingDetailBySessionIDParams{
		HTTPClient: client,
	}
}

/*AdminGetMatchmakingDetailBySessionIDParams contains all the parameters to send to the API endpoint
for the admin get matchmaking detail by session id operation typically these are written to a http.Request
*/
type AdminGetMatchmakingDetailBySessionIDParams struct {

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

// WithTimeout adds the timeout to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) WithTimeout(timeout time.Duration) *AdminGetMatchmakingDetailBySessionIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) WithContext(ctx context.Context) *AdminGetMatchmakingDetailBySessionIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) WithHTTPClient(client *http.Client) *AdminGetMatchmakingDetailBySessionIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetMatchmakingDetailBySessionIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) WithNamespace(namespace string) *AdminGetMatchmakingDetailBySessionIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) WithSessionID(sessionID string) *AdminGetMatchmakingDetailBySessionIDParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin get matchmaking detail by session id params
func (o *AdminGetMatchmakingDetailBySessionIDParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetMatchmakingDetailBySessionIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
