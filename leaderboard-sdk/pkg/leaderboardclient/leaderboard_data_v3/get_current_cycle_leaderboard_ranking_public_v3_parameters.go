// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data_v3

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

// NewGetCurrentCycleLeaderboardRankingPublicV3Params creates a new GetCurrentCycleLeaderboardRankingPublicV3Params object
// with the default values initialized.
func NewGetCurrentCycleLeaderboardRankingPublicV3Params() *GetCurrentCycleLeaderboardRankingPublicV3Params {
	var ()
	return &GetCurrentCycleLeaderboardRankingPublicV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCurrentCycleLeaderboardRankingPublicV3ParamsWithTimeout creates a new GetCurrentCycleLeaderboardRankingPublicV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCurrentCycleLeaderboardRankingPublicV3ParamsWithTimeout(timeout time.Duration) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	var ()
	return &GetCurrentCycleLeaderboardRankingPublicV3Params{

		timeout: timeout,
	}
}

// NewGetCurrentCycleLeaderboardRankingPublicV3ParamsWithContext creates a new GetCurrentCycleLeaderboardRankingPublicV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetCurrentCycleLeaderboardRankingPublicV3ParamsWithContext(ctx context.Context) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	var ()
	return &GetCurrentCycleLeaderboardRankingPublicV3Params{

		Context: ctx,
	}
}

// NewGetCurrentCycleLeaderboardRankingPublicV3ParamsWithHTTPClient creates a new GetCurrentCycleLeaderboardRankingPublicV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCurrentCycleLeaderboardRankingPublicV3ParamsWithHTTPClient(client *http.Client) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	var ()
	return &GetCurrentCycleLeaderboardRankingPublicV3Params{
		HTTPClient: client,
	}
}

/*GetCurrentCycleLeaderboardRankingPublicV3Params contains all the parameters to send to the API endpoint
for the get current cycle leaderboard ranking public v3 operation typically these are written to a http.Request
*/
type GetCurrentCycleLeaderboardRankingPublicV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CycleID
	  the cycle id

	*/
	CycleID string
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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) WithTimeout(timeout time.Duration) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) WithContext(ctx context.Context) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) WithHTTPClient(client *http.Client) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCycleID adds the cycleID to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) WithCycleID(cycleID string) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithLeaderboardCode adds the leaderboardCode to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) WithLeaderboardCode(leaderboardCode string) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) WithNamespace(namespace string) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) WithLimit(limit *int64) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) WithOffset(offset *int64) *GetCurrentCycleLeaderboardRankingPublicV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get current cycle leaderboard ranking public v3 params
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetCurrentCycleLeaderboardRankingPublicV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param cycleId
	if err := r.SetPathParam("cycleId", o.CycleID); err != nil {
		return err
	}

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

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
