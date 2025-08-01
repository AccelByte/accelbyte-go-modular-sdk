// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package global_achievements

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

// Deprecated: 2025-07-16 - Use AdminListUserContributionsSortBy<EnumValue>Constant instead.
// Get the enum in AdminListUserContributionsParams
const (
	AdminListUserContributionsContributedValueConstant     = "contributedValue"
	AdminListUserContributionsContributedValueAscConstant  = "contributedValue:asc"
	AdminListUserContributionsContributedValueDescConstant = "contributedValue:desc"
)

// Get the enum in AdminListUserContributionsParams
const (
	AdminListUserContributionsSortByContributedValueConstant     = "contributedValue"
	AdminListUserContributionsSortByContributedValueAscConstant  = "contributedValue:asc"
	AdminListUserContributionsSortByContributedValueDescConstant = "contributedValue:desc"
)

// NewAdminListUserContributionsParams creates a new AdminListUserContributionsParams object
// with the default values initialized.
func NewAdminListUserContributionsParams() *AdminListUserContributionsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &AdminListUserContributionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListUserContributionsParamsWithTimeout creates a new AdminListUserContributionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListUserContributionsParamsWithTimeout(timeout time.Duration) *AdminListUserContributionsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &AdminListUserContributionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminListUserContributionsParamsWithContext creates a new AdminListUserContributionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListUserContributionsParamsWithContext(ctx context.Context) *AdminListUserContributionsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &AdminListUserContributionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminListUserContributionsParamsWithHTTPClient creates a new AdminListUserContributionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListUserContributionsParamsWithHTTPClient(client *http.Client) *AdminListUserContributionsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("contributedValue:desc")
	)
	return &AdminListUserContributionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminListUserContributionsParams contains all the parameters to send to the API endpoint
for the admin list user contributions operation typically these are written to a http.Request
*/
type AdminListUserContributionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*AchievementCodes
	  achievement codes. multiple value separated by comma

	*/
	AchievementCodes *string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*SortBy
	  sort by, default is 'contributedValue:desc', allow values: [contributedValue, contributedValue:asc, contributedValue:desc]

	*/
	SortBy *string
	/*Tags
	  tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithTimeout(timeout time.Duration) *AdminListUserContributionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithContext(ctx context.Context) *AdminListUserContributionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithHTTPClient(client *http.Client) *AdminListUserContributionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListUserContributionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithNamespace(namespace string) *AdminListUserContributionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithUserID(userID string) *AdminListUserContributionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAchievementCodes adds the achievementCodes to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithAchievementCodes(achievementCodes *string) *AdminListUserContributionsParams {
	o.SetAchievementCodes(achievementCodes)
	return o
}

// SetAchievementCodes adds the achievementCodes to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetAchievementCodes(achievementCodes *string) {
	o.AchievementCodes = achievementCodes
}

// WithLimit adds the limit to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithLimit(limit *int64) *AdminListUserContributionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithOffset(offset *int64) *AdminListUserContributionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithSortBy(sortBy *string) *AdminListUserContributionsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithTags adds the tags to the admin list user contributions params
func (o *AdminListUserContributionsParams) WithTags(tags []string) *AdminListUserContributionsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin list user contributions params
func (o *AdminListUserContributionsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListUserContributionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.AchievementCodes != nil {

		// query param achievementCodes
		var qrAchievementCodes string
		if o.AchievementCodes != nil {
			qrAchievementCodes = *o.AchievementCodes
		}
		qAchievementCodes := qrAchievementCodes
		if qAchievementCodes != "" {
			if err := r.SetQueryParam("achievementCodes", qAchievementCodes); err != nil {
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

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
