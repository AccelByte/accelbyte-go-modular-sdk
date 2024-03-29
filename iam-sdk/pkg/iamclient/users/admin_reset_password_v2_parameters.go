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

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminResetPasswordV2Params creates a new AdminResetPasswordV2Params object
// with the default values initialized.
func NewAdminResetPasswordV2Params() *AdminResetPasswordV2Params {
	var ()
	return &AdminResetPasswordV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminResetPasswordV2ParamsWithTimeout creates a new AdminResetPasswordV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminResetPasswordV2ParamsWithTimeout(timeout time.Duration) *AdminResetPasswordV2Params {
	var ()
	return &AdminResetPasswordV2Params{

		timeout: timeout,
	}
}

// NewAdminResetPasswordV2ParamsWithContext creates a new AdminResetPasswordV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminResetPasswordV2ParamsWithContext(ctx context.Context) *AdminResetPasswordV2Params {
	var ()
	return &AdminResetPasswordV2Params{

		Context: ctx,
	}
}

// NewAdminResetPasswordV2ParamsWithHTTPClient creates a new AdminResetPasswordV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminResetPasswordV2ParamsWithHTTPClient(client *http.Client) *AdminResetPasswordV2Params {
	var ()
	return &AdminResetPasswordV2Params{
		HTTPClient: client,
	}
}

/*AdminResetPasswordV2Params contains all the parameters to send to the API endpoint
for the admin reset password v2 operation typically these are written to a http.Request
*/
type AdminResetPasswordV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserPasswordUpdateRequest
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) WithTimeout(timeout time.Duration) *AdminResetPasswordV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) WithContext(ctx context.Context) *AdminResetPasswordV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) WithHTTPClient(client *http.Client) *AdminResetPasswordV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminResetPasswordV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) WithBody(body *iamclientmodels.ModelUserPasswordUpdateRequest) *AdminResetPasswordV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) SetBody(body *iamclientmodels.ModelUserPasswordUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) WithNamespace(namespace string) *AdminResetPasswordV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) WithUserID(userID string) *AdminResetPasswordV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin reset password v2 params
func (o *AdminResetPasswordV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminResetPasswordV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
