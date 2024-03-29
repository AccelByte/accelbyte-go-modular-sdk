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

// NewAdminUpdateGameSessionMemberParams creates a new AdminUpdateGameSessionMemberParams object
// with the default values initialized.
func NewAdminUpdateGameSessionMemberParams() *AdminUpdateGameSessionMemberParams {
	var ()
	return &AdminUpdateGameSessionMemberParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateGameSessionMemberParamsWithTimeout creates a new AdminUpdateGameSessionMemberParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateGameSessionMemberParamsWithTimeout(timeout time.Duration) *AdminUpdateGameSessionMemberParams {
	var ()
	return &AdminUpdateGameSessionMemberParams{

		timeout: timeout,
	}
}

// NewAdminUpdateGameSessionMemberParamsWithContext creates a new AdminUpdateGameSessionMemberParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateGameSessionMemberParamsWithContext(ctx context.Context) *AdminUpdateGameSessionMemberParams {
	var ()
	return &AdminUpdateGameSessionMemberParams{

		Context: ctx,
	}
}

// NewAdminUpdateGameSessionMemberParamsWithHTTPClient creates a new AdminUpdateGameSessionMemberParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateGameSessionMemberParamsWithHTTPClient(client *http.Client) *AdminUpdateGameSessionMemberParams {
	var ()
	return &AdminUpdateGameSessionMemberParams{
		HTTPClient: client,
	}
}

/*AdminUpdateGameSessionMemberParams contains all the parameters to send to the API endpoint
for the admin update game session member operation typically these are written to a http.Request
*/
type AdminUpdateGameSessionMemberParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*MemberID
	  member ID

	*/
	MemberID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*SessionID
	  session ID

	*/
	SessionID string
	/*StatusType
	  status type: INVITED, REJECTED, JOINED, LEFT. Lowercase status type param will be converted to uppercase.

	*/
	StatusType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) WithTimeout(timeout time.Duration) *AdminUpdateGameSessionMemberParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) WithContext(ctx context.Context) *AdminUpdateGameSessionMemberParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) WithHTTPClient(client *http.Client) *AdminUpdateGameSessionMemberParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateGameSessionMemberParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithMemberID adds the memberID to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) WithMemberID(memberID string) *AdminUpdateGameSessionMemberParams {
	o.SetMemberID(memberID)
	return o
}

// SetMemberID adds the memberId to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) SetMemberID(memberID string) {
	o.MemberID = memberID
}

// WithNamespace adds the namespace to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) WithNamespace(namespace string) *AdminUpdateGameSessionMemberParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) WithSessionID(sessionID string) *AdminUpdateGameSessionMemberParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WithStatusType adds the statusType to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) WithStatusType(statusType string) *AdminUpdateGameSessionMemberParams {
	o.SetStatusType(statusType)
	return o
}

// SetStatusType adds the statusType to the admin update game session member params
func (o *AdminUpdateGameSessionMemberParams) SetStatusType(statusType string) {
	o.StatusType = statusType
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateGameSessionMemberParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param memberId
	if err := r.SetPathParam("memberId", o.MemberID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionId
	if err := r.SetPathParam("sessionId", o.SessionID); err != nil {
		return err
	}

	// path param statusType
	if err := r.SetPathParam("statusType", o.StatusType); err != nil {
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
