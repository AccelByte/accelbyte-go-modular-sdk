// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_action

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

// NewGetUserStatusParams creates a new GetUserStatusParams object
// with the default values initialized.
func NewGetUserStatusParams() *GetUserStatusParams {
	var ()
	return &GetUserStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserStatusParamsWithTimeout creates a new GetUserStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserStatusParamsWithTimeout(timeout time.Duration) *GetUserStatusParams {
	var ()
	return &GetUserStatusParams{

		timeout: timeout,
	}
}

// NewGetUserStatusParamsWithContext creates a new GetUserStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserStatusParamsWithContext(ctx context.Context) *GetUserStatusParams {
	var ()
	return &GetUserStatusParams{

		Context: ctx,
	}
}

// NewGetUserStatusParamsWithHTTPClient creates a new GetUserStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserStatusParamsWithHTTPClient(client *http.Client) *GetUserStatusParams {
	var ()
	return &GetUserStatusParams{
		HTTPClient: client,
	}
}

/*GetUserStatusParams contains all the parameters to send to the API endpoint
for the get user status operation typically these are written to a http.Request
*/
type GetUserStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user id, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user status params
func (o *GetUserStatusParams) WithTimeout(timeout time.Duration) *GetUserStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user status params
func (o *GetUserStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user status params
func (o *GetUserStatusParams) WithContext(ctx context.Context) *GetUserStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user status params
func (o *GetUserStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user status params
func (o *GetUserStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user status params
func (o *GetUserStatusParams) WithHTTPClient(client *http.Client) *GetUserStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user status params
func (o *GetUserStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user status params
func (o *GetUserStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserStatusParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user status params
func (o *GetUserStatusParams) WithNamespace(namespace string) *GetUserStatusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user status params
func (o *GetUserStatusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user status params
func (o *GetUserStatusParams) WithUserID(userID string) *GetUserStatusParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user status params
func (o *GetUserStatusParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param userId
	qrUserID := o.UserID
	qUserID := qrUserID
	if qUserID != "" {
		if err := r.SetQueryParam("userId", qUserID); err != nil {
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
