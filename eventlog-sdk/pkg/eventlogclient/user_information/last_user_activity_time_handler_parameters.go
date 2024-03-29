// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_information

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

// NewLastUserActivityTimeHandlerParams creates a new LastUserActivityTimeHandlerParams object
// with the default values initialized.
func NewLastUserActivityTimeHandlerParams() *LastUserActivityTimeHandlerParams {
	var ()
	return &LastUserActivityTimeHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewLastUserActivityTimeHandlerParamsWithTimeout creates a new LastUserActivityTimeHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewLastUserActivityTimeHandlerParamsWithTimeout(timeout time.Duration) *LastUserActivityTimeHandlerParams {
	var ()
	return &LastUserActivityTimeHandlerParams{

		timeout: timeout,
	}
}

// NewLastUserActivityTimeHandlerParamsWithContext creates a new LastUserActivityTimeHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewLastUserActivityTimeHandlerParamsWithContext(ctx context.Context) *LastUserActivityTimeHandlerParams {
	var ()
	return &LastUserActivityTimeHandlerParams{

		Context: ctx,
	}
}

// NewLastUserActivityTimeHandlerParamsWithHTTPClient creates a new LastUserActivityTimeHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewLastUserActivityTimeHandlerParamsWithHTTPClient(client *http.Client) *LastUserActivityTimeHandlerParams {
	var ()
	return &LastUserActivityTimeHandlerParams{
		HTTPClient: client,
	}
}

/*LastUserActivityTimeHandlerParams contains all the parameters to send to the API endpoint
for the last user activity time handler operation typically these are written to a http.Request
*/
type LastUserActivityTimeHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

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

// WithTimeout adds the timeout to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) WithTimeout(timeout time.Duration) *LastUserActivityTimeHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) WithContext(ctx context.Context) *LastUserActivityTimeHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) WithHTTPClient(client *http.Client) *LastUserActivityTimeHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *LastUserActivityTimeHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) WithNamespace(namespace string) *LastUserActivityTimeHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) WithUserID(userID string) *LastUserActivityTimeHandlerParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the last user activity time handler params
func (o *LastUserActivityTimeHandlerParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *LastUserActivityTimeHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
