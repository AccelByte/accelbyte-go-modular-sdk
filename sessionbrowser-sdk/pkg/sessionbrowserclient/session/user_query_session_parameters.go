// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

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

// NewUserQuerySessionParams creates a new UserQuerySessionParams object
// with the default values initialized.
func NewUserQuerySessionParams() *UserQuerySessionParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &UserQuerySessionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewUserQuerySessionParamsWithTimeout creates a new UserQuerySessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUserQuerySessionParamsWithTimeout(timeout time.Duration) *UserQuerySessionParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &UserQuerySessionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewUserQuerySessionParamsWithContext creates a new UserQuerySessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUserQuerySessionParamsWithContext(ctx context.Context) *UserQuerySessionParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &UserQuerySessionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewUserQuerySessionParamsWithHTTPClient creates a new UserQuerySessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUserQuerySessionParamsWithHTTPClient(client *http.Client) *UserQuerySessionParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &UserQuerySessionParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*UserQuerySessionParams contains all the parameters to send to the API endpoint
for the user query session operation typically these are written to a http.Request
*/
type UserQuerySessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*GameMode
	  Game mode of the session to query

	*/
	GameMode *string
	/*GameVersion
	  Game version of the session to query

	*/
	GameVersion *string
	/*Joinable
	  filter session if joinable or not, accept 'true' or 'false'

	*/
	Joinable *string
	/*Limit
	  max item to be returned

	*/
	Limit *int64
	/*MatchExist
	  filter session by match existence, accept 'true' or 'false'

	*/
	MatchExist *string
	/*MatchID
	  filter session by matchmaking ID

	*/
	MatchID *string
	/*Offset
	  skip some item(s), offset=3, will skip 3 first items

	*/
	Offset *int64
	/*ServerStatus
	  filter session by server status, accept CREATING,READY,BUSY,REMOVING,UNREACHABLE

	*/
	ServerStatus *string
	/*UserID
	  Owner of the P2P session. Dedicated server does not have user_id

	*/
	UserID *string
	/*SessionType
	  Session type to query, value is 'p2p' or 'dedicated'

	*/
	SessionType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the user query session params
func (o *UserQuerySessionParams) WithTimeout(timeout time.Duration) *UserQuerySessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the user query session params
func (o *UserQuerySessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the user query session params
func (o *UserQuerySessionParams) WithContext(ctx context.Context) *UserQuerySessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the user query session params
func (o *UserQuerySessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the user query session params
func (o *UserQuerySessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the user query session params
func (o *UserQuerySessionParams) WithHTTPClient(client *http.Client) *UserQuerySessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the user query session params
func (o *UserQuerySessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the user query session params
func (o *UserQuerySessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UserQuerySessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the user query session params
func (o *UserQuerySessionParams) WithNamespace(namespace string) *UserQuerySessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the user query session params
func (o *UserQuerySessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithGameMode adds the gameMode to the user query session params
func (o *UserQuerySessionParams) WithGameMode(gameMode *string) *UserQuerySessionParams {
	o.SetGameMode(gameMode)
	return o
}

// SetGameMode adds the gameMode to the user query session params
func (o *UserQuerySessionParams) SetGameMode(gameMode *string) {
	o.GameMode = gameMode
}

// WithGameVersion adds the gameVersion to the user query session params
func (o *UserQuerySessionParams) WithGameVersion(gameVersion *string) *UserQuerySessionParams {
	o.SetGameVersion(gameVersion)
	return o
}

// SetGameVersion adds the gameVersion to the user query session params
func (o *UserQuerySessionParams) SetGameVersion(gameVersion *string) {
	o.GameVersion = gameVersion
}

// WithJoinable adds the joinable to the user query session params
func (o *UserQuerySessionParams) WithJoinable(joinable *string) *UserQuerySessionParams {
	o.SetJoinable(joinable)
	return o
}

// SetJoinable adds the joinable to the user query session params
func (o *UserQuerySessionParams) SetJoinable(joinable *string) {
	o.Joinable = joinable
}

// WithLimit adds the limit to the user query session params
func (o *UserQuerySessionParams) WithLimit(limit *int64) *UserQuerySessionParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the user query session params
func (o *UserQuerySessionParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithMatchExist adds the matchExist to the user query session params
func (o *UserQuerySessionParams) WithMatchExist(matchExist *string) *UserQuerySessionParams {
	o.SetMatchExist(matchExist)
	return o
}

// SetMatchExist adds the matchExist to the user query session params
func (o *UserQuerySessionParams) SetMatchExist(matchExist *string) {
	o.MatchExist = matchExist
}

// WithMatchID adds the matchID to the user query session params
func (o *UserQuerySessionParams) WithMatchID(matchID *string) *UserQuerySessionParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the user query session params
func (o *UserQuerySessionParams) SetMatchID(matchID *string) {
	o.MatchID = matchID
}

// WithOffset adds the offset to the user query session params
func (o *UserQuerySessionParams) WithOffset(offset *int64) *UserQuerySessionParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the user query session params
func (o *UserQuerySessionParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithServerStatus adds the serverStatus to the user query session params
func (o *UserQuerySessionParams) WithServerStatus(serverStatus *string) *UserQuerySessionParams {
	o.SetServerStatus(serverStatus)
	return o
}

// SetServerStatus adds the serverStatus to the user query session params
func (o *UserQuerySessionParams) SetServerStatus(serverStatus *string) {
	o.ServerStatus = serverStatus
}

// WithUserID adds the userID to the user query session params
func (o *UserQuerySessionParams) WithUserID(userID *string) *UserQuerySessionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the user query session params
func (o *UserQuerySessionParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WithSessionType adds the sessionType to the user query session params
func (o *UserQuerySessionParams) WithSessionType(sessionType string) *UserQuerySessionParams {
	o.SetSessionType(sessionType)
	return o
}

// SetSessionType adds the sessionType to the user query session params
func (o *UserQuerySessionParams) SetSessionType(sessionType string) {
	o.SessionType = sessionType
}

// WriteToRequest writes these params to a swagger request
func (o *UserQuerySessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.GameMode != nil {

		// query param game_mode
		var qrGameMode string
		if o.GameMode != nil {
			qrGameMode = *o.GameMode
		}
		qGameMode := qrGameMode
		if qGameMode != "" {
			if err := r.SetQueryParam("game_mode", qGameMode); err != nil {
				return err
			}
		}

	}

	if o.GameVersion != nil {

		// query param game_version
		var qrGameVersion string
		if o.GameVersion != nil {
			qrGameVersion = *o.GameVersion
		}
		qGameVersion := qrGameVersion
		if qGameVersion != "" {
			if err := r.SetQueryParam("game_version", qGameVersion); err != nil {
				return err
			}
		}

	}

	if o.Joinable != nil {

		// query param joinable
		var qrJoinable string
		if o.Joinable != nil {
			qrJoinable = *o.Joinable
		}
		qJoinable := qrJoinable
		if qJoinable != "" {
			if err := r.SetQueryParam("joinable", qJoinable); err != nil {
				return err
			}
		}

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

	if o.MatchExist != nil {

		// query param match_exist
		var qrMatchExist string
		if o.MatchExist != nil {
			qrMatchExist = *o.MatchExist
		}
		qMatchExist := qrMatchExist
		if qMatchExist != "" {
			if err := r.SetQueryParam("match_exist", qMatchExist); err != nil {
				return err
			}
		}

	}

	if o.MatchID != nil {

		// query param match_id
		var qrMatchID string
		if o.MatchID != nil {
			qrMatchID = *o.MatchID
		}
		qMatchID := qrMatchID
		if qMatchID != "" {
			if err := r.SetQueryParam("match_id", qMatchID); err != nil {
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

	if o.ServerStatus != nil {

		// query param server_status
		var qrServerStatus string
		if o.ServerStatus != nil {
			qrServerStatus = *o.ServerStatus
		}
		qServerStatus := qrServerStatus
		if qServerStatus != "" {
			if err := r.SetQueryParam("server_status", qServerStatus); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param user_id
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("user_id", qUserID); err != nil {
				return err
			}
		}

	}

	// query param session_type
	qrSessionType := o.SessionType
	qSessionType := qrSessionType
	if qSessionType != "" {
		if err := r.SetQueryParam("session_type", qSessionType); err != nil {
			return err
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
