// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

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

// NewResetUserSeasonParams creates a new ResetUserSeasonParams object
// with the default values initialized.
func NewResetUserSeasonParams() *ResetUserSeasonParams {
	var ()
	return &ResetUserSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewResetUserSeasonParamsWithTimeout creates a new ResetUserSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewResetUserSeasonParamsWithTimeout(timeout time.Duration) *ResetUserSeasonParams {
	var ()
	return &ResetUserSeasonParams{

		timeout: timeout,
	}
}

// NewResetUserSeasonParamsWithContext creates a new ResetUserSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewResetUserSeasonParamsWithContext(ctx context.Context) *ResetUserSeasonParams {
	var ()
	return &ResetUserSeasonParams{

		Context: ctx,
	}
}

// NewResetUserSeasonParamsWithHTTPClient creates a new ResetUserSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewResetUserSeasonParamsWithHTTPClient(client *http.Client) *ResetUserSeasonParams {
	var ()
	return &ResetUserSeasonParams{
		HTTPClient: client,
	}
}

/*ResetUserSeasonParams contains all the parameters to send to the API endpoint
for the reset user season operation typically these are written to a http.Request
*/
type ResetUserSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the reset user season params
func (o *ResetUserSeasonParams) WithTimeout(timeout time.Duration) *ResetUserSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the reset user season params
func (o *ResetUserSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the reset user season params
func (o *ResetUserSeasonParams) WithContext(ctx context.Context) *ResetUserSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the reset user season params
func (o *ResetUserSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the reset user season params
func (o *ResetUserSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the reset user season params
func (o *ResetUserSeasonParams) WithHTTPClient(client *http.Client) *ResetUserSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the reset user season params
func (o *ResetUserSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the reset user season params
func (o *ResetUserSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ResetUserSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the reset user season params
func (o *ResetUserSeasonParams) WithNamespace(namespace string) *ResetUserSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the reset user season params
func (o *ResetUserSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the reset user season params
func (o *ResetUserSeasonParams) WithUserID(userID string) *ResetUserSeasonParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the reset user season params
func (o *ResetUserSeasonParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ResetUserSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
