// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

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

// NewGetUserParticipatedSeasonsParams creates a new GetUserParticipatedSeasonsParams object
// with the default values initialized.
func NewGetUserParticipatedSeasonsParams() *GetUserParticipatedSeasonsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserParticipatedSeasonsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserParticipatedSeasonsParamsWithTimeout creates a new GetUserParticipatedSeasonsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserParticipatedSeasonsParamsWithTimeout(timeout time.Duration) *GetUserParticipatedSeasonsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserParticipatedSeasonsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetUserParticipatedSeasonsParamsWithContext creates a new GetUserParticipatedSeasonsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserParticipatedSeasonsParamsWithContext(ctx context.Context) *GetUserParticipatedSeasonsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserParticipatedSeasonsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetUserParticipatedSeasonsParamsWithHTTPClient creates a new GetUserParticipatedSeasonsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserParticipatedSeasonsParamsWithHTTPClient(client *http.Client) *GetUserParticipatedSeasonsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetUserParticipatedSeasonsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetUserParticipatedSeasonsParams contains all the parameters to send to the API endpoint
for the get user participated seasons operation typically these are written to a http.Request
*/
type GetUserParticipatedSeasonsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string
	/*Limit
	  limit

	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) WithTimeout(timeout time.Duration) *GetUserParticipatedSeasonsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) WithContext(ctx context.Context) *GetUserParticipatedSeasonsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) WithHTTPClient(client *http.Client) *GetUserParticipatedSeasonsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserParticipatedSeasonsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) WithNamespace(namespace string) *GetUserParticipatedSeasonsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) WithUserID(userID string) *GetUserParticipatedSeasonsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) WithLimit(limit *int32) *GetUserParticipatedSeasonsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) WithOffset(offset *int32) *GetUserParticipatedSeasonsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user participated seasons params
func (o *GetUserParticipatedSeasonsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserParticipatedSeasonsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
