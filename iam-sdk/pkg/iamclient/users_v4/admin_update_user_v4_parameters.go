// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users_v4

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

// NewAdminUpdateUserV4Params creates a new AdminUpdateUserV4Params object
// with the default values initialized.
func NewAdminUpdateUserV4Params() *AdminUpdateUserV4Params {
	var ()
	return &AdminUpdateUserV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateUserV4ParamsWithTimeout creates a new AdminUpdateUserV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateUserV4ParamsWithTimeout(timeout time.Duration) *AdminUpdateUserV4Params {
	var ()
	return &AdminUpdateUserV4Params{

		timeout: timeout,
	}
}

// NewAdminUpdateUserV4ParamsWithContext creates a new AdminUpdateUserV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateUserV4ParamsWithContext(ctx context.Context) *AdminUpdateUserV4Params {
	var ()
	return &AdminUpdateUserV4Params{

		Context: ctx,
	}
}

// NewAdminUpdateUserV4ParamsWithHTTPClient creates a new AdminUpdateUserV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateUserV4ParamsWithHTTPClient(client *http.Client) *AdminUpdateUserV4Params {
	var ()
	return &AdminUpdateUserV4Params{
		HTTPClient: client,
	}
}

/*AdminUpdateUserV4Params contains all the parameters to send to the API endpoint
for the admin update user v4 operation typically these are written to a http.Request
*/
type AdminUpdateUserV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserUpdateRequestV3
	/*Namespace
	  Namespace, only accept alphabet and numeric

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

// WithTimeout adds the timeout to the admin update user v4 params
func (o *AdminUpdateUserV4Params) WithTimeout(timeout time.Duration) *AdminUpdateUserV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update user v4 params
func (o *AdminUpdateUserV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update user v4 params
func (o *AdminUpdateUserV4Params) WithContext(ctx context.Context) *AdminUpdateUserV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update user v4 params
func (o *AdminUpdateUserV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update user v4 params
func (o *AdminUpdateUserV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update user v4 params
func (o *AdminUpdateUserV4Params) WithHTTPClient(client *http.Client) *AdminUpdateUserV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update user v4 params
func (o *AdminUpdateUserV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update user v4 params
func (o *AdminUpdateUserV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateUserV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update user v4 params
func (o *AdminUpdateUserV4Params) WithBody(body *iamclientmodels.ModelUserUpdateRequestV3) *AdminUpdateUserV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update user v4 params
func (o *AdminUpdateUserV4Params) SetBody(body *iamclientmodels.ModelUserUpdateRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update user v4 params
func (o *AdminUpdateUserV4Params) WithNamespace(namespace string) *AdminUpdateUserV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update user v4 params
func (o *AdminUpdateUserV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update user v4 params
func (o *AdminUpdateUserV4Params) WithUserID(userID string) *AdminUpdateUserV4Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update user v4 params
func (o *AdminUpdateUserV4Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateUserV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
