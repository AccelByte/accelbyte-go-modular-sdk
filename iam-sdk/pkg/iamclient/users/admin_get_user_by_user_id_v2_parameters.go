// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

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

// NewAdminGetUserByUserIDV2Params creates a new AdminGetUserByUserIDV2Params object
// with the default values initialized.
func NewAdminGetUserByUserIDV2Params() *AdminGetUserByUserIDV2Params {
	var ()
	return &AdminGetUserByUserIDV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserByUserIDV2ParamsWithTimeout creates a new AdminGetUserByUserIDV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserByUserIDV2ParamsWithTimeout(timeout time.Duration) *AdminGetUserByUserIDV2Params {
	var ()
	return &AdminGetUserByUserIDV2Params{

		timeout: timeout,
	}
}

// NewAdminGetUserByUserIDV2ParamsWithContext creates a new AdminGetUserByUserIDV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserByUserIDV2ParamsWithContext(ctx context.Context) *AdminGetUserByUserIDV2Params {
	var ()
	return &AdminGetUserByUserIDV2Params{

		Context: ctx,
	}
}

// NewAdminGetUserByUserIDV2ParamsWithHTTPClient creates a new AdminGetUserByUserIDV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserByUserIDV2ParamsWithHTTPClient(client *http.Client) *AdminGetUserByUserIDV2Params {
	var ()
	return &AdminGetUserByUserIDV2Params{
		HTTPClient: client,
	}
}

/*AdminGetUserByUserIDV2Params contains all the parameters to send to the API endpoint
for the admin get user by user id v2 operation typically these are written to a http.Request
*/
type AdminGetUserByUserIDV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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
}

// WithTimeout adds the timeout to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) WithTimeout(timeout time.Duration) *AdminGetUserByUserIDV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) WithContext(ctx context.Context) *AdminGetUserByUserIDV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) WithHTTPClient(client *http.Client) *AdminGetUserByUserIDV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) WithNamespace(namespace string) *AdminGetUserByUserIDV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) WithUserID(userID string) *AdminGetUserByUserIDV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user by user id v2 params
func (o *AdminGetUserByUserIDV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserByUserIDV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
