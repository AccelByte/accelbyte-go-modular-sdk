// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

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

// NewGetUserSubscriptionBillingHistoriesParams creates a new GetUserSubscriptionBillingHistoriesParams object
// with the default values initialized.
func NewGetUserSubscriptionBillingHistoriesParams() *GetUserSubscriptionBillingHistoriesParams {
	var (
		excludeFreeDefault = bool(false)
		limitDefault       = int32(20)
		offsetDefault      = int32(0)
	)
	return &GetUserSubscriptionBillingHistoriesParams{
		ExcludeFree: &excludeFreeDefault,
		Limit:       &limitDefault,
		Offset:      &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserSubscriptionBillingHistoriesParamsWithTimeout creates a new GetUserSubscriptionBillingHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserSubscriptionBillingHistoriesParamsWithTimeout(timeout time.Duration) *GetUserSubscriptionBillingHistoriesParams {
	var (
		excludeFreeDefault = bool(false)
		limitDefault       = int32(20)
		offsetDefault      = int32(0)
	)
	return &GetUserSubscriptionBillingHistoriesParams{
		ExcludeFree: &excludeFreeDefault,
		Limit:       &limitDefault,
		Offset:      &offsetDefault,

		timeout: timeout,
	}
}

// NewGetUserSubscriptionBillingHistoriesParamsWithContext creates a new GetUserSubscriptionBillingHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserSubscriptionBillingHistoriesParamsWithContext(ctx context.Context) *GetUserSubscriptionBillingHistoriesParams {
	var (
		excludeFreeDefault = bool(false)
		limitDefault       = int32(20)
		offsetDefault      = int32(0)
	)
	return &GetUserSubscriptionBillingHistoriesParams{
		ExcludeFree: &excludeFreeDefault,
		Limit:       &limitDefault,
		Offset:      &offsetDefault,

		Context: ctx,
	}
}

// NewGetUserSubscriptionBillingHistoriesParamsWithHTTPClient creates a new GetUserSubscriptionBillingHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserSubscriptionBillingHistoriesParamsWithHTTPClient(client *http.Client) *GetUserSubscriptionBillingHistoriesParams {
	var (
		excludeFreeDefault = bool(false)
		limitDefault       = int32(20)
		offsetDefault      = int32(0)
	)
	return &GetUserSubscriptionBillingHistoriesParams{
		ExcludeFree: &excludeFreeDefault,
		Limit:       &limitDefault,
		Offset:      &offsetDefault,
		HTTPClient:  client,
	}
}

/*GetUserSubscriptionBillingHistoriesParams contains all the parameters to send to the API endpoint
for the get user subscription billing histories operation typically these are written to a http.Request
*/
type GetUserSubscriptionBillingHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*SubscriptionID*/
	SubscriptionID string
	/*UserID*/
	UserID string
	/*ExcludeFree*/
	ExcludeFree *bool
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) WithTimeout(timeout time.Duration) *GetUserSubscriptionBillingHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) WithContext(ctx context.Context) *GetUserSubscriptionBillingHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) WithHTTPClient(client *http.Client) *GetUserSubscriptionBillingHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserSubscriptionBillingHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) WithNamespace(namespace string) *GetUserSubscriptionBillingHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) WithSubscriptionID(subscriptionID string) *GetUserSubscriptionBillingHistoriesParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) WithUserID(userID string) *GetUserSubscriptionBillingHistoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithExcludeFree adds the excludeFree to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) WithExcludeFree(excludeFree *bool) *GetUserSubscriptionBillingHistoriesParams {
	o.SetExcludeFree(excludeFree)
	return o
}

// SetExcludeFree adds the excludeFree to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetExcludeFree(excludeFree *bool) {
	o.ExcludeFree = excludeFree
}

// WithLimit adds the limit to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) WithLimit(limit *int32) *GetUserSubscriptionBillingHistoriesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) WithOffset(offset *int32) *GetUserSubscriptionBillingHistoriesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user subscription billing histories params
func (o *GetUserSubscriptionBillingHistoriesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserSubscriptionBillingHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param subscriptionId
	if err := r.SetPathParam("subscriptionId", o.SubscriptionID); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.ExcludeFree != nil {

		// query param excludeFree
		var qrExcludeFree bool
		if o.ExcludeFree != nil {
			qrExcludeFree = *o.ExcludeFree
		}
		qExcludeFree := swag.FormatBool(qrExcludeFree)
		if qExcludeFree != "" {
			if err := r.SetQueryParam("excludeFree", qExcludeFree); err != nil {
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
