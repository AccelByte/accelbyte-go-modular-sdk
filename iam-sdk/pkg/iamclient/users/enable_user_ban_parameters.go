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

// NewEnableUserBanParams creates a new EnableUserBanParams object
// with the default values initialized.
func NewEnableUserBanParams() *EnableUserBanParams {
	var ()
	return &EnableUserBanParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEnableUserBanParamsWithTimeout creates a new EnableUserBanParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEnableUserBanParamsWithTimeout(timeout time.Duration) *EnableUserBanParams {
	var ()
	return &EnableUserBanParams{

		timeout: timeout,
	}
}

// NewEnableUserBanParamsWithContext creates a new EnableUserBanParams object
// with the default values initialized, and the ability to set a context for a request
func NewEnableUserBanParamsWithContext(ctx context.Context) *EnableUserBanParams {
	var ()
	return &EnableUserBanParams{

		Context: ctx,
	}
}

// NewEnableUserBanParamsWithHTTPClient creates a new EnableUserBanParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEnableUserBanParamsWithHTTPClient(client *http.Client) *EnableUserBanParams {
	var ()
	return &EnableUserBanParams{
		HTTPClient: client,
	}
}

/*EnableUserBanParams contains all the parameters to send to the API endpoint
for the enable user ban operation typically these are written to a http.Request
*/
type EnableUserBanParams struct {

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

// WithTimeout adds the timeout to the enable user ban params
func (o *EnableUserBanParams) WithTimeout(timeout time.Duration) *EnableUserBanParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the enable user ban params
func (o *EnableUserBanParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the enable user ban params
func (o *EnableUserBanParams) WithContext(ctx context.Context) *EnableUserBanParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the enable user ban params
func (o *EnableUserBanParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the enable user ban params
func (o *EnableUserBanParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the enable user ban params
func (o *EnableUserBanParams) WithHTTPClient(client *http.Client) *EnableUserBanParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the enable user ban params
func (o *EnableUserBanParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the enable user ban params
func (o *EnableUserBanParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *EnableUserBanParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBanID adds the banID to the enable user ban params
func (o *EnableUserBanParams) WithBanID(banID string) *EnableUserBanParams {
	o.SetBanID(banID)
	return o
}

// SetBanID adds the banId to the enable user ban params
func (o *EnableUserBanParams) SetBanID(banID string) {
	o.BanID = banID
}

// WithNamespace adds the namespace to the enable user ban params
func (o *EnableUserBanParams) WithNamespace(namespace string) *EnableUserBanParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the enable user ban params
func (o *EnableUserBanParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the enable user ban params
func (o *EnableUserBanParams) WithUserID(userID string) *EnableUserBanParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the enable user ban params
func (o *EnableUserBanParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *EnableUserBanParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
