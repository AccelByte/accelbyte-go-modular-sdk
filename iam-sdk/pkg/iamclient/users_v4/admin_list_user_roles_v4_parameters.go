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
)

// NewAdminListUserRolesV4Params creates a new AdminListUserRolesV4Params object
// with the default values initialized.
func NewAdminListUserRolesV4Params() *AdminListUserRolesV4Params {
	var ()
	return &AdminListUserRolesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListUserRolesV4ParamsWithTimeout creates a new AdminListUserRolesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListUserRolesV4ParamsWithTimeout(timeout time.Duration) *AdminListUserRolesV4Params {
	var ()
	return &AdminListUserRolesV4Params{

		timeout: timeout,
	}
}

// NewAdminListUserRolesV4ParamsWithContext creates a new AdminListUserRolesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListUserRolesV4ParamsWithContext(ctx context.Context) *AdminListUserRolesV4Params {
	var ()
	return &AdminListUserRolesV4Params{

		Context: ctx,
	}
}

// NewAdminListUserRolesV4ParamsWithHTTPClient creates a new AdminListUserRolesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListUserRolesV4ParamsWithHTTPClient(client *http.Client) *AdminListUserRolesV4Params {
	var ()
	return &AdminListUserRolesV4Params{
		HTTPClient: client,
	}
}

/*AdminListUserRolesV4Params contains all the parameters to send to the API endpoint
for the admin list user roles v4 operation typically these are written to a http.Request
*/
type AdminListUserRolesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) WithTimeout(timeout time.Duration) *AdminListUserRolesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) WithContext(ctx context.Context) *AdminListUserRolesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) WithHTTPClient(client *http.Client) *AdminListUserRolesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListUserRolesV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) WithNamespace(namespace string) *AdminListUserRolesV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) WithUserID(userID string) *AdminListUserRolesV4Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list user roles v4 params
func (o *AdminListUserRolesV4Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListUserRolesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
