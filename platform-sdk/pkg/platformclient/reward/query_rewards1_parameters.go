// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package reward

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewQueryRewards1Params creates a new QueryRewards1Params object
// with the default values initialized.
func NewQueryRewards1Params() *QueryRewards1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = []string{"namespace:asc", "rewardCode:asc"}
	)
	return &QueryRewards1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryRewards1ParamsWithTimeout creates a new QueryRewards1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryRewards1ParamsWithTimeout(timeout time.Duration) *QueryRewards1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = []string{"namespace:asc", "rewardCode:asc"}
	)
	return &QueryRewards1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: sortByDefault,

		timeout: timeout,
	}
}

// NewQueryRewards1ParamsWithContext creates a new QueryRewards1Params object
// with the default values initialized, and the ability to set a context for a request
func NewQueryRewards1ParamsWithContext(ctx context.Context) *QueryRewards1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = []string{"namespace:asc", "rewardCode:asc"}
	)
	return &QueryRewards1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: sortByDefault,

		Context: ctx,
	}
}

// NewQueryRewards1ParamsWithHTTPClient creates a new QueryRewards1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryRewards1ParamsWithHTTPClient(client *http.Client) *QueryRewards1Params {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
		sortByDefault = []string{"namespace:asc", "rewardCode:asc"}
	)
	return &QueryRewards1Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     sortByDefault,
		HTTPClient: client,
	}
}

/*
QueryRewards1Params contains all the parameters to send to the API endpoint
for the query rewards 1 operation typically these are written to a http.Request
*/
type QueryRewards1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EventTopic
	  event topic

	*/
	EventTopic *string
	/*Limit
	  limit

	*/
	Limit *int32
	/*Namespace*/
	Namespace string
	/*Offset
	  offset

	*/
	Offset *int32
	/*SortBy
	  default is namespace:asc,rewardCode:asc, allow values: [namespace, namespace:asc, namespace:desc, rewardCode, rewardCode:asc, rewardCode:desc],and support sort group, eg: sortBy=namespace:asc,rewardCode:asc

	*/
	SortBy []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query rewards 1 params
func (o *QueryRewards1Params) WithTimeout(timeout time.Duration) *QueryRewards1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query rewards 1 params
func (o *QueryRewards1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query rewards 1 params
func (o *QueryRewards1Params) WithContext(ctx context.Context) *QueryRewards1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query rewards 1 params
func (o *QueryRewards1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query rewards 1 params
func (o *QueryRewards1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query rewards 1 params
func (o *QueryRewards1Params) WithHTTPClient(client *http.Client) *QueryRewards1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query rewards 1 params
func (o *QueryRewards1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query rewards 1 params
func (o *QueryRewards1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithEventTopic adds the eventTopic to the query rewards 1 params
func (o *QueryRewards1Params) WithEventTopic(eventTopic *string) *QueryRewards1Params {
	o.SetEventTopic(eventTopic)
	return o
}

// SetEventTopic adds the eventTopic to the query rewards 1 params
func (o *QueryRewards1Params) SetEventTopic(eventTopic *string) {
	o.EventTopic = eventTopic
}

// WithLimit adds the limit to the query rewards 1 params
func (o *QueryRewards1Params) WithLimit(limit *int32) *QueryRewards1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query rewards 1 params
func (o *QueryRewards1Params) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the query rewards 1 params
func (o *QueryRewards1Params) WithNamespace(namespace string) *QueryRewards1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query rewards 1 params
func (o *QueryRewards1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the query rewards 1 params
func (o *QueryRewards1Params) WithOffset(offset *int32) *QueryRewards1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query rewards 1 params
func (o *QueryRewards1Params) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the query rewards 1 params
func (o *QueryRewards1Params) WithSortBy(sortBy []string) *QueryRewards1Params {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the query rewards 1 params
func (o *QueryRewards1Params) SetSortBy(sortBy []string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *QueryRewards1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	joinedSortBy := swag.JoinByFormat(valuesSortBy, "")
	// query array param sortBy
	if err := r.SetQueryParam("sortBy", joinedSortBy...); err != nil {
		return err
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
