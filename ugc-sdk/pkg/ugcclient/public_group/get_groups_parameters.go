// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_group

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

// NewGetGroupsParams creates a new GetGroupsParams object
// with the default values initialized.
func NewGetGroupsParams() *GetGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGroupsParamsWithTimeout creates a new GetGroupsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGroupsParamsWithTimeout(timeout time.Duration) *GetGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetGroupsParamsWithContext creates a new GetGroupsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGroupsParamsWithContext(ctx context.Context) *GetGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetGroupsParamsWithHTTPClient creates a new GetGroupsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGroupsParamsWithHTTPClient(client *http.Client) *GetGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetGroupsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetGroupsParams contains all the parameters to send to the API endpoint
for the get groups operation typically these are written to a http.Request
*/
type GetGroupsParams struct {

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
	/*Limit
	  number of content per page

	*/
	Limit *int64
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get groups params
func (o *GetGroupsParams) WithTimeout(timeout time.Duration) *GetGroupsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get groups params
func (o *GetGroupsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get groups params
func (o *GetGroupsParams) WithContext(ctx context.Context) *GetGroupsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get groups params
func (o *GetGroupsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get groups params
func (o *GetGroupsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get groups params
func (o *GetGroupsParams) WithHTTPClient(client *http.Client) *GetGroupsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get groups params
func (o *GetGroupsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get groups params
func (o *GetGroupsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGroupsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get groups params
func (o *GetGroupsParams) WithNamespace(namespace string) *GetGroupsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get groups params
func (o *GetGroupsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get groups params
func (o *GetGroupsParams) WithUserID(userID string) *GetGroupsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get groups params
func (o *GetGroupsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get groups params
func (o *GetGroupsParams) WithLimit(limit *int64) *GetGroupsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get groups params
func (o *GetGroupsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get groups params
func (o *GetGroupsParams) WithOffset(offset *int64) *GetGroupsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get groups params
func (o *GetGroupsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetGroupsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
