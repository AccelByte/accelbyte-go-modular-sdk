// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_channel

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

// NewAdminGetChannelParams creates a new AdminGetChannelParams object
// with the default values initialized.
func NewAdminGetChannelParams() *AdminGetChannelParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetChannelParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetChannelParamsWithTimeout creates a new AdminGetChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetChannelParamsWithTimeout(timeout time.Duration) *AdminGetChannelParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetChannelParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetChannelParamsWithContext creates a new AdminGetChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetChannelParamsWithContext(ctx context.Context) *AdminGetChannelParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetChannelParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetChannelParamsWithHTTPClient creates a new AdminGetChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetChannelParamsWithHTTPClient(client *http.Client) *AdminGetChannelParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetChannelParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetChannelParams contains all the parameters to send to the API endpoint
for the admin get channel operation typically these are written to a http.Request
*/
type AdminGetChannelParams struct {

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
	/*Name
	  likes filter by channel name

	*/
	Name *string
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

// WithTimeout adds the timeout to the admin get channel params
func (o *AdminGetChannelParams) WithTimeout(timeout time.Duration) *AdminGetChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get channel params
func (o *AdminGetChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get channel params
func (o *AdminGetChannelParams) WithContext(ctx context.Context) *AdminGetChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get channel params
func (o *AdminGetChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get channel params
func (o *AdminGetChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get channel params
func (o *AdminGetChannelParams) WithHTTPClient(client *http.Client) *AdminGetChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get channel params
func (o *AdminGetChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get channel params
func (o *AdminGetChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get channel params
func (o *AdminGetChannelParams) WithNamespace(namespace string) *AdminGetChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get channel params
func (o *AdminGetChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get channel params
func (o *AdminGetChannelParams) WithUserID(userID string) *AdminGetChannelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get channel params
func (o *AdminGetChannelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin get channel params
func (o *AdminGetChannelParams) WithLimit(limit *int64) *AdminGetChannelParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get channel params
func (o *AdminGetChannelParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the admin get channel params
func (o *AdminGetChannelParams) WithName(name *string) *AdminGetChannelParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the admin get channel params
func (o *AdminGetChannelParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the admin get channel params
func (o *AdminGetChannelParams) WithOffset(offset *int64) *AdminGetChannelParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get channel params
func (o *AdminGetChannelParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
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
