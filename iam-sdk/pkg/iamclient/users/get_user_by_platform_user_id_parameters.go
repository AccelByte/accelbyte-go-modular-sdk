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
)

// NewGetUserByPlatformUserIDParams creates a new GetUserByPlatformUserIDParams object
// with the default values initialized.
func NewGetUserByPlatformUserIDParams() *GetUserByPlatformUserIDParams {
	var ()
	return &GetUserByPlatformUserIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserByPlatformUserIDParamsWithTimeout creates a new GetUserByPlatformUserIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserByPlatformUserIDParamsWithTimeout(timeout time.Duration) *GetUserByPlatformUserIDParams {
	var ()
	return &GetUserByPlatformUserIDParams{

		timeout: timeout,
	}
}

// NewGetUserByPlatformUserIDParamsWithContext creates a new GetUserByPlatformUserIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserByPlatformUserIDParamsWithContext(ctx context.Context) *GetUserByPlatformUserIDParams {
	var ()
	return &GetUserByPlatformUserIDParams{

		Context: ctx,
	}
}

// NewGetUserByPlatformUserIDParamsWithHTTPClient creates a new GetUserByPlatformUserIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserByPlatformUserIDParamsWithHTTPClient(client *http.Client) *GetUserByPlatformUserIDParams {
	var ()
	return &GetUserByPlatformUserIDParams{
		HTTPClient: client,
	}
}

/*GetUserByPlatformUserIDParams contains all the parameters to send to the API endpoint
for the get user by platform user id operation typically these are written to a http.Request
*/
type GetUserByPlatformUserIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*PlatformUserID
	  Platform User ID

	*/
	PlatformUserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) WithTimeout(timeout time.Duration) *GetUserByPlatformUserIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) WithContext(ctx context.Context) *GetUserByPlatformUserIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) WithHTTPClient(client *http.Client) *GetUserByPlatformUserIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserByPlatformUserIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) WithNamespace(namespace string) *GetUserByPlatformUserIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) WithPlatformID(platformID string) *GetUserByPlatformUserIDParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithPlatformUserID adds the platformUserID to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) WithPlatformUserID(platformUserID string) *GetUserByPlatformUserIDParams {
	o.SetPlatformUserID(platformUserID)
	return o
}

// SetPlatformUserID adds the platformUserId to the get user by platform user id params
func (o *GetUserByPlatformUserIDParams) SetPlatformUserID(platformUserID string) {
	o.PlatformUserID = platformUserID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserByPlatformUserIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param platformID
	qrPlatformID := o.PlatformID
	qPlatformID := qrPlatformID
	if qPlatformID != "" {
		if err := r.SetQueryParam("platformID", qPlatformID); err != nil {
			return err
		}
	}

	// query param platformUserID
	qrPlatformUserID := o.PlatformUserID
	qPlatformUserID := qrPlatformUserID
	if qPlatformUserID != "" {
		if err := r.SetQueryParam("platformUserID", qPlatformUserID); err != nil {
			return err
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
