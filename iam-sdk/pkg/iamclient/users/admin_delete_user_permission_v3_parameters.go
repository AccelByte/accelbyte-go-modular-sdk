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

// NewAdminDeleteUserPermissionV3Params creates a new AdminDeleteUserPermissionV3Params object
// with the default values initialized.
func NewAdminDeleteUserPermissionV3Params() *AdminDeleteUserPermissionV3Params {
	var ()
	return &AdminDeleteUserPermissionV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteUserPermissionV3ParamsWithTimeout creates a new AdminDeleteUserPermissionV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteUserPermissionV3ParamsWithTimeout(timeout time.Duration) *AdminDeleteUserPermissionV3Params {
	var ()
	return &AdminDeleteUserPermissionV3Params{

		timeout: timeout,
	}
}

// NewAdminDeleteUserPermissionV3ParamsWithContext creates a new AdminDeleteUserPermissionV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteUserPermissionV3ParamsWithContext(ctx context.Context) *AdminDeleteUserPermissionV3Params {
	var ()
	return &AdminDeleteUserPermissionV3Params{

		Context: ctx,
	}
}

// NewAdminDeleteUserPermissionV3ParamsWithHTTPClient creates a new AdminDeleteUserPermissionV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteUserPermissionV3ParamsWithHTTPClient(client *http.Client) *AdminDeleteUserPermissionV3Params {
	var ()
	return &AdminDeleteUserPermissionV3Params{
		HTTPClient: client,
	}
}

/*AdminDeleteUserPermissionV3Params contains all the parameters to send to the API endpoint
for the admin delete user permission v3 operation typically these are written to a http.Request
*/
type AdminDeleteUserPermissionV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Action
	  Action (1..15)

	*/
	Action int64
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Resource
	  Resource Name

	*/
	Resource string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) WithTimeout(timeout time.Duration) *AdminDeleteUserPermissionV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) WithContext(ctx context.Context) *AdminDeleteUserPermissionV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) WithHTTPClient(client *http.Client) *AdminDeleteUserPermissionV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteUserPermissionV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAction adds the action to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) WithAction(action int64) *AdminDeleteUserPermissionV3Params {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) SetAction(action int64) {
	o.Action = action
}

// WithNamespace adds the namespace to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) WithNamespace(namespace string) *AdminDeleteUserPermissionV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithResource adds the resource to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) WithResource(resource string) *AdminDeleteUserPermissionV3Params {
	o.SetResource(resource)
	return o
}

// SetResource adds the resource to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) SetResource(resource string) {
	o.Resource = resource
}

// WithUserID adds the userID to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) WithUserID(userID string) *AdminDeleteUserPermissionV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete user permission v3 params
func (o *AdminDeleteUserPermissionV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteUserPermissionV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param action
	if err := r.SetPathParam("action", swag.FormatInt64(o.Action)); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param resource
	if err := r.SetPathParam("resource", o.Resource); err != nil {
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
