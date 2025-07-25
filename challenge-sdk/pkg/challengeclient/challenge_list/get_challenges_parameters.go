// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challenge_list

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

// Deprecated: 2025-07-16 - Use GetChallengesSortBy<EnumValue>Constant instead.
// Get the enum in GetChallengesParams
const (
	GetChallengesCreatedAtConstant     = "createdAt"
	GetChallengesCreatedAtAscConstant  = "createdAt:asc"
	GetChallengesCreatedAtDescConstant = "createdAt:desc"
	GetChallengesUpdatedAtConstant     = "updatedAt"
	GetChallengesUpdatedAtAscConstant  = "updatedAt:asc"
	GetChallengesUpdatedAtDescConstant = "updatedAt:desc"
)

// Deprecated: 2025-07-16 - Use GetChallengesStatus<EnumValue>Constant instead.
// Get the enum in GetChallengesParams
const (
	GetChallengesINITConstant    = "INIT"
	GetChallengesRETIREDConstant = "RETIRED"
	GetChallengesTIEDConstant    = "TIED"
)

// Get the enum in GetChallengesParams
const (
	GetChallengesSortByCreatedAtConstant     = "createdAt"
	GetChallengesSortByCreatedAtAscConstant  = "createdAt:asc"
	GetChallengesSortByCreatedAtDescConstant = "createdAt:desc"
	GetChallengesSortByUpdatedAtConstant     = "updatedAt"
	GetChallengesSortByUpdatedAtAscConstant  = "updatedAt:asc"
	GetChallengesSortByUpdatedAtDescConstant = "updatedAt:desc"
)

// Get the enum in GetChallengesParams
const (
	GetChallengesStatusINITConstant    = "INIT"
	GetChallengesStatusRETIREDConstant = "RETIRED"
	GetChallengesStatusTIEDConstant    = "TIED"
)

// NewGetChallengesParams creates a new GetChallengesParams object
// with the default values initialized.
func NewGetChallengesParams() *GetChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetChallengesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetChallengesParamsWithTimeout creates a new GetChallengesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetChallengesParamsWithTimeout(timeout time.Duration) *GetChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetChallengesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetChallengesParamsWithContext creates a new GetChallengesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetChallengesParamsWithContext(ctx context.Context) *GetChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetChallengesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetChallengesParamsWithHTTPClient creates a new GetChallengesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetChallengesParamsWithHTTPClient(client *http.Client) *GetChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetChallengesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetChallengesParams contains all the parameters to send to the API endpoint
for the get challenges operation typically these are written to a http.Request
*/
type GetChallengesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Keyword
	  filter challenges by code with likes behavior

	*/
	Keyword *string
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
	  challenge status

	*/
	Status *string
	/*Tags
	  filter challenges by tags, comma separated value

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get challenges params
func (o *GetChallengesParams) WithTimeout(timeout time.Duration) *GetChallengesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get challenges params
func (o *GetChallengesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get challenges params
func (o *GetChallengesParams) WithContext(ctx context.Context) *GetChallengesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get challenges params
func (o *GetChallengesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get challenges params
func (o *GetChallengesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get challenges params
func (o *GetChallengesParams) WithHTTPClient(client *http.Client) *GetChallengesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get challenges params
func (o *GetChallengesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get challenges params
func (o *GetChallengesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetChallengesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get challenges params
func (o *GetChallengesParams) WithNamespace(namespace string) *GetChallengesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get challenges params
func (o *GetChallengesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithKeyword adds the keyword to the get challenges params
func (o *GetChallengesParams) WithKeyword(keyword *string) *GetChallengesParams {
	o.SetKeyword(keyword)
	return o
}

// SetKeyword adds the keyword to the get challenges params
func (o *GetChallengesParams) SetKeyword(keyword *string) {
	o.Keyword = keyword
}

// WithLimit adds the limit to the get challenges params
func (o *GetChallengesParams) WithLimit(limit *int64) *GetChallengesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get challenges params
func (o *GetChallengesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get challenges params
func (o *GetChallengesParams) WithOffset(offset *int64) *GetChallengesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get challenges params
func (o *GetChallengesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the get challenges params
func (o *GetChallengesParams) WithSortBy(sortBy *string) *GetChallengesParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the get challenges params
func (o *GetChallengesParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the get challenges params
func (o *GetChallengesParams) WithStatus(status *string) *GetChallengesParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the get challenges params
func (o *GetChallengesParams) SetStatus(status *string) {
	o.Status = status
}

// WithTags adds the tags to the get challenges params
func (o *GetChallengesParams) WithTags(tags []string) *GetChallengesParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the get challenges params
func (o *GetChallengesParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *GetChallengesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Keyword != nil {

		// query param keyword
		var qrKeyword string
		if o.Keyword != nil {
			qrKeyword = *o.Keyword
		}
		qKeyword := qrKeyword
		if qKeyword != "" {
			if err := r.SetQueryParam("keyword", qKeyword); err != nil {
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
