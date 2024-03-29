// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

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

// NewAdminDeleteRolePermissionsV3Params creates a new AdminDeleteRolePermissionsV3Params object
// with the default values initialized.
func NewAdminDeleteRolePermissionsV3Params() *AdminDeleteRolePermissionsV3Params {
	var ()
	return &AdminDeleteRolePermissionsV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteRolePermissionsV3ParamsWithTimeout creates a new AdminDeleteRolePermissionsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteRolePermissionsV3ParamsWithTimeout(timeout time.Duration) *AdminDeleteRolePermissionsV3Params {
	var ()
	return &AdminDeleteRolePermissionsV3Params{

		timeout: timeout,
	}
}

// NewAdminDeleteRolePermissionsV3ParamsWithContext creates a new AdminDeleteRolePermissionsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteRolePermissionsV3ParamsWithContext(ctx context.Context) *AdminDeleteRolePermissionsV3Params {
	var ()
	return &AdminDeleteRolePermissionsV3Params{

		Context: ctx,
	}
}

// NewAdminDeleteRolePermissionsV3ParamsWithHTTPClient creates a new AdminDeleteRolePermissionsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteRolePermissionsV3ParamsWithHTTPClient(client *http.Client) *AdminDeleteRolePermissionsV3Params {
	var ()
	return &AdminDeleteRolePermissionsV3Params{
		HTTPClient: client,
	}
}

/*AdminDeleteRolePermissionsV3Params contains all the parameters to send to the API endpoint
for the admin delete role permissions v3 operation typically these are written to a http.Request
*/
type AdminDeleteRolePermissionsV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []string
	/*RoleID
	  Role id

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) WithTimeout(timeout time.Duration) *AdminDeleteRolePermissionsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) WithContext(ctx context.Context) *AdminDeleteRolePermissionsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) WithHTTPClient(client *http.Client) *AdminDeleteRolePermissionsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteRolePermissionsV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) WithBody(body []string) *AdminDeleteRolePermissionsV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) SetBody(body []string) {
	o.Body = body
}

// WithRoleID adds the roleID to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) WithRoleID(roleID string) *AdminDeleteRolePermissionsV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin delete role permissions v3 params
func (o *AdminDeleteRolePermissionsV3Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteRolePermissionsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param roleId
	if err := r.SetPathParam("roleId", o.RoleID); err != nil {
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
