// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data

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

// NewGetUserRankingAdminV1Params creates a new GetUserRankingAdminV1Params object
// with the default values initialized.
func NewGetUserRankingAdminV1Params() *GetUserRankingAdminV1Params {
	var ()
	return &GetUserRankingAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserRankingAdminV1ParamsWithTimeout creates a new GetUserRankingAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserRankingAdminV1ParamsWithTimeout(timeout time.Duration) *GetUserRankingAdminV1Params {
	var ()
	return &GetUserRankingAdminV1Params{

		timeout: timeout,
	}
}

// NewGetUserRankingAdminV1ParamsWithContext creates a new GetUserRankingAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserRankingAdminV1ParamsWithContext(ctx context.Context) *GetUserRankingAdminV1Params {
	var ()
	return &GetUserRankingAdminV1Params{

		Context: ctx,
	}
}

// NewGetUserRankingAdminV1ParamsWithHTTPClient creates a new GetUserRankingAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserRankingAdminV1ParamsWithHTTPClient(client *http.Client) *GetUserRankingAdminV1Params {
	var ()
	return &GetUserRankingAdminV1Params{
		HTTPClient: client,
	}
}

/*GetUserRankingAdminV1Params contains all the parameters to send to the API endpoint
for the get user ranking admin v1 operation typically these are written to a http.Request
*/
type GetUserRankingAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LeaderboardCode
	  the human readable unique code to identify the leaderboard. Must be lowercase and maximum length is 48

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
}

// WithTimeout adds the timeout to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) WithTimeout(timeout time.Duration) *GetUserRankingAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) WithContext(ctx context.Context) *GetUserRankingAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) WithHTTPClient(client *http.Client) *GetUserRankingAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) WithLeaderboardCode(leaderboardCode string) *GetUserRankingAdminV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) WithNamespace(namespace string) *GetUserRankingAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) WithUserID(userID string) *GetUserRankingAdminV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user ranking admin v1 params
func (o *GetUserRankingAdminV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserRankingAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
