// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_follow

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

// NewGetFollowedUsersParams creates a new GetFollowedUsersParams object
// with the default values initialized.
func NewGetFollowedUsersParams() *GetFollowedUsersParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetFollowedUsersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetFollowedUsersParamsWithTimeout creates a new GetFollowedUsersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetFollowedUsersParamsWithTimeout(timeout time.Duration) *GetFollowedUsersParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetFollowedUsersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetFollowedUsersParamsWithContext creates a new GetFollowedUsersParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetFollowedUsersParamsWithContext(ctx context.Context) *GetFollowedUsersParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetFollowedUsersParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetFollowedUsersParamsWithHTTPClient creates a new GetFollowedUsersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetFollowedUsersParamsWithHTTPClient(client *http.Client) *GetFollowedUsersParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetFollowedUsersParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetFollowedUsersParams contains all the parameters to send to the API endpoint
for the get followed users operation typically these are written to a http.Request
*/
type GetFollowedUsersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  number of user per page

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

// WithTimeout adds the timeout to the get followed users params
func (o *GetFollowedUsersParams) WithTimeout(timeout time.Duration) *GetFollowedUsersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get followed users params
func (o *GetFollowedUsersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get followed users params
func (o *GetFollowedUsersParams) WithContext(ctx context.Context) *GetFollowedUsersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get followed users params
func (o *GetFollowedUsersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get followed users params
func (o *GetFollowedUsersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get followed users params
func (o *GetFollowedUsersParams) WithHTTPClient(client *http.Client) *GetFollowedUsersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get followed users params
func (o *GetFollowedUsersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get followed users params
func (o *GetFollowedUsersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetFollowedUsersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get followed users params
func (o *GetFollowedUsersParams) WithNamespace(namespace string) *GetFollowedUsersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get followed users params
func (o *GetFollowedUsersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get followed users params
func (o *GetFollowedUsersParams) WithLimit(limit *int64) *GetFollowedUsersParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get followed users params
func (o *GetFollowedUsersParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get followed users params
func (o *GetFollowedUsersParams) WithOffset(offset *int64) *GetFollowedUsersParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get followed users params
func (o *GetFollowedUsersParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetFollowedUsersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
