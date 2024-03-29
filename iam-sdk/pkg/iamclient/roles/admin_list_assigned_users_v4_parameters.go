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

// NewAdminListAssignedUsersV4Params creates a new AdminListAssignedUsersV4Params object
// with the default values initialized.
func NewAdminListAssignedUsersV4Params() *AdminListAssignedUsersV4Params {
	var ()
	return &AdminListAssignedUsersV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListAssignedUsersV4ParamsWithTimeout creates a new AdminListAssignedUsersV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListAssignedUsersV4ParamsWithTimeout(timeout time.Duration) *AdminListAssignedUsersV4Params {
	var ()
	return &AdminListAssignedUsersV4Params{

		timeout: timeout,
	}
}

// NewAdminListAssignedUsersV4ParamsWithContext creates a new AdminListAssignedUsersV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListAssignedUsersV4ParamsWithContext(ctx context.Context) *AdminListAssignedUsersV4Params {
	var ()
	return &AdminListAssignedUsersV4Params{

		Context: ctx,
	}
}

// NewAdminListAssignedUsersV4ParamsWithHTTPClient creates a new AdminListAssignedUsersV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListAssignedUsersV4ParamsWithHTTPClient(client *http.Client) *AdminListAssignedUsersV4Params {
	var ()
	return &AdminListAssignedUsersV4Params{
		HTTPClient: client,
	}
}

/*AdminListAssignedUsersV4Params contains all the parameters to send to the API endpoint
for the admin list assigned users v4 operation typically these are written to a http.Request
*/
type AdminListAssignedUsersV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID string
	/*After
	  The cursor that points to query data for the next page

	*/
	After *string
	/*Before
	  The cursor that points to query data for the previous page

	*/
	Before *string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) WithTimeout(timeout time.Duration) *AdminListAssignedUsersV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) WithContext(ctx context.Context) *AdminListAssignedUsersV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) WithHTTPClient(client *http.Client) *AdminListAssignedUsersV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListAssignedUsersV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithRoleID adds the roleID to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) WithRoleID(roleID string) *AdminListAssignedUsersV4Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WithAfter adds the after to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) WithAfter(after *string) *AdminListAssignedUsersV4Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) WithBefore(before *string) *AdminListAssignedUsersV4Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) SetBefore(before *string) {
	o.Before = before
}

// WithLimit adds the limit to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) WithLimit(limit *int64) *AdminListAssignedUsersV4Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list assigned users v4 params
func (o *AdminListAssignedUsersV4Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListAssignedUsersV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param roleId
	if err := r.SetPathParam("roleId", o.RoleID); err != nil {
		return err
	}

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

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
