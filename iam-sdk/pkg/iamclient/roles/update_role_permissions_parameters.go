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

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewUpdateRolePermissionsParams creates a new UpdateRolePermissionsParams object
// with the default values initialized.
func NewUpdateRolePermissionsParams() *UpdateRolePermissionsParams {
	var ()
	return &UpdateRolePermissionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateRolePermissionsParamsWithTimeout creates a new UpdateRolePermissionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateRolePermissionsParamsWithTimeout(timeout time.Duration) *UpdateRolePermissionsParams {
	var ()
	return &UpdateRolePermissionsParams{

		timeout: timeout,
	}
}

// NewUpdateRolePermissionsParamsWithContext creates a new UpdateRolePermissionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateRolePermissionsParamsWithContext(ctx context.Context) *UpdateRolePermissionsParams {
	var ()
	return &UpdateRolePermissionsParams{

		Context: ctx,
	}
}

// NewUpdateRolePermissionsParamsWithHTTPClient creates a new UpdateRolePermissionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateRolePermissionsParamsWithHTTPClient(client *http.Client) *UpdateRolePermissionsParams {
	var ()
	return &UpdateRolePermissionsParams{
		HTTPClient: client,
	}
}

/*UpdateRolePermissionsParams contains all the parameters to send to the API endpoint
for the update role permissions operation typically these are written to a http.Request
*/
type UpdateRolePermissionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.AccountcommonPermissions
	/*RoleID
	  Role id

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update role permissions params
func (o *UpdateRolePermissionsParams) WithTimeout(timeout time.Duration) *UpdateRolePermissionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update role permissions params
func (o *UpdateRolePermissionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update role permissions params
func (o *UpdateRolePermissionsParams) WithContext(ctx context.Context) *UpdateRolePermissionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update role permissions params
func (o *UpdateRolePermissionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update role permissions params
func (o *UpdateRolePermissionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update role permissions params
func (o *UpdateRolePermissionsParams) WithHTTPClient(client *http.Client) *UpdateRolePermissionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update role permissions params
func (o *UpdateRolePermissionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update role permissions params
func (o *UpdateRolePermissionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update role permissions params
func (o *UpdateRolePermissionsParams) WithBody(body *iamclientmodels.AccountcommonPermissions) *UpdateRolePermissionsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update role permissions params
func (o *UpdateRolePermissionsParams) SetBody(body *iamclientmodels.AccountcommonPermissions) {
	o.Body = body
}

// WithRoleID adds the roleID to the update role permissions params
func (o *UpdateRolePermissionsParams) WithRoleID(roleID string) *UpdateRolePermissionsParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the update role permissions params
func (o *UpdateRolePermissionsParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateRolePermissionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
