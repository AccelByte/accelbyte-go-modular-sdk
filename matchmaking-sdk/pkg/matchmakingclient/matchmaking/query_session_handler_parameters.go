// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

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

// NewQuerySessionHandlerParams creates a new QuerySessionHandlerParams object
// with the default values initialized.
func NewQuerySessionHandlerParams() *QuerySessionHandlerParams {
	var ()
	return &QuerySessionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQuerySessionHandlerParamsWithTimeout creates a new QuerySessionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQuerySessionHandlerParamsWithTimeout(timeout time.Duration) *QuerySessionHandlerParams {
	var ()
	return &QuerySessionHandlerParams{

		timeout: timeout,
	}
}

// NewQuerySessionHandlerParamsWithContext creates a new QuerySessionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewQuerySessionHandlerParamsWithContext(ctx context.Context) *QuerySessionHandlerParams {
	var ()
	return &QuerySessionHandlerParams{

		Context: ctx,
	}
}

// NewQuerySessionHandlerParamsWithHTTPClient creates a new QuerySessionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQuerySessionHandlerParamsWithHTTPClient(client *http.Client) *QuerySessionHandlerParams {
	var ()
	return &QuerySessionHandlerParams{
		HTTPClient: client,
	}
}

/*QuerySessionHandlerParams contains all the parameters to send to the API endpoint
for the query session handler operation typically these are written to a http.Request
*/
type QuerySessionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*MatchID
	  ID of the match session

	*/
	MatchID string
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

// WithTimeout adds the timeout to the query session handler params
func (o *QuerySessionHandlerParams) WithTimeout(timeout time.Duration) *QuerySessionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query session handler params
func (o *QuerySessionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query session handler params
func (o *QuerySessionHandlerParams) WithContext(ctx context.Context) *QuerySessionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query session handler params
func (o *QuerySessionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query session handler params
func (o *QuerySessionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query session handler params
func (o *QuerySessionHandlerParams) WithHTTPClient(client *http.Client) *QuerySessionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query session handler params
func (o *QuerySessionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query session handler params
func (o *QuerySessionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QuerySessionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithMatchID adds the matchID to the query session handler params
func (o *QuerySessionHandlerParams) WithMatchID(matchID string) *QuerySessionHandlerParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the query session handler params
func (o *QuerySessionHandlerParams) SetMatchID(matchID string) {
	o.MatchID = matchID
}

// WithNamespace adds the namespace to the query session handler params
func (o *QuerySessionHandlerParams) WithNamespace(namespace string) *QuerySessionHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query session handler params
func (o *QuerySessionHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *QuerySessionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param matchID
	if err := r.SetPathParam("matchID", o.MatchID); err != nil {
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
