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

// Deprecated: 2025-07-16 - Use AdminListGlobalAchievementsSortBy<EnumValue>Constant instead.
// Get the enum in AdminListGlobalAchievementsParams
const (
	AdminListGlobalAchievementsAchievedAtConstant     = "achievedAt"
	AdminListGlobalAchievementsAchievedAtAscConstant  = "achievedAt:asc"
	AdminListGlobalAchievementsAchievedAtDescConstant = "achievedAt:desc"
	AdminListGlobalAchievementsCreatedAtConstant      = "createdAt"
	AdminListGlobalAchievementsCreatedAtAscConstant   = "createdAt:asc"
	AdminListGlobalAchievementsCreatedAtDescConstant  = "createdAt:desc"
)

// Get the enum in AdminListGlobalAchievementsParams
const (
	AdminListGlobalAchievementsSortByAchievedAtConstant     = "achievedAt"
	AdminListGlobalAchievementsSortByAchievedAtAscConstant  = "achievedAt:asc"
	AdminListGlobalAchievementsSortByAchievedAtDescConstant = "achievedAt:desc"
	AdminListGlobalAchievementsSortByCreatedAtConstant      = "createdAt"
	AdminListGlobalAchievementsSortByCreatedAtAscConstant   = "createdAt:asc"
	AdminListGlobalAchievementsSortByCreatedAtDescConstant  = "createdAt:desc"
)

// NewAdminListGlobalAchievementsParams creates a new AdminListGlobalAchievementsParams object
// with the default values initialized.
func NewAdminListGlobalAchievementsParams() *AdminListGlobalAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
	)
	return &AdminListGlobalAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListGlobalAchievementsParamsWithTimeout creates a new AdminListGlobalAchievementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListGlobalAchievementsParamsWithTimeout(timeout time.Duration) *AdminListGlobalAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
	)
	return &AdminListGlobalAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminListGlobalAchievementsParamsWithContext creates a new AdminListGlobalAchievementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListGlobalAchievementsParamsWithContext(ctx context.Context) *AdminListGlobalAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
	)
	return &AdminListGlobalAchievementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminListGlobalAchievementsParamsWithHTTPClient creates a new AdminListGlobalAchievementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListGlobalAchievementsParamsWithHTTPClient(client *http.Client) *AdminListGlobalAchievementsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
	)
	return &AdminListGlobalAchievementsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminListGlobalAchievementsParams contains all the parameters to send to the API endpoint
for the admin list global achievements operation typically these are written to a http.Request
*/
type AdminListGlobalAchievementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*AchievementCodes
	  filter by achievement codes. multiple value separated by comma

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
	  sort by, allow values: [achievedAt, achievedAt:asc, achievedAt:desc, createdAt, createdAt:asc, createdAt:desc]

	*/
	SortBy *string
	/*Status
	  filter by status. available value: [in_progress, unlocked]

	*/
	Status *string
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

// WithTimeout adds the timeout to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithTimeout(timeout time.Duration) *AdminListGlobalAchievementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithContext(ctx context.Context) *AdminListGlobalAchievementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithHTTPClient(client *http.Client) *AdminListGlobalAchievementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListGlobalAchievementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithNamespace(namespace string) *AdminListGlobalAchievementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAchievementCodes adds the achievementCodes to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithAchievementCodes(achievementCodes *string) *AdminListGlobalAchievementsParams {
	o.SetAchievementCodes(achievementCodes)
	return o
}

// SetAchievementCodes adds the achievementCodes to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetAchievementCodes(achievementCodes *string) {
	o.AchievementCodes = achievementCodes
}

// WithLimit adds the limit to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithLimit(limit *int64) *AdminListGlobalAchievementsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithOffset(offset *int64) *AdminListGlobalAchievementsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithSortBy(sortBy *string) *AdminListGlobalAchievementsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithStatus(status *string) *AdminListGlobalAchievementsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetStatus(status *string) {
	o.Status = status
}

// WithTags adds the tags to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) WithTags(tags []string) *AdminListGlobalAchievementsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin list global achievements params
func (o *AdminListGlobalAchievementsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListGlobalAchievementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
