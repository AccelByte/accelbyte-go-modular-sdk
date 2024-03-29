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

// NewAddUserRoleParams creates a new AddUserRoleParams object
// with the default values initialized.
func NewAddUserRoleParams() *AddUserRoleParams {
	var ()
	return &AddUserRoleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddUserRoleParamsWithTimeout creates a new AddUserRoleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddUserRoleParamsWithTimeout(timeout time.Duration) *AddUserRoleParams {
	var ()
	return &AddUserRoleParams{

		timeout: timeout,
	}
}

// NewAddUserRoleParamsWithContext creates a new AddUserRoleParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddUserRoleParamsWithContext(ctx context.Context) *AddUserRoleParams {
	var ()
	return &AddUserRoleParams{

		Context: ctx,
	}
}

// NewAddUserRoleParamsWithHTTPClient creates a new AddUserRoleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddUserRoleParamsWithHTTPClient(client *http.Client) *AddUserRoleParams {
	var ()
	return &AddUserRoleParams{
		HTTPClient: client,
	}
}

/*AddUserRoleParams contains all the parameters to send to the API endpoint
for the add user role operation typically these are written to a http.Request
*/
type AddUserRoleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*RoleID
	  Role id

	*/
	RoleID string
	/*UserID
	  User id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the add user role params
func (o *AddUserRoleParams) WithTimeout(timeout time.Duration) *AddUserRoleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add user role params
func (o *AddUserRoleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add user role params
func (o *AddUserRoleParams) WithContext(ctx context.Context) *AddUserRoleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add user role params
func (o *AddUserRoleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add user role params
func (o *AddUserRoleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add user role params
func (o *AddUserRoleParams) WithHTTPClient(client *http.Client) *AddUserRoleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add user role params
func (o *AddUserRoleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add user role params
func (o *AddUserRoleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddUserRoleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the add user role params
func (o *AddUserRoleParams) WithNamespace(namespace string) *AddUserRoleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the add user role params
func (o *AddUserRoleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRoleID adds the roleID to the add user role params
func (o *AddUserRoleParams) WithRoleID(roleID string) *AddUserRoleParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the add user role params
func (o *AddUserRoleParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WithUserID adds the userID to the add user role params
func (o *AddUserRoleParams) WithUserID(userID string) *AddUserRoleParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the add user role params
func (o *AddUserRoleParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AddUserRoleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
