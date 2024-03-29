// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session_storage

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

// NewAdminDeleteUserSessionStorageParams creates a new AdminDeleteUserSessionStorageParams object
// with the default values initialized.
func NewAdminDeleteUserSessionStorageParams() *AdminDeleteUserSessionStorageParams {
	var ()
	return &AdminDeleteUserSessionStorageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteUserSessionStorageParamsWithTimeout creates a new AdminDeleteUserSessionStorageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteUserSessionStorageParamsWithTimeout(timeout time.Duration) *AdminDeleteUserSessionStorageParams {
	var ()
	return &AdminDeleteUserSessionStorageParams{

		timeout: timeout,
	}
}

// NewAdminDeleteUserSessionStorageParamsWithContext creates a new AdminDeleteUserSessionStorageParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteUserSessionStorageParamsWithContext(ctx context.Context) *AdminDeleteUserSessionStorageParams {
	var ()
	return &AdminDeleteUserSessionStorageParams{

		Context: ctx,
	}
}

// NewAdminDeleteUserSessionStorageParamsWithHTTPClient creates a new AdminDeleteUserSessionStorageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteUserSessionStorageParamsWithHTTPClient(client *http.Client) *AdminDeleteUserSessionStorageParams {
	var ()
	return &AdminDeleteUserSessionStorageParams{
		HTTPClient: client,
	}
}

/*AdminDeleteUserSessionStorageParams contains all the parameters to send to the API endpoint
for the admin delete user session storage operation typically these are written to a http.Request
*/
type AdminDeleteUserSessionStorageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*SessionID
	  sessionID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) WithTimeout(timeout time.Duration) *AdminDeleteUserSessionStorageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) WithContext(ctx context.Context) *AdminDeleteUserSessionStorageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) WithHTTPClient(client *http.Client) *AdminDeleteUserSessionStorageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteUserSessionStorageParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) WithNamespace(namespace string) *AdminDeleteUserSessionStorageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) WithSessionID(sessionID string) *AdminDeleteUserSessionStorageParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin delete user session storage params
func (o *AdminDeleteUserSessionStorageParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteUserSessionStorageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
