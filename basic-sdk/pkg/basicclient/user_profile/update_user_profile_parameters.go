// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_profile

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewUpdateUserProfileParams creates a new UpdateUserProfileParams object
// with the default values initialized.
func NewUpdateUserProfileParams() *UpdateUserProfileParams {
	var ()
	return &UpdateUserProfileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateUserProfileParamsWithTimeout creates a new UpdateUserProfileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateUserProfileParamsWithTimeout(timeout time.Duration) *UpdateUserProfileParams {
	var ()
	return &UpdateUserProfileParams{

		timeout: timeout,
	}
}

// NewUpdateUserProfileParamsWithContext creates a new UpdateUserProfileParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateUserProfileParamsWithContext(ctx context.Context) *UpdateUserProfileParams {
	var ()
	return &UpdateUserProfileParams{

		Context: ctx,
	}
}

// NewUpdateUserProfileParamsWithHTTPClient creates a new UpdateUserProfileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateUserProfileParamsWithHTTPClient(client *http.Client) *UpdateUserProfileParams {
	var ()
	return &UpdateUserProfileParams{
		HTTPClient: client,
	}
}

/*UpdateUserProfileParams contains all the parameters to send to the API endpoint
for the update user profile operation typically these are written to a http.Request
*/
type UpdateUserProfileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserProfileAdmin
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user's id, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update user profile params
func (o *UpdateUserProfileParams) WithTimeout(timeout time.Duration) *UpdateUserProfileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update user profile params
func (o *UpdateUserProfileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update user profile params
func (o *UpdateUserProfileParams) WithContext(ctx context.Context) *UpdateUserProfileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update user profile params
func (o *UpdateUserProfileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update user profile params
func (o *UpdateUserProfileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update user profile params
func (o *UpdateUserProfileParams) WithHTTPClient(client *http.Client) *UpdateUserProfileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update user profile params
func (o *UpdateUserProfileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update user profile params
func (o *UpdateUserProfileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateUserProfileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update user profile params
func (o *UpdateUserProfileParams) WithBody(body *basicclientmodels.UserProfileAdmin) *UpdateUserProfileParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update user profile params
func (o *UpdateUserProfileParams) SetBody(body *basicclientmodels.UserProfileAdmin) {
	o.Body = body
}

// WithNamespace adds the namespace to the update user profile params
func (o *UpdateUserProfileParams) WithNamespace(namespace string) *UpdateUserProfileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update user profile params
func (o *UpdateUserProfileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update user profile params
func (o *UpdateUserProfileParams) WithUserID(userID string) *UpdateUserProfileParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update user profile params
func (o *UpdateUserProfileParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateUserProfileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
