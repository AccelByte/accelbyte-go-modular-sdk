// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player_reward

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

// Deprecated: 2025-07-16 - Use AdminGetUserRewardsSortBy<EnumValue>Constant instead.
// Get the enum in AdminGetUserRewardsParams
const (
	AdminGetUserRewardsCreatedAtConstant     = "createdAt"
	AdminGetUserRewardsCreatedAtAscConstant  = "createdAt:asc"
	AdminGetUserRewardsCreatedAtDescConstant = "createdAt:desc"
	AdminGetUserRewardsUpdatedAtConstant     = "updatedAt"
	AdminGetUserRewardsUpdatedAtAscConstant  = "updatedAt:asc"
	AdminGetUserRewardsUpdatedAtDescConstant = "updatedAt:desc"
)

// Deprecated: 2025-07-16 - Use AdminGetUserRewardsStatus<EnumValue>Constant instead.
// Get the enum in AdminGetUserRewardsParams
const (
	AdminGetUserRewardsCLAIMEDConstant   = "CLAIMED"
	AdminGetUserRewardsUNCLAIMEDConstant = "UNCLAIMED"
)

// Get the enum in AdminGetUserRewardsParams
const (
	AdminGetUserRewardsSortByCreatedAtConstant     = "createdAt"
	AdminGetUserRewardsSortByCreatedAtAscConstant  = "createdAt:asc"
	AdminGetUserRewardsSortByCreatedAtDescConstant = "createdAt:desc"
	AdminGetUserRewardsSortByUpdatedAtConstant     = "updatedAt"
	AdminGetUserRewardsSortByUpdatedAtAscConstant  = "updatedAt:asc"
	AdminGetUserRewardsSortByUpdatedAtDescConstant = "updatedAt:desc"
)

// Get the enum in AdminGetUserRewardsParams
const (
	AdminGetUserRewardsStatusCLAIMEDConstant   = "CLAIMED"
	AdminGetUserRewardsStatusUNCLAIMEDConstant = "UNCLAIMED"
)

// NewAdminGetUserRewardsParams creates a new AdminGetUserRewardsParams object
// with the default values initialized.
func NewAdminGetUserRewardsParams() *AdminGetUserRewardsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetUserRewardsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserRewardsParamsWithTimeout creates a new AdminGetUserRewardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserRewardsParamsWithTimeout(timeout time.Duration) *AdminGetUserRewardsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetUserRewardsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetUserRewardsParamsWithContext creates a new AdminGetUserRewardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserRewardsParamsWithContext(ctx context.Context) *AdminGetUserRewardsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetUserRewardsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetUserRewardsParamsWithHTTPClient creates a new AdminGetUserRewardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserRewardsParamsWithHTTPClient(client *http.Client) *AdminGetUserRewardsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetUserRewardsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetUserRewardsParams contains all the parameters to send to the API endpoint
for the admin get user rewards operation typically these are written to a http.Request
*/
type AdminGetUserRewardsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string
	/*ChallengeCode
	  reward's challenge code

	*/
	ChallengeCode *string
	/*GoalProgressionID
	  reward's goal progression id

	*/
	GoalProgressionID *string
	/*Limit
	  limit the amount of data retrieved

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*SortBy
	    sort list by attributes.
				default value: updatedAt:desc.

	*/
	SortBy *string
	/*Status
	  user reward status

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithTimeout(timeout time.Duration) *AdminGetUserRewardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithContext(ctx context.Context) *AdminGetUserRewardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithHTTPClient(client *http.Client) *AdminGetUserRewardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserRewardsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithNamespace(namespace string) *AdminGetUserRewardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithUserID(userID string) *AdminGetUserRewardsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithChallengeCode adds the challengeCode to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithChallengeCode(challengeCode *string) *AdminGetUserRewardsParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetChallengeCode(challengeCode *string) {
	o.ChallengeCode = challengeCode
}

// WithGoalProgressionID adds the goalProgressionID to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithGoalProgressionID(goalProgressionID *string) *AdminGetUserRewardsParams {
	o.SetGoalProgressionID(goalProgressionID)
	return o
}

// SetGoalProgressionID adds the goalProgressionId to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetGoalProgressionID(goalProgressionID *string) {
	o.GoalProgressionID = goalProgressionID
}

// WithLimit adds the limit to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithLimit(limit *int64) *AdminGetUserRewardsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithOffset(offset *int64) *AdminGetUserRewardsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithSortBy(sortBy *string) *AdminGetUserRewardsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the admin get user rewards params
func (o *AdminGetUserRewardsParams) WithStatus(status *string) *AdminGetUserRewardsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin get user rewards params
func (o *AdminGetUserRewardsParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserRewardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.ChallengeCode != nil {

		// query param challengeCode
		var qrChallengeCode string
		if o.ChallengeCode != nil {
			qrChallengeCode = *o.ChallengeCode
		}
		qChallengeCode := qrChallengeCode
		if qChallengeCode != "" {
			if err := r.SetQueryParam("challengeCode", qChallengeCode); err != nil {
				return err
			}
		}

	}

	if o.GoalProgressionID != nil {

		// query param goalProgressionId
		var qrGoalProgressionID string
		if o.GoalProgressionID != nil {
			qrGoalProgressionID = *o.GoalProgressionID
		}
		qGoalProgressionID := qrGoalProgressionID
		if qGoalProgressionID != "" {
			if err := r.SetQueryParam("goalProgressionId", qGoalProgressionID); err != nil {
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

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
