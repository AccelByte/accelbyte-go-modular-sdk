// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package leaderboard_configuration

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

// NewHardDeleteLeaderboardAdminV1Params creates a new HardDeleteLeaderboardAdminV1Params object
// with the default values initialized.
func NewHardDeleteLeaderboardAdminV1Params() *HardDeleteLeaderboardAdminV1Params {
	var ()
	return &HardDeleteLeaderboardAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewHardDeleteLeaderboardAdminV1ParamsWithTimeout creates a new HardDeleteLeaderboardAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewHardDeleteLeaderboardAdminV1ParamsWithTimeout(timeout time.Duration) *HardDeleteLeaderboardAdminV1Params {
	var ()
	return &HardDeleteLeaderboardAdminV1Params{

		timeout: timeout,
	}
}

// NewHardDeleteLeaderboardAdminV1ParamsWithContext creates a new HardDeleteLeaderboardAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewHardDeleteLeaderboardAdminV1ParamsWithContext(ctx context.Context) *HardDeleteLeaderboardAdminV1Params {
	var ()
	return &HardDeleteLeaderboardAdminV1Params{

		Context: ctx,
	}
}

// NewHardDeleteLeaderboardAdminV1ParamsWithHTTPClient creates a new HardDeleteLeaderboardAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewHardDeleteLeaderboardAdminV1ParamsWithHTTPClient(client *http.Client) *HardDeleteLeaderboardAdminV1Params {
	var ()
	return &HardDeleteLeaderboardAdminV1Params{
		HTTPClient: client,
	}
}

/*HardDeleteLeaderboardAdminV1Params contains all the parameters to send to the API endpoint
for the hard delete leaderboard admin v1 operation typically these are written to a http.Request
*/
type HardDeleteLeaderboardAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LeaderboardCode
	  human readable unique code to indentify leaderboard. Must be lowercase and maximum length is 48

	*/
	LeaderboardCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) WithTimeout(timeout time.Duration) *HardDeleteLeaderboardAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) WithContext(ctx context.Context) *HardDeleteLeaderboardAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) WithHTTPClient(client *http.Client) *HardDeleteLeaderboardAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *HardDeleteLeaderboardAdminV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLeaderboardCode adds the leaderboardCode to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) WithLeaderboardCode(leaderboardCode string) *HardDeleteLeaderboardAdminV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) WithNamespace(namespace string) *HardDeleteLeaderboardAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the hard delete leaderboard admin v1 params
func (o *HardDeleteLeaderboardAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *HardDeleteLeaderboardAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
