// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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
	"github.com/go-openapi/swag"
)

// NewGetCurrentSeasonLeaderboardRankingPublicV1Params creates a new GetCurrentSeasonLeaderboardRankingPublicV1Params object
// with the default values initialized.
func NewGetCurrentSeasonLeaderboardRankingPublicV1Params() *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	var ()
	return &GetCurrentSeasonLeaderboardRankingPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCurrentSeasonLeaderboardRankingPublicV1ParamsWithTimeout creates a new GetCurrentSeasonLeaderboardRankingPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCurrentSeasonLeaderboardRankingPublicV1ParamsWithTimeout(timeout time.Duration) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	var ()
	return &GetCurrentSeasonLeaderboardRankingPublicV1Params{

		timeout: timeout,
	}
}

// NewGetCurrentSeasonLeaderboardRankingPublicV1ParamsWithContext creates a new GetCurrentSeasonLeaderboardRankingPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetCurrentSeasonLeaderboardRankingPublicV1ParamsWithContext(ctx context.Context) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	var ()
	return &GetCurrentSeasonLeaderboardRankingPublicV1Params{

		Context: ctx,
	}
}

// NewGetCurrentSeasonLeaderboardRankingPublicV1ParamsWithHTTPClient creates a new GetCurrentSeasonLeaderboardRankingPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCurrentSeasonLeaderboardRankingPublicV1ParamsWithHTTPClient(client *http.Client) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	var ()
	return &GetCurrentSeasonLeaderboardRankingPublicV1Params{
		HTTPClient: client,
	}
}

/*GetCurrentSeasonLeaderboardRankingPublicV1Params contains all the parameters to send to the API endpoint
for the get current season leaderboard ranking public v1 operation typically these are written to a http.Request
*/
type GetCurrentSeasonLeaderboardRankingPublicV1Params struct {

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
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64
	/*PreviousVersion
	  Specify specific version of leaderboard data, < 0 will be archived/history leaderboard data. Currently only support 1 previous version, default value will be 0 (active leaderboard)

	*/
	PreviousVersion *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) WithTimeout(timeout time.Duration) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) WithContext(ctx context.Context) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) WithHTTPClient(client *http.Client) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) WithLeaderboardCode(leaderboardCode string) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) WithNamespace(namespace string) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) WithLimit(limit *int64) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) WithOffset(offset *int64) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPreviousVersion adds the previousVersion to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) WithPreviousVersion(previousVersion *int64) *GetCurrentSeasonLeaderboardRankingPublicV1Params {
	o.SetPreviousVersion(previousVersion)
	return o
}

// SetPreviousVersion adds the previousVersion to the get current season leaderboard ranking public v1 params
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) SetPreviousVersion(previousVersion *int64) {
	o.PreviousVersion = previousVersion
}

// WriteToRequest writes these params to a swagger request
func (o *GetCurrentSeasonLeaderboardRankingPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.PreviousVersion != nil {

		// query param previousVersion
		var qrPreviousVersion int64
		if o.PreviousVersion != nil {
			qrPreviousVersion = *o.PreviousVersion
		}
		qPreviousVersion := swag.FormatInt64(qrPreviousVersion)
		if qPreviousVersion != "" {
			if err := r.SetQueryParam("previousVersion", qPreviousVersion); err != nil {
				return err
			}
		}

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
