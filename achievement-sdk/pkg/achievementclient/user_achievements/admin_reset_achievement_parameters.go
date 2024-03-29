// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_achievements

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

// NewAdminResetAchievementParams creates a new AdminResetAchievementParams object
// with the default values initialized.
func NewAdminResetAchievementParams() *AdminResetAchievementParams {
	var ()
	return &AdminResetAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminResetAchievementParamsWithTimeout creates a new AdminResetAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminResetAchievementParamsWithTimeout(timeout time.Duration) *AdminResetAchievementParams {
	var ()
	return &AdminResetAchievementParams{

		timeout: timeout,
	}
}

// NewAdminResetAchievementParamsWithContext creates a new AdminResetAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminResetAchievementParamsWithContext(ctx context.Context) *AdminResetAchievementParams {
	var ()
	return &AdminResetAchievementParams{

		Context: ctx,
	}
}

// NewAdminResetAchievementParamsWithHTTPClient creates a new AdminResetAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminResetAchievementParamsWithHTTPClient(client *http.Client) *AdminResetAchievementParams {
	var ()
	return &AdminResetAchievementParams{
		HTTPClient: client,
	}
}

/*AdminResetAchievementParams contains all the parameters to send to the API endpoint
for the admin reset achievement operation typically these are written to a http.Request
*/
type AdminResetAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AchievementCode
	  achievement code

	*/
	AchievementCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin reset achievement params
func (o *AdminResetAchievementParams) WithTimeout(timeout time.Duration) *AdminResetAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin reset achievement params
func (o *AdminResetAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin reset achievement params
func (o *AdminResetAchievementParams) WithContext(ctx context.Context) *AdminResetAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin reset achievement params
func (o *AdminResetAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin reset achievement params
func (o *AdminResetAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin reset achievement params
func (o *AdminResetAchievementParams) WithHTTPClient(client *http.Client) *AdminResetAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin reset achievement params
func (o *AdminResetAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin reset achievement params
func (o *AdminResetAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminResetAchievementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAchievementCode adds the achievementCode to the admin reset achievement params
func (o *AdminResetAchievementParams) WithAchievementCode(achievementCode string) *AdminResetAchievementParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the admin reset achievement params
func (o *AdminResetAchievementParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the admin reset achievement params
func (o *AdminResetAchievementParams) WithNamespace(namespace string) *AdminResetAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin reset achievement params
func (o *AdminResetAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin reset achievement params
func (o *AdminResetAchievementParams) WithUserID(userID string) *AdminResetAchievementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin reset achievement params
func (o *AdminResetAchievementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminResetAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param achievementCode
	if err := r.SetPathParam("achievementCode", o.AchievementCode); err != nil {
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
