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

// NewGetRoleMembersParams creates a new GetRoleMembersParams object
// with the default values initialized.
func NewGetRoleMembersParams() *GetRoleMembersParams {
	var ()
	return &GetRoleMembersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRoleMembersParamsWithTimeout creates a new GetRoleMembersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRoleMembersParamsWithTimeout(timeout time.Duration) *GetRoleMembersParams {
	var ()
	return &GetRoleMembersParams{

		timeout: timeout,
	}
}

// NewGetRoleMembersParamsWithContext creates a new GetRoleMembersParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRoleMembersParamsWithContext(ctx context.Context) *GetRoleMembersParams {
	var ()
	return &GetRoleMembersParams{

		Context: ctx,
	}
}

// NewGetRoleMembersParamsWithHTTPClient creates a new GetRoleMembersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRoleMembersParamsWithHTTPClient(client *http.Client) *GetRoleMembersParams {
	var ()
	return &GetRoleMembersParams{
		HTTPClient: client,
	}
}

/*
GetRoleMembersParams contains all the parameters to send to the API endpoint
for the get role members operation typically these are written to a http.Request
*/
type GetRoleMembersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the get role members params
func (o *GetRoleMembersParams) WithTimeout(timeout time.Duration) *GetRoleMembersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get role members params
func (o *GetRoleMembersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get role members params
func (o *GetRoleMembersParams) WithContext(ctx context.Context) *GetRoleMembersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get role members params
func (o *GetRoleMembersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get role members params
func (o *GetRoleMembersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get role members params
func (o *GetRoleMembersParams) WithHTTPClient(client *http.Client) *GetRoleMembersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get role members params
func (o *GetRoleMembersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get role members params
func (o *GetRoleMembersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetRoleMembersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithRoleID adds the roleID to the get role members params
func (o *GetRoleMembersParams) WithRoleID(roleID string) *GetRoleMembersParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the get role members params
func (o *GetRoleMembersParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *GetRoleMembersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
