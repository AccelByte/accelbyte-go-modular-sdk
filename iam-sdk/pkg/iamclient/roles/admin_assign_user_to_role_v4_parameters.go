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

// NewAdminAssignUserToRoleV4Params creates a new AdminAssignUserToRoleV4Params object
// with the default values initialized.
func NewAdminAssignUserToRoleV4Params() *AdminAssignUserToRoleV4Params {
	var ()
	return &AdminAssignUserToRoleV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAssignUserToRoleV4ParamsWithTimeout creates a new AdminAssignUserToRoleV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAssignUserToRoleV4ParamsWithTimeout(timeout time.Duration) *AdminAssignUserToRoleV4Params {
	var ()
	return &AdminAssignUserToRoleV4Params{

		timeout: timeout,
	}
}

// NewAdminAssignUserToRoleV4ParamsWithContext creates a new AdminAssignUserToRoleV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAssignUserToRoleV4ParamsWithContext(ctx context.Context) *AdminAssignUserToRoleV4Params {
	var ()
	return &AdminAssignUserToRoleV4Params{

		Context: ctx,
	}
}

// NewAdminAssignUserToRoleV4ParamsWithHTTPClient creates a new AdminAssignUserToRoleV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAssignUserToRoleV4ParamsWithHTTPClient(client *http.Client) *AdminAssignUserToRoleV4Params {
	var ()
	return &AdminAssignUserToRoleV4Params{
		HTTPClient: client,
	}
}

/*AdminAssignUserToRoleV4Params contains all the parameters to send to the API endpoint
for the admin assign user to role v4 operation typically these are written to a http.Request
*/
type AdminAssignUserToRoleV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelAssignUserV4Request
	/*RoleID
	  Role id

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) WithTimeout(timeout time.Duration) *AdminAssignUserToRoleV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) WithContext(ctx context.Context) *AdminAssignUserToRoleV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) WithHTTPClient(client *http.Client) *AdminAssignUserToRoleV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) WithBody(body *iamclientmodels.ModelAssignUserV4Request) *AdminAssignUserToRoleV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) SetBody(body *iamclientmodels.ModelAssignUserV4Request) {
	o.Body = body
}

// WithRoleID adds the roleID to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) WithRoleID(roleID string) *AdminAssignUserToRoleV4Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin assign user to role v4 params
func (o *AdminAssignUserToRoleV4Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAssignUserToRoleV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
