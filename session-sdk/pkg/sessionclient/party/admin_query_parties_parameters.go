// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// NewAdminQueryPartiesParams creates a new AdminQueryPartiesParams object
// with the default values initialized.
func NewAdminQueryPartiesParams() *AdminQueryPartiesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryPartiesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryPartiesParamsWithTimeout creates a new AdminQueryPartiesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryPartiesParamsWithTimeout(timeout time.Duration) *AdminQueryPartiesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryPartiesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminQueryPartiesParamsWithContext creates a new AdminQueryPartiesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryPartiesParamsWithContext(ctx context.Context) *AdminQueryPartiesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryPartiesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminQueryPartiesParamsWithHTTPClient creates a new AdminQueryPartiesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryPartiesParamsWithHTTPClient(client *http.Client) *AdminQueryPartiesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminQueryPartiesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminQueryPartiesParams contains all the parameters to send to the API endpoint
for the admin query parties operation typically these are written to a http.Request
*/
type AdminQueryPartiesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Joinability
	  Join type

	*/
	Joinability *string
	/*Key
	  Attribute key

	*/
	Key *string
	/*LeaderID
	  Leader ID

	*/
	LeaderID *string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*MemberID
	  Member ID

	*/
	MemberID *string
	/*MemberStatus
	  Member status

	*/
	MemberStatus *string
	/*Offset
	  Pagination offset

	*/
	Offset *int64
	/*Order
	  Order of the result. Supported: desc (default), asc

	*/
	Order *string
	/*OrderBy
	  Order result by specific attribute. Supported: createdAt (default), updatedAt

	*/
	OrderBy *string
	/*Value
	  Attribute value

	*/
	Value *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin query parties params
func (o *AdminQueryPartiesParams) WithTimeout(timeout time.Duration) *AdminQueryPartiesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query parties params
func (o *AdminQueryPartiesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query parties params
func (o *AdminQueryPartiesParams) WithContext(ctx context.Context) *AdminQueryPartiesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query parties params
func (o *AdminQueryPartiesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query parties params
func (o *AdminQueryPartiesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query parties params
func (o *AdminQueryPartiesParams) WithHTTPClient(client *http.Client) *AdminQueryPartiesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query parties params
func (o *AdminQueryPartiesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query parties params
func (o *AdminQueryPartiesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin query parties params
func (o *AdminQueryPartiesParams) WithNamespace(namespace string) *AdminQueryPartiesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query parties params
func (o *AdminQueryPartiesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithJoinability adds the joinability to the admin query parties params
func (o *AdminQueryPartiesParams) WithJoinability(joinability *string) *AdminQueryPartiesParams {
	o.SetJoinability(joinability)
	return o
}

// SetJoinability adds the joinability to the admin query parties params
func (o *AdminQueryPartiesParams) SetJoinability(joinability *string) {
	o.Joinability = joinability
}

// WithKey adds the key to the admin query parties params
func (o *AdminQueryPartiesParams) WithKey(key *string) *AdminQueryPartiesParams {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin query parties params
func (o *AdminQueryPartiesParams) SetKey(key *string) {
	o.Key = key
}

// WithLeaderID adds the leaderID to the admin query parties params
func (o *AdminQueryPartiesParams) WithLeaderID(leaderID *string) *AdminQueryPartiesParams {
	o.SetLeaderID(leaderID)
	return o
}

// SetLeaderID adds the leaderId to the admin query parties params
func (o *AdminQueryPartiesParams) SetLeaderID(leaderID *string) {
	o.LeaderID = leaderID
}

// WithLimit adds the limit to the admin query parties params
func (o *AdminQueryPartiesParams) WithLimit(limit *int64) *AdminQueryPartiesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query parties params
func (o *AdminQueryPartiesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithMemberID adds the memberID to the admin query parties params
func (o *AdminQueryPartiesParams) WithMemberID(memberID *string) *AdminQueryPartiesParams {
	o.SetMemberID(memberID)
	return o
}

// SetMemberID adds the memberId to the admin query parties params
func (o *AdminQueryPartiesParams) SetMemberID(memberID *string) {
	o.MemberID = memberID
}

// WithMemberStatus adds the memberStatus to the admin query parties params
func (o *AdminQueryPartiesParams) WithMemberStatus(memberStatus *string) *AdminQueryPartiesParams {
	o.SetMemberStatus(memberStatus)
	return o
}

// SetMemberStatus adds the memberStatus to the admin query parties params
func (o *AdminQueryPartiesParams) SetMemberStatus(memberStatus *string) {
	o.MemberStatus = memberStatus
}

// WithOffset adds the offset to the admin query parties params
func (o *AdminQueryPartiesParams) WithOffset(offset *int64) *AdminQueryPartiesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query parties params
func (o *AdminQueryPartiesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the admin query parties params
func (o *AdminQueryPartiesParams) WithOrder(order *string) *AdminQueryPartiesParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the admin query parties params
func (o *AdminQueryPartiesParams) SetOrder(order *string) {
	o.Order = order
}

// WithOrderBy adds the orderBy to the admin query parties params
func (o *AdminQueryPartiesParams) WithOrderBy(orderBy *string) *AdminQueryPartiesParams {
	o.SetOrderBy(orderBy)
	return o
}

// SetOrderBy adds the orderBy to the admin query parties params
func (o *AdminQueryPartiesParams) SetOrderBy(orderBy *string) {
	o.OrderBy = orderBy
}

// WithValue adds the value to the admin query parties params
func (o *AdminQueryPartiesParams) WithValue(value *string) *AdminQueryPartiesParams {
	o.SetValue(value)
	return o
}

// SetValue adds the value to the admin query parties params
func (o *AdminQueryPartiesParams) SetValue(value *string) {
	o.Value = value
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryPartiesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Joinability != nil {

		// query param joinability
		var qrJoinability string
		if o.Joinability != nil {
			qrJoinability = *o.Joinability
		}
		qJoinability := qrJoinability
		if qJoinability != "" {
			if err := r.SetQueryParam("joinability", qJoinability); err != nil {
				return err
			}
		}

	}

	if o.Key != nil {

		// query param key
		var qrKey string
		if o.Key != nil {
			qrKey = *o.Key
		}
		qKey := qrKey
		if qKey != "" {
			if err := r.SetQueryParam("key", qKey); err != nil {
				return err
			}
		}

	}

	if o.LeaderID != nil {

		// query param leaderID
		var qrLeaderID string
		if o.LeaderID != nil {
			qrLeaderID = *o.LeaderID
		}
		qLeaderID := qrLeaderID
		if qLeaderID != "" {
			if err := r.SetQueryParam("leaderID", qLeaderID); err != nil {
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

	if o.MemberID != nil {

		// query param memberID
		var qrMemberID string
		if o.MemberID != nil {
			qrMemberID = *o.MemberID
		}
		qMemberID := qrMemberID
		if qMemberID != "" {
			if err := r.SetQueryParam("memberID", qMemberID); err != nil {
				return err
			}
		}

	}

	if o.MemberStatus != nil {

		// query param memberStatus
		var qrMemberStatus string
		if o.MemberStatus != nil {
			qrMemberStatus = *o.MemberStatus
		}
		qMemberStatus := qrMemberStatus
		if qMemberStatus != "" {
			if err := r.SetQueryParam("memberStatus", qMemberStatus); err != nil {
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

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.OrderBy != nil {

		// query param orderBy
		var qrOrderBy string
		if o.OrderBy != nil {
			qrOrderBy = *o.OrderBy
		}
		qOrderBy := qrOrderBy
		if qOrderBy != "" {
			if err := r.SetQueryParam("orderBy", qOrderBy); err != nil {
				return err
			}
		}

	}

	if o.Value != nil {

		// query param value
		var qrValue string
		if o.Value != nil {
			qrValue = *o.Value
		}
		qValue := qrValue
		if qValue != "" {
			if err := r.SetQueryParam("value", qValue); err != nil {
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
