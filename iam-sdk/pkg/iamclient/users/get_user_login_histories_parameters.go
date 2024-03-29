// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

// NewGetUserLoginHistoriesParams creates a new GetUserLoginHistoriesParams object
// with the default values initialized.
func NewGetUserLoginHistoriesParams() *GetUserLoginHistoriesParams {
	var ()
	return &GetUserLoginHistoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserLoginHistoriesParamsWithTimeout creates a new GetUserLoginHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserLoginHistoriesParamsWithTimeout(timeout time.Duration) *GetUserLoginHistoriesParams {
	var ()
	return &GetUserLoginHistoriesParams{

		timeout: timeout,
	}
}

// NewGetUserLoginHistoriesParamsWithContext creates a new GetUserLoginHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserLoginHistoriesParamsWithContext(ctx context.Context) *GetUserLoginHistoriesParams {
	var ()
	return &GetUserLoginHistoriesParams{

		Context: ctx,
	}
}

// NewGetUserLoginHistoriesParamsWithHTTPClient creates a new GetUserLoginHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserLoginHistoriesParamsWithHTTPClient(client *http.Client) *GetUserLoginHistoriesParams {
	var ()
	return &GetUserLoginHistoriesParams{
		HTTPClient: client,
	}
}

/*GetUserLoginHistoriesParams contains all the parameters to send to the API endpoint
for the get user login histories operation typically these are written to a http.Request
*/
type GetUserLoginHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*After
	  The cursor that points to query data for the next page (In Unix timestamp formats, e.g:1545114248)

	*/
	After *float64
	/*Before
	  The cursor that points to query data for the previous page (In Unix timestamp formats, e.g:1545114248).

	*/
	Before *float64
	/*Limit
	  The number of data retrieved in a page

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user login histories params
func (o *GetUserLoginHistoriesParams) WithTimeout(timeout time.Duration) *GetUserLoginHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user login histories params
func (o *GetUserLoginHistoriesParams) WithContext(ctx context.Context) *GetUserLoginHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user login histories params
func (o *GetUserLoginHistoriesParams) WithHTTPClient(client *http.Client) *GetUserLoginHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserLoginHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user login histories params
func (o *GetUserLoginHistoriesParams) WithNamespace(namespace string) *GetUserLoginHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user login histories params
func (o *GetUserLoginHistoriesParams) WithUserID(userID string) *GetUserLoginHistoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAfter adds the after to the get user login histories params
func (o *GetUserLoginHistoriesParams) WithAfter(after *float64) *GetUserLoginHistoriesParams {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetAfter(after *float64) {
	o.After = after
}

// WithBefore adds the before to the get user login histories params
func (o *GetUserLoginHistoriesParams) WithBefore(before *float64) *GetUserLoginHistoriesParams {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetBefore(before *float64) {
	o.Before = before
}

// WithLimit adds the limit to the get user login histories params
func (o *GetUserLoginHistoriesParams) WithLimit(limit *int64) *GetUserLoginHistoriesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user login histories params
func (o *GetUserLoginHistoriesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserLoginHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.After != nil {

		// query param after
		var qrAfter float64
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := swag.FormatFloat64(qrAfter)
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore float64
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := swag.FormatFloat64(qrBefore)
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
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
