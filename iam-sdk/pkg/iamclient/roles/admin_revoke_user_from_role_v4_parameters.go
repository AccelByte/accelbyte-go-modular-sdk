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

// NewAdminRevokeUserFromRoleV4Params creates a new AdminRevokeUserFromRoleV4Params object
// with the default values initialized.
func NewAdminRevokeUserFromRoleV4Params() *AdminRevokeUserFromRoleV4Params {
	var ()
	return &AdminRevokeUserFromRoleV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminRevokeUserFromRoleV4ParamsWithTimeout creates a new AdminRevokeUserFromRoleV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminRevokeUserFromRoleV4ParamsWithTimeout(timeout time.Duration) *AdminRevokeUserFromRoleV4Params {
	var ()
	return &AdminRevokeUserFromRoleV4Params{

		timeout: timeout,
	}
}

// NewAdminRevokeUserFromRoleV4ParamsWithContext creates a new AdminRevokeUserFromRoleV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminRevokeUserFromRoleV4ParamsWithContext(ctx context.Context) *AdminRevokeUserFromRoleV4Params {
	var ()
	return &AdminRevokeUserFromRoleV4Params{

		Context: ctx,
	}
}

// NewAdminRevokeUserFromRoleV4ParamsWithHTTPClient creates a new AdminRevokeUserFromRoleV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminRevokeUserFromRoleV4ParamsWithHTTPClient(client *http.Client) *AdminRevokeUserFromRoleV4Params {
	var ()
	return &AdminRevokeUserFromRoleV4Params{
		HTTPClient: client,
	}
}

/*
AdminRevokeUserFromRoleV4Params contains all the parameters to send to the API endpoint
for the admin revoke user from role v4 operation typically these are written to a http.Request
*/
type AdminRevokeUserFromRoleV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRevokeUserV4Request
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

// WithTimeout adds the timeout to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) WithTimeout(timeout time.Duration) *AdminRevokeUserFromRoleV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) WithContext(ctx context.Context) *AdminRevokeUserFromRoleV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) WithHTTPClient(client *http.Client) *AdminRevokeUserFromRoleV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminRevokeUserFromRoleV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) WithBody(body *iamclientmodels.ModelRevokeUserV4Request) *AdminRevokeUserFromRoleV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) SetBody(body *iamclientmodels.ModelRevokeUserV4Request) {
	o.Body = body
}

// WithRoleID adds the roleID to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) WithRoleID(roleID string) *AdminRevokeUserFromRoleV4Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin revoke user from role v4 params
func (o *AdminRevokeUserFromRoleV4Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminRevokeUserFromRoleV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
