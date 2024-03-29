// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_visibility

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// NewSetUserLeaderboardVisibilityStatusV2Params creates a new SetUserLeaderboardVisibilityStatusV2Params object
// with the default values initialized.
func NewSetUserLeaderboardVisibilityStatusV2Params() *SetUserLeaderboardVisibilityStatusV2Params {
	var ()
	return &SetUserLeaderboardVisibilityStatusV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSetUserLeaderboardVisibilityStatusV2ParamsWithTimeout creates a new SetUserLeaderboardVisibilityStatusV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSetUserLeaderboardVisibilityStatusV2ParamsWithTimeout(timeout time.Duration) *SetUserLeaderboardVisibilityStatusV2Params {
	var ()
	return &SetUserLeaderboardVisibilityStatusV2Params{

		timeout: timeout,
	}
}

// NewSetUserLeaderboardVisibilityStatusV2ParamsWithContext creates a new SetUserLeaderboardVisibilityStatusV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewSetUserLeaderboardVisibilityStatusV2ParamsWithContext(ctx context.Context) *SetUserLeaderboardVisibilityStatusV2Params {
	var ()
	return &SetUserLeaderboardVisibilityStatusV2Params{

		Context: ctx,
	}
}

// NewSetUserLeaderboardVisibilityStatusV2ParamsWithHTTPClient creates a new SetUserLeaderboardVisibilityStatusV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSetUserLeaderboardVisibilityStatusV2ParamsWithHTTPClient(client *http.Client) *SetUserLeaderboardVisibilityStatusV2Params {
	var ()
	return &SetUserLeaderboardVisibilityStatusV2Params{
		HTTPClient: client,
	}
}

/*SetUserLeaderboardVisibilityStatusV2Params contains all the parameters to send to the API endpoint
for the set user leaderboard visibility status v2 operation typically these are written to a http.Request
*/
type SetUserLeaderboardVisibilityStatusV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *leaderboardclientmodels.ModelsSetUserVisibilityRequest
	/*LeaderboardCode
	  Leaderboard Code

	*/
	LeaderboardCode string
	/*Namespace
	  namespace of the game

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

// WithTimeout adds the timeout to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) WithTimeout(timeout time.Duration) *SetUserLeaderboardVisibilityStatusV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) WithContext(ctx context.Context) *SetUserLeaderboardVisibilityStatusV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) WithHTTPClient(client *http.Client) *SetUserLeaderboardVisibilityStatusV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) WithBody(body *leaderboardclientmodels.ModelsSetUserVisibilityRequest) *SetUserLeaderboardVisibilityStatusV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetBody(body *leaderboardclientmodels.ModelsSetUserVisibilityRequest) {
	o.Body = body
}

// WithLeaderboardCode adds the leaderboardCode to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) WithLeaderboardCode(leaderboardCode string) *SetUserLeaderboardVisibilityStatusV2Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) WithNamespace(namespace string) *SetUserLeaderboardVisibilityStatusV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) WithUserID(userID string) *SetUserLeaderboardVisibilityStatusV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the set user leaderboard visibility status v2 params
func (o *SetUserLeaderboardVisibilityStatusV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SetUserLeaderboardVisibilityStatusV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param leaderboardCode
	if err := r.SetPathParam("leaderboardCode", o.LeaderboardCode); err != nil {
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
