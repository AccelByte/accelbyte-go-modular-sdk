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

// NewGetUserByUserIDParams creates a new GetUserByUserIDParams object
// with the default values initialized.
func NewGetUserByUserIDParams() *GetUserByUserIDParams {
	var ()
	return &GetUserByUserIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserByUserIDParamsWithTimeout creates a new GetUserByUserIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserByUserIDParamsWithTimeout(timeout time.Duration) *GetUserByUserIDParams {
	var ()
	return &GetUserByUserIDParams{

		timeout: timeout,
	}
}

// NewGetUserByUserIDParamsWithContext creates a new GetUserByUserIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserByUserIDParamsWithContext(ctx context.Context) *GetUserByUserIDParams {
	var ()
	return &GetUserByUserIDParams{

		Context: ctx,
	}
}

// NewGetUserByUserIDParamsWithHTTPClient creates a new GetUserByUserIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserByUserIDParamsWithHTTPClient(client *http.Client) *GetUserByUserIDParams {
	var ()
	return &GetUserByUserIDParams{
		HTTPClient: client,
	}
}

/*GetUserByUserIDParams contains all the parameters to send to the API endpoint
for the get user by user id operation typically these are written to a http.Request
*/
type GetUserByUserIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user by user id params
func (o *GetUserByUserIDParams) WithTimeout(timeout time.Duration) *GetUserByUserIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user by user id params
func (o *GetUserByUserIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user by user id params
func (o *GetUserByUserIDParams) WithContext(ctx context.Context) *GetUserByUserIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user by user id params
func (o *GetUserByUserIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user by user id params
func (o *GetUserByUserIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user by user id params
func (o *GetUserByUserIDParams) WithHTTPClient(client *http.Client) *GetUserByUserIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user by user id params
func (o *GetUserByUserIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user by user id params
func (o *GetUserByUserIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserByUserIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user by user id params
func (o *GetUserByUserIDParams) WithNamespace(namespace string) *GetUserByUserIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user by user id params
func (o *GetUserByUserIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user by user id params
func (o *GetUserByUserIDParams) WithUserID(userID string) *GetUserByUserIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user by user id params
func (o *GetUserByUserIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserByUserIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
