// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

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

// Deprecated: 2025-07-16 - Use QueryRewardsSortBy<EnumValue>Constant instead.
// Get the enum in QueryRewardsParams
const (
	QueryRewardsNamespaceConstant      = "namespace"
	QueryRewardsNamespaceAscConstant   = "namespace:asc"
	QueryRewardsNamespaceDescConstant  = "namespace:desc"
	QueryRewardsRewardCodeConstant     = "rewardCode"
	QueryRewardsRewardCodeAscConstant  = "rewardCode:asc"
	QueryRewardsRewardCodeDescConstant = "rewardCode:desc"
)

// Get the enum in QueryRewardsParams
const (
	QueryRewardsSortByNamespaceConstant      = "namespace"
	QueryRewardsSortByNamespaceAscConstant   = "namespace:asc"
	QueryRewardsSortByNamespaceDescConstant  = "namespace:desc"
	QueryRewardsSortByRewardCodeConstant     = "rewardCode"
	QueryRewardsSortByRewardCodeAscConstant  = "rewardCode:asc"
	QueryRewardsSortByRewardCodeDescConstant = "rewardCode:desc"
)

// NewQueryRewardsParams creates a new QueryRewardsParams object
// with the default values initialized.
func NewQueryRewardsParams() *QueryRewardsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = []string{"namespaceAsc", "rewardCodeAsc"}
	)
	return &QueryRewardsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryRewardsParamsWithTimeout creates a new QueryRewardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryRewardsParamsWithTimeout(timeout time.Duration) *QueryRewardsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = []string{"namespaceAsc", "rewardCodeAsc"}
	)
	return &QueryRewardsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: sortByDefault,

		timeout: timeout,
	}
}

// NewQueryRewardsParamsWithContext creates a new QueryRewardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryRewardsParamsWithContext(ctx context.Context) *QueryRewardsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = []string{"namespaceAsc", "rewardCodeAsc"}
	)
	return &QueryRewardsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: sortByDefault,

		Context: ctx,
	}
}

// NewQueryRewardsParamsWithHTTPClient creates a new QueryRewardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryRewardsParamsWithHTTPClient(client *http.Client) *QueryRewardsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = []string{"namespaceAsc", "rewardCodeAsc"}
	)
	return &QueryRewardsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     sortByDefault,
		HTTPClient: client,
	}
}

/*QueryRewardsParams contains all the parameters to send to the API endpoint
for the query rewards operation typically these are written to a http.Request
*/
type QueryRewardsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*EventTopic*/
	EventTopic *string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*SortBy
	  default is namespace:asc,rewardCode:asc, allow values: [namespace, namespace:asc, namespace:desc, rewardCode, rewardCode:asc, rewardCode:desc, createdAt:asc, createdAt:desc],and support sort group, eg: sortBy=namespace:asc,rewardCode:asc

	*/
	SortBy []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query rewards params
func (o *QueryRewardsParams) WithTimeout(timeout time.Duration) *QueryRewardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query rewards params
func (o *QueryRewardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query rewards params
func (o *QueryRewardsParams) WithContext(ctx context.Context) *QueryRewardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query rewards params
func (o *QueryRewardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query rewards params
func (o *QueryRewardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query rewards params
func (o *QueryRewardsParams) WithHTTPClient(client *http.Client) *QueryRewardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query rewards params
func (o *QueryRewardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query rewards params
func (o *QueryRewardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryRewardsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query rewards params
func (o *QueryRewardsParams) WithNamespace(namespace string) *QueryRewardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query rewards params
func (o *QueryRewardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEventTopic adds the eventTopic to the query rewards params
func (o *QueryRewardsParams) WithEventTopic(eventTopic *string) *QueryRewardsParams {
	o.SetEventTopic(eventTopic)
	return o
}

// SetEventTopic adds the eventTopic to the query rewards params
func (o *QueryRewardsParams) SetEventTopic(eventTopic *string) {
	o.EventTopic = eventTopic
}

// WithLimit adds the limit to the query rewards params
func (o *QueryRewardsParams) WithLimit(limit *int32) *QueryRewardsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query rewards params
func (o *QueryRewardsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query rewards params
func (o *QueryRewardsParams) WithOffset(offset *int32) *QueryRewardsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query rewards params
func (o *QueryRewardsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the query rewards params
func (o *QueryRewardsParams) WithSortBy(sortBy []string) *QueryRewardsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the query rewards params
func (o *QueryRewardsParams) SetSortBy(sortBy []string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *QueryRewardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.EventTopic != nil {

		// query param eventTopic
		var qrEventTopic string
		if o.EventTopic != nil {
			qrEventTopic = *o.EventTopic
		}
		qEventTopic := qrEventTopic
		if qEventTopic != "" {
			if err := r.SetQueryParam("eventTopic", qEventTopic); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	valuesSortBy := o.SortBy

	joinedSortBy := swag.JoinByFormat(valuesSortBy, "csv")
	// query array param sortBy
	if err := r.SetQueryParam("sortBy", joinedSortBy...); err != nil {
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
