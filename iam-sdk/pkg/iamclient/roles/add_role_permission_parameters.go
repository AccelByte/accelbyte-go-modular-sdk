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

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAddRolePermissionParams creates a new AddRolePermissionParams object
// with the default values initialized.
func NewAddRolePermissionParams() *AddRolePermissionParams {
	var ()
	return &AddRolePermissionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddRolePermissionParamsWithTimeout creates a new AddRolePermissionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddRolePermissionParamsWithTimeout(timeout time.Duration) *AddRolePermissionParams {
	var ()
	return &AddRolePermissionParams{

		timeout: timeout,
	}
}

// NewAddRolePermissionParamsWithContext creates a new AddRolePermissionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddRolePermissionParamsWithContext(ctx context.Context) *AddRolePermissionParams {
	var ()
	return &AddRolePermissionParams{

		Context: ctx,
	}
}

// NewAddRolePermissionParamsWithHTTPClient creates a new AddRolePermissionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddRolePermissionParamsWithHTTPClient(client *http.Client) *AddRolePermissionParams {
	var ()
	return &AddRolePermissionParams{
		HTTPClient: client,
	}
}

/*AddRolePermissionParams contains all the parameters to send to the API endpoint
for the add role permission operation typically these are written to a http.Request
*/
type AddRolePermissionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUpdatePermissionScheduleRequest
	/*Action
	  Action

	*/
	Action int64
	/*Resource
	  Resource Name

	*/
	Resource string
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

// WithTimeout adds the timeout to the add role permission params
func (o *AddRolePermissionParams) WithTimeout(timeout time.Duration) *AddRolePermissionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add role permission params
func (o *AddRolePermissionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add role permission params
func (o *AddRolePermissionParams) WithContext(ctx context.Context) *AddRolePermissionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add role permission params
func (o *AddRolePermissionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add role permission params
func (o *AddRolePermissionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add role permission params
func (o *AddRolePermissionParams) WithHTTPClient(client *http.Client) *AddRolePermissionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add role permission params
func (o *AddRolePermissionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add role permission params
func (o *AddRolePermissionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddRolePermissionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the add role permission params
func (o *AddRolePermissionParams) WithBody(body *iamclientmodels.ModelUpdatePermissionScheduleRequest) *AddRolePermissionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the add role permission params
func (o *AddRolePermissionParams) SetBody(body *iamclientmodels.ModelUpdatePermissionScheduleRequest) {
	o.Body = body
}

// WithAction adds the action to the add role permission params
func (o *AddRolePermissionParams) WithAction(action int64) *AddRolePermissionParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the add role permission params
func (o *AddRolePermissionParams) SetAction(action int64) {
	o.Action = action
}

// WithResource adds the resource to the add role permission params
func (o *AddRolePermissionParams) WithResource(resource string) *AddRolePermissionParams {
	o.SetResource(resource)
	return o
}

// SetResource adds the resource to the add role permission params
func (o *AddRolePermissionParams) SetResource(resource string) {
	o.Resource = resource
}

// WithRoleID adds the roleID to the add role permission params
func (o *AddRolePermissionParams) WithRoleID(roleID string) *AddRolePermissionParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the add role permission params
func (o *AddRolePermissionParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AddRolePermissionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
