// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

// NewDisableUserBanParams creates a new DisableUserBanParams object
// with the default values initialized.
func NewDisableUserBanParams() *DisableUserBanParams {
	var ()
	return &DisableUserBanParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDisableUserBanParamsWithTimeout creates a new DisableUserBanParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDisableUserBanParamsWithTimeout(timeout time.Duration) *DisableUserBanParams {
	var ()
	return &DisableUserBanParams{

		timeout: timeout,
	}
}

// NewDisableUserBanParamsWithContext creates a new DisableUserBanParams object
// with the default values initialized, and the ability to set a context for a request
func NewDisableUserBanParamsWithContext(ctx context.Context) *DisableUserBanParams {
	var ()
	return &DisableUserBanParams{

		Context: ctx,
	}
}

// NewDisableUserBanParamsWithHTTPClient creates a new DisableUserBanParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDisableUserBanParamsWithHTTPClient(client *http.Client) *DisableUserBanParams {
	var ()
	return &DisableUserBanParams{
		HTTPClient: client,
	}
}

/*DisableUserBanParams contains all the parameters to send to the API endpoint
for the disable user ban operation typically these are written to a http.Request
*/
type DisableUserBanParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BanID
	  Ban ID

	*/
	BanID string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the disable user ban params
func (o *DisableUserBanParams) WithTimeout(timeout time.Duration) *DisableUserBanParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the disable user ban params
func (o *DisableUserBanParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the disable user ban params
func (o *DisableUserBanParams) WithContext(ctx context.Context) *DisableUserBanParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the disable user ban params
func (o *DisableUserBanParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the disable user ban params
func (o *DisableUserBanParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the disable user ban params
func (o *DisableUserBanParams) WithHTTPClient(client *http.Client) *DisableUserBanParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the disable user ban params
func (o *DisableUserBanParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the disable user ban params
func (o *DisableUserBanParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DisableUserBanParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBanID adds the banID to the disable user ban params
func (o *DisableUserBanParams) WithBanID(banID string) *DisableUserBanParams {
	o.SetBanID(banID)
	return o
}

// SetBanID adds the banId to the disable user ban params
func (o *DisableUserBanParams) SetBanID(banID string) {
	o.BanID = banID
}

// WithNamespace adds the namespace to the disable user ban params
func (o *DisableUserBanParams) WithNamespace(namespace string) *DisableUserBanParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the disable user ban params
func (o *DisableUserBanParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the disable user ban params
func (o *DisableUserBanParams) WithUserID(userID string) *DisableUserBanParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the disable user ban params
func (o *DisableUserBanParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DisableUserBanParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param banId
	if err := r.SetPathParam("banId", o.BanID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
