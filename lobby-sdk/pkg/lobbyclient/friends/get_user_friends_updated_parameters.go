// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

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

// NewGetUserFriendsUpdatedParams creates a new GetUserFriendsUpdatedParams object
// with the default values initialized.
func NewGetUserFriendsUpdatedParams() *GetUserFriendsUpdatedParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserFriendsUpdatedParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserFriendsUpdatedParamsWithTimeout creates a new GetUserFriendsUpdatedParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserFriendsUpdatedParamsWithTimeout(timeout time.Duration) *GetUserFriendsUpdatedParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserFriendsUpdatedParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetUserFriendsUpdatedParamsWithContext creates a new GetUserFriendsUpdatedParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserFriendsUpdatedParamsWithContext(ctx context.Context) *GetUserFriendsUpdatedParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserFriendsUpdatedParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetUserFriendsUpdatedParamsWithHTTPClient creates a new GetUserFriendsUpdatedParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserFriendsUpdatedParamsWithHTTPClient(client *http.Client) *GetUserFriendsUpdatedParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetUserFriendsUpdatedParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetUserFriendsUpdatedParams contains all the parameters to send to the API endpoint
for the get user friends updated operation typically these are written to a http.Request
*/
type GetUserFriendsUpdatedParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  maximum number of data

	*/
	Limit *int64
	/*Offset
	  numbers of row to skip within the result

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) WithTimeout(timeout time.Duration) *GetUserFriendsUpdatedParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) WithContext(ctx context.Context) *GetUserFriendsUpdatedParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) WithHTTPClient(client *http.Client) *GetUserFriendsUpdatedParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserFriendsUpdatedParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) WithNamespace(namespace string) *GetUserFriendsUpdatedParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) WithLimit(limit *int64) *GetUserFriendsUpdatedParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) WithOffset(offset *int64) *GetUserFriendsUpdatedParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user friends updated params
func (o *GetUserFriendsUpdatedParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserFriendsUpdatedParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
