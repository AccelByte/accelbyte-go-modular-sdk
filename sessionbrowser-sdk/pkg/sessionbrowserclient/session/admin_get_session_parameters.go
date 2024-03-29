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

// NewAdminGetSessionParams creates a new AdminGetSessionParams object
// with the default values initialized.
func NewAdminGetSessionParams() *AdminGetSessionParams {
	var ()
	return &AdminGetSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetSessionParamsWithTimeout creates a new AdminGetSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetSessionParamsWithTimeout(timeout time.Duration) *AdminGetSessionParams {
	var ()
	return &AdminGetSessionParams{

		timeout: timeout,
	}
}

// NewAdminGetSessionParamsWithContext creates a new AdminGetSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetSessionParamsWithContext(ctx context.Context) *AdminGetSessionParams {
	var ()
	return &AdminGetSessionParams{

		Context: ctx,
	}
}

// NewAdminGetSessionParamsWithHTTPClient creates a new AdminGetSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetSessionParamsWithHTTPClient(client *http.Client) *AdminGetSessionParams {
	var ()
	return &AdminGetSessionParams{
		HTTPClient: client,
	}
}

/*AdminGetSessionParams contains all the parameters to send to the API endpoint
for the admin get session operation typically these are written to a http.Request
*/
type AdminGetSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

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

// WithTimeout adds the timeout to the admin get session params
func (o *AdminGetSessionParams) WithTimeout(timeout time.Duration) *AdminGetSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get session params
func (o *AdminGetSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get session params
func (o *AdminGetSessionParams) WithContext(ctx context.Context) *AdminGetSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get session params
func (o *AdminGetSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get session params
func (o *AdminGetSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get session params
func (o *AdminGetSessionParams) WithHTTPClient(client *http.Client) *AdminGetSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get session params
func (o *AdminGetSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get session params
func (o *AdminGetSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get session params
func (o *AdminGetSessionParams) WithNamespace(namespace string) *AdminGetSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get session params
func (o *AdminGetSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the admin get session params
func (o *AdminGetSessionParams) WithSessionID(sessionID string) *AdminGetSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin get session params
func (o *AdminGetSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
