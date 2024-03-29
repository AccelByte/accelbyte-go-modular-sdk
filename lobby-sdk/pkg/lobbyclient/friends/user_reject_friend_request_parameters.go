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

// NewUserRejectFriendRequestParams creates a new UserRejectFriendRequestParams object
// with the default values initialized.
func NewUserRejectFriendRequestParams() *UserRejectFriendRequestParams {
	var ()
	return &UserRejectFriendRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUserRejectFriendRequestParamsWithTimeout creates a new UserRejectFriendRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUserRejectFriendRequestParamsWithTimeout(timeout time.Duration) *UserRejectFriendRequestParams {
	var ()
	return &UserRejectFriendRequestParams{

		timeout: timeout,
	}
}

// NewUserRejectFriendRequestParamsWithContext creates a new UserRejectFriendRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewUserRejectFriendRequestParamsWithContext(ctx context.Context) *UserRejectFriendRequestParams {
	var ()
	return &UserRejectFriendRequestParams{

		Context: ctx,
	}
}

// NewUserRejectFriendRequestParamsWithHTTPClient creates a new UserRejectFriendRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUserRejectFriendRequestParamsWithHTTPClient(client *http.Client) *UserRejectFriendRequestParams {
	var ()
	return &UserRejectFriendRequestParams{
		HTTPClient: client,
	}
}

/*UserRejectFriendRequestParams contains all the parameters to send to the API endpoint
for the user reject friend request operation typically these are written to a http.Request
*/
type UserRejectFriendRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelUserRejectFriendRequest
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

// WithTimeout adds the timeout to the user reject friend request params
func (o *UserRejectFriendRequestParams) WithTimeout(timeout time.Duration) *UserRejectFriendRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the user reject friend request params
func (o *UserRejectFriendRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the user reject friend request params
func (o *UserRejectFriendRequestParams) WithContext(ctx context.Context) *UserRejectFriendRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the user reject friend request params
func (o *UserRejectFriendRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the user reject friend request params
func (o *UserRejectFriendRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the user reject friend request params
func (o *UserRejectFriendRequestParams) WithHTTPClient(client *http.Client) *UserRejectFriendRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the user reject friend request params
func (o *UserRejectFriendRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the user reject friend request params
func (o *UserRejectFriendRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UserRejectFriendRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the user reject friend request params
func (o *UserRejectFriendRequestParams) WithBody(body *lobbyclientmodels.ModelUserRejectFriendRequest) *UserRejectFriendRequestParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the user reject friend request params
func (o *UserRejectFriendRequestParams) SetBody(body *lobbyclientmodels.ModelUserRejectFriendRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the user reject friend request params
func (o *UserRejectFriendRequestParams) WithNamespace(namespace string) *UserRejectFriendRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the user reject friend request params
func (o *UserRejectFriendRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UserRejectFriendRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
