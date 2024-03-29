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

// NewDeleteUserFromSessionInChannelParams creates a new DeleteUserFromSessionInChannelParams object
// with the default values initialized.
func NewDeleteUserFromSessionInChannelParams() *DeleteUserFromSessionInChannelParams {
	var ()
	return &DeleteUserFromSessionInChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserFromSessionInChannelParamsWithTimeout creates a new DeleteUserFromSessionInChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserFromSessionInChannelParamsWithTimeout(timeout time.Duration) *DeleteUserFromSessionInChannelParams {
	var ()
	return &DeleteUserFromSessionInChannelParams{

		timeout: timeout,
	}
}

// NewDeleteUserFromSessionInChannelParamsWithContext creates a new DeleteUserFromSessionInChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserFromSessionInChannelParamsWithContext(ctx context.Context) *DeleteUserFromSessionInChannelParams {
	var ()
	return &DeleteUserFromSessionInChannelParams{

		Context: ctx,
	}
}

// NewDeleteUserFromSessionInChannelParamsWithHTTPClient creates a new DeleteUserFromSessionInChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserFromSessionInChannelParamsWithHTTPClient(client *http.Client) *DeleteUserFromSessionInChannelParams {
	var ()
	return &DeleteUserFromSessionInChannelParams{
		HTTPClient: client,
	}
}

/*DeleteUserFromSessionInChannelParams contains all the parameters to send to the API endpoint
for the delete user from session in channel operation typically these are written to a http.Request
*/
type DeleteUserFromSessionInChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelName
	  channel name, accept snake_case, lowercase, and numeric

	*/
	ChannelName string
	/*MatchID
	  ID of the match session

	*/
	MatchID string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  ID of the user

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) WithTimeout(timeout time.Duration) *DeleteUserFromSessionInChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) WithContext(ctx context.Context) *DeleteUserFromSessionInChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) WithHTTPClient(client *http.Client) *DeleteUserFromSessionInChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteUserFromSessionInChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChannelName adds the channelName to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) WithChannelName(channelName string) *DeleteUserFromSessionInChannelParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithMatchID adds the matchID to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) WithMatchID(matchID string) *DeleteUserFromSessionInChannelParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) SetMatchID(matchID string) {
	o.MatchID = matchID
}

// WithNamespace adds the namespace to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) WithNamespace(namespace string) *DeleteUserFromSessionInChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) WithUserID(userID string) *DeleteUserFromSessionInChannelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user from session in channel params
func (o *DeleteUserFromSessionInChannelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserFromSessionInChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelName
	if err := r.SetPathParam("channelName", o.ChannelName); err != nil {
		return err
	}

	// path param matchID
	if err := r.SetPathParam("matchID", o.MatchID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userID
	if err := r.SetPathParam("userID", o.UserID); err != nil {
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
