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

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewUserCancelFriendRequestParams creates a new UserCancelFriendRequestParams object
// with the default values initialized.
func NewUserCancelFriendRequestParams() *UserCancelFriendRequestParams {
	var ()
	return &UserCancelFriendRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUserCancelFriendRequestParamsWithTimeout creates a new UserCancelFriendRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUserCancelFriendRequestParamsWithTimeout(timeout time.Duration) *UserCancelFriendRequestParams {
	var ()
	return &UserCancelFriendRequestParams{

		timeout: timeout,
	}
}

// NewUserCancelFriendRequestParamsWithContext creates a new UserCancelFriendRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewUserCancelFriendRequestParamsWithContext(ctx context.Context) *UserCancelFriendRequestParams {
	var ()
	return &UserCancelFriendRequestParams{

		Context: ctx,
	}
}

// NewUserCancelFriendRequestParamsWithHTTPClient creates a new UserCancelFriendRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUserCancelFriendRequestParamsWithHTTPClient(client *http.Client) *UserCancelFriendRequestParams {
	var ()
	return &UserCancelFriendRequestParams{
		HTTPClient: client,
	}
}

/*
UserCancelFriendRequestParams contains all the parameters to send to the API endpoint
for the user cancel friend request operation typically these are written to a http.Request
*/
type UserCancelFriendRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelUserCancelFriendRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the user cancel friend request params
func (o *UserCancelFriendRequestParams) WithTimeout(timeout time.Duration) *UserCancelFriendRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the user cancel friend request params
func (o *UserCancelFriendRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the user cancel friend request params
func (o *UserCancelFriendRequestParams) WithContext(ctx context.Context) *UserCancelFriendRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the user cancel friend request params
func (o *UserCancelFriendRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the user cancel friend request params
func (o *UserCancelFriendRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the user cancel friend request params
func (o *UserCancelFriendRequestParams) WithHTTPClient(client *http.Client) *UserCancelFriendRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the user cancel friend request params
func (o *UserCancelFriendRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the user cancel friend request params
func (o *UserCancelFriendRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UserCancelFriendRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the user cancel friend request params
func (o *UserCancelFriendRequestParams) WithBody(body *lobbyclientmodels.ModelUserCancelFriendRequest) *UserCancelFriendRequestParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the user cancel friend request params
func (o *UserCancelFriendRequestParams) SetBody(body *lobbyclientmodels.ModelUserCancelFriendRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the user cancel friend request params
func (o *UserCancelFriendRequestParams) WithNamespace(namespace string) *UserCancelFriendRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the user cancel friend request params
func (o *UserCancelFriendRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UserCancelFriendRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
