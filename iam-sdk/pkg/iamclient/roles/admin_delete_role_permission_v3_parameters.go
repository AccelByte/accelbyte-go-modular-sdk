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
	"github.com/go-openapi/swag"
)

// NewAdminDeleteRolePermissionV3Params creates a new AdminDeleteRolePermissionV3Params object
// with the default values initialized.
func NewAdminDeleteRolePermissionV3Params() *AdminDeleteRolePermissionV3Params {
	var ()
	return &AdminDeleteRolePermissionV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteRolePermissionV3ParamsWithTimeout creates a new AdminDeleteRolePermissionV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteRolePermissionV3ParamsWithTimeout(timeout time.Duration) *AdminDeleteRolePermissionV3Params {
	var ()
	return &AdminDeleteRolePermissionV3Params{

		timeout: timeout,
	}
}

// NewAdminDeleteRolePermissionV3ParamsWithContext creates a new AdminDeleteRolePermissionV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteRolePermissionV3ParamsWithContext(ctx context.Context) *AdminDeleteRolePermissionV3Params {
	var ()
	return &AdminDeleteRolePermissionV3Params{

		Context: ctx,
	}
}

// NewAdminDeleteRolePermissionV3ParamsWithHTTPClient creates a new AdminDeleteRolePermissionV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteRolePermissionV3ParamsWithHTTPClient(client *http.Client) *AdminDeleteRolePermissionV3Params {
	var ()
	return &AdminDeleteRolePermissionV3Params{
		HTTPClient: client,
	}
}

/*AdminDeleteRolePermissionV3Params contains all the parameters to send to the API endpoint
for the admin delete role permission v3 operation typically these are written to a http.Request
*/
type AdminDeleteRolePermissionV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Action
	  Action, value must be in range 1-15

	*/
	Action int64
	/*Resource
	  Resource Name

	*/
	Resource string
	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) WithTimeout(timeout time.Duration) *AdminDeleteRolePermissionV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) WithContext(ctx context.Context) *AdminDeleteRolePermissionV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) WithHTTPClient(client *http.Client) *AdminDeleteRolePermissionV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteRolePermissionV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAction adds the action to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) WithAction(action int64) *AdminDeleteRolePermissionV3Params {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) SetAction(action int64) {
	o.Action = action
}

// WithResource adds the resource to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) WithResource(resource string) *AdminDeleteRolePermissionV3Params {
	o.SetResource(resource)
	return o
}

// SetResource adds the resource to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) SetResource(resource string) {
	o.Resource = resource
}

// WithRoleID adds the roleID to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) WithRoleID(roleID string) *AdminDeleteRolePermissionV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin delete role permission v3 params
func (o *AdminDeleteRolePermissionV3Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteRolePermissionV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param action
	if err := r.SetPathParam("action", swag.FormatInt64(o.Action)); err != nil {
		return err
	}

	// path param resource
	if err := r.SetPathParam("resource", o.Resource); err != nil {
		return err
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
