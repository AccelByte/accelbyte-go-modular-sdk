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
	"github.com/go-openapi/swag"
)

// NewGetAdminUsersByRoleIDV3Params creates a new GetAdminUsersByRoleIDV3Params object
// with the default values initialized.
func NewGetAdminUsersByRoleIDV3Params() *GetAdminUsersByRoleIDV3Params {
	var ()
	return &GetAdminUsersByRoleIDV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAdminUsersByRoleIDV3ParamsWithTimeout creates a new GetAdminUsersByRoleIDV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAdminUsersByRoleIDV3ParamsWithTimeout(timeout time.Duration) *GetAdminUsersByRoleIDV3Params {
	var ()
	return &GetAdminUsersByRoleIDV3Params{

		timeout: timeout,
	}
}

// NewGetAdminUsersByRoleIDV3ParamsWithContext creates a new GetAdminUsersByRoleIDV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetAdminUsersByRoleIDV3ParamsWithContext(ctx context.Context) *GetAdminUsersByRoleIDV3Params {
	var ()
	return &GetAdminUsersByRoleIDV3Params{

		Context: ctx,
	}
}

// NewGetAdminUsersByRoleIDV3ParamsWithHTTPClient creates a new GetAdminUsersByRoleIDV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAdminUsersByRoleIDV3ParamsWithHTTPClient(client *http.Client) *GetAdminUsersByRoleIDV3Params {
	var ()
	return &GetAdminUsersByRoleIDV3Params{
		HTTPClient: client,
	}
}

/*GetAdminUsersByRoleIDV3Params contains all the parameters to send to the API endpoint
for the get admin users by role id v3 operation typically these are written to a http.Request
*/
type GetAdminUsersByRoleIDV3Params struct {

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
	/*After
	  The cursor that points to query data for the next page

	*/
	After *int64
	/*Before
	  The cursor that points to query data for the previous page

	*/
	Before *int64
	/*Limit
	  The maximum number of data that may be returned (1...100)

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) WithTimeout(timeout time.Duration) *GetAdminUsersByRoleIDV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) WithContext(ctx context.Context) *GetAdminUsersByRoleIDV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) WithHTTPClient(client *http.Client) *GetAdminUsersByRoleIDV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAdminUsersByRoleIDV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) WithNamespace(namespace string) *GetAdminUsersByRoleIDV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRoleID adds the roleID to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) WithRoleID(roleID string) *GetAdminUsersByRoleIDV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WithAfter adds the after to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) WithAfter(after *int64) *GetAdminUsersByRoleIDV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetAfter(after *int64) {
	o.After = after
}

// WithBefore adds the before to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) WithBefore(before *int64) *GetAdminUsersByRoleIDV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetBefore(before *int64) {
	o.Before = before
}

// WithLimit adds the limit to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) WithLimit(limit *int64) *GetAdminUsersByRoleIDV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get admin users by role id v3 params
func (o *GetAdminUsersByRoleIDV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *GetAdminUsersByRoleIDV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.After != nil {

		// query param after
		var qrAfter int64
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := swag.FormatInt64(qrAfter)
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore int64
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := swag.FormatInt64(qrBefore)
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
