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

// NewGetCurrentMonthLeaderboardRankingPublicV1Params creates a new GetCurrentMonthLeaderboardRankingPublicV1Params object
// with the default values initialized.
func NewGetCurrentMonthLeaderboardRankingPublicV1Params() *GetCurrentMonthLeaderboardRankingPublicV1Params {
	var ()
	return &GetCurrentMonthLeaderboardRankingPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCurrentMonthLeaderboardRankingPublicV1ParamsWithTimeout creates a new GetCurrentMonthLeaderboardRankingPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCurrentMonthLeaderboardRankingPublicV1ParamsWithTimeout(timeout time.Duration) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	var ()
	return &GetCurrentMonthLeaderboardRankingPublicV1Params{

		timeout: timeout,
	}
}

// NewGetCurrentMonthLeaderboardRankingPublicV1ParamsWithContext creates a new GetCurrentMonthLeaderboardRankingPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetCurrentMonthLeaderboardRankingPublicV1ParamsWithContext(ctx context.Context) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	var ()
	return &GetCurrentMonthLeaderboardRankingPublicV1Params{

		Context: ctx,
	}
}

// NewGetCurrentMonthLeaderboardRankingPublicV1ParamsWithHTTPClient creates a new GetCurrentMonthLeaderboardRankingPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCurrentMonthLeaderboardRankingPublicV1ParamsWithHTTPClient(client *http.Client) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	var ()
	return &GetCurrentMonthLeaderboardRankingPublicV1Params{
		HTTPClient: client,
	}
}

/*
GetCurrentMonthLeaderboardRankingPublicV1Params contains all the parameters to send to the API endpoint
for the get current month leaderboard ranking public v1 operation typically these are written to a http.Request
*/
type GetCurrentMonthLeaderboardRankingPublicV1Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) WithTimeout(timeout time.Duration) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) WithContext(ctx context.Context) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) WithHTTPClient(client *http.Client) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLeaderboardCode adds the leaderboardCode to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) WithLeaderboardCode(leaderboardCode string) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) WithNamespace(namespace string) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) WithLimit(limit *int64) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) WithOffset(offset *int64) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPreviousVersion adds the previousVersion to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) WithPreviousVersion(previousVersion *int64) *GetCurrentMonthLeaderboardRankingPublicV1Params {
	o.SetPreviousVersion(previousVersion)
	return o
}

// SetPreviousVersion adds the previousVersion to the get current month leaderboard ranking public v1 params
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) SetPreviousVersion(previousVersion *int64) {
	o.PreviousVersion = previousVersion
}

// WriteToRequest writes these params to a swagger request
func (o *GetCurrentMonthLeaderboardRankingPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
