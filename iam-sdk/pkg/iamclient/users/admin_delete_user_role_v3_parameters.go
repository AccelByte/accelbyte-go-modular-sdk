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

// NewAdminDeleteUserRoleV3Params creates a new AdminDeleteUserRoleV3Params object
// with the default values initialized.
func NewAdminDeleteUserRoleV3Params() *AdminDeleteUserRoleV3Params {
	var ()
	return &AdminDeleteUserRoleV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteUserRoleV3ParamsWithTimeout creates a new AdminDeleteUserRoleV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteUserRoleV3ParamsWithTimeout(timeout time.Duration) *AdminDeleteUserRoleV3Params {
	var ()
	return &AdminDeleteUserRoleV3Params{

		timeout: timeout,
	}
}

// NewAdminDeleteUserRoleV3ParamsWithContext creates a new AdminDeleteUserRoleV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteUserRoleV3ParamsWithContext(ctx context.Context) *AdminDeleteUserRoleV3Params {
	var ()
	return &AdminDeleteUserRoleV3Params{

		Context: ctx,
	}
}

// NewAdminDeleteUserRoleV3ParamsWithHTTPClient creates a new AdminDeleteUserRoleV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteUserRoleV3ParamsWithHTTPClient(client *http.Client) *AdminDeleteUserRoleV3Params {
	var ()
	return &AdminDeleteUserRoleV3Params{
		HTTPClient: client,
	}
}

/*AdminDeleteUserRoleV3Params contains all the parameters to send to the API endpoint
for the admin delete user role v3 operation typically these are written to a http.Request
*/
type AdminDeleteUserRoleV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) WithTimeout(timeout time.Duration) *AdminDeleteUserRoleV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) WithContext(ctx context.Context) *AdminDeleteUserRoleV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) WithHTTPClient(client *http.Client) *AdminDeleteUserRoleV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteUserRoleV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) WithNamespace(namespace string) *AdminDeleteUserRoleV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRoleID adds the roleID to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) WithRoleID(roleID string) *AdminDeleteUserRoleV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WithUserID adds the userID to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) WithUserID(userID string) *AdminDeleteUserRoleV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete user role v3 params
func (o *AdminDeleteUserRoleV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteUserRoleV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param roleId
	if err := r.SetPathParam("roleId", o.RoleID); err != nil {
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
