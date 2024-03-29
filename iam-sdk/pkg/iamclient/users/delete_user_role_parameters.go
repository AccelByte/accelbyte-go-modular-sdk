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

// NewDeleteUserRoleParams creates a new DeleteUserRoleParams object
// with the default values initialized.
func NewDeleteUserRoleParams() *DeleteUserRoleParams {
	var ()
	return &DeleteUserRoleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserRoleParamsWithTimeout creates a new DeleteUserRoleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserRoleParamsWithTimeout(timeout time.Duration) *DeleteUserRoleParams {
	var ()
	return &DeleteUserRoleParams{

		timeout: timeout,
	}
}

// NewDeleteUserRoleParamsWithContext creates a new DeleteUserRoleParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserRoleParamsWithContext(ctx context.Context) *DeleteUserRoleParams {
	var ()
	return &DeleteUserRoleParams{

		Context: ctx,
	}
}

// NewDeleteUserRoleParamsWithHTTPClient creates a new DeleteUserRoleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserRoleParamsWithHTTPClient(client *http.Client) *DeleteUserRoleParams {
	var ()
	return &DeleteUserRoleParams{
		HTTPClient: client,
	}
}

/*DeleteUserRoleParams contains all the parameters to send to the API endpoint
for the delete user role operation typically these are written to a http.Request
*/
type DeleteUserRoleParams struct {

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

// WithTimeout adds the timeout to the delete user role params
func (o *DeleteUserRoleParams) WithTimeout(timeout time.Duration) *DeleteUserRoleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user role params
func (o *DeleteUserRoleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user role params
func (o *DeleteUserRoleParams) WithContext(ctx context.Context) *DeleteUserRoleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user role params
func (o *DeleteUserRoleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user role params
func (o *DeleteUserRoleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user role params
func (o *DeleteUserRoleParams) WithHTTPClient(client *http.Client) *DeleteUserRoleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user role params
func (o *DeleteUserRoleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user role params
func (o *DeleteUserRoleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteUserRoleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete user role params
func (o *DeleteUserRoleParams) WithNamespace(namespace string) *DeleteUserRoleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user role params
func (o *DeleteUserRoleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRoleID adds the roleID to the delete user role params
func (o *DeleteUserRoleParams) WithRoleID(roleID string) *DeleteUserRoleParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the delete user role params
func (o *DeleteUserRoleParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WithUserID adds the userID to the delete user role params
func (o *DeleteUserRoleParams) WithUserID(userID string) *DeleteUserRoleParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user role params
func (o *DeleteUserRoleParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserRoleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
