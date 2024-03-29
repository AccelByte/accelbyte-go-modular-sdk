// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

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

// NewAdminDeleteAllUserGroupParams creates a new AdminDeleteAllUserGroupParams object
// with the default values initialized.
func NewAdminDeleteAllUserGroupParams() *AdminDeleteAllUserGroupParams {
	var ()
	return &AdminDeleteAllUserGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteAllUserGroupParamsWithTimeout creates a new AdminDeleteAllUserGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteAllUserGroupParamsWithTimeout(timeout time.Duration) *AdminDeleteAllUserGroupParams {
	var ()
	return &AdminDeleteAllUserGroupParams{

		timeout: timeout,
	}
}

// NewAdminDeleteAllUserGroupParamsWithContext creates a new AdminDeleteAllUserGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteAllUserGroupParamsWithContext(ctx context.Context) *AdminDeleteAllUserGroupParams {
	var ()
	return &AdminDeleteAllUserGroupParams{

		Context: ctx,
	}
}

// NewAdminDeleteAllUserGroupParamsWithHTTPClient creates a new AdminDeleteAllUserGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteAllUserGroupParamsWithHTTPClient(client *http.Client) *AdminDeleteAllUserGroupParams {
	var ()
	return &AdminDeleteAllUserGroupParams{
		HTTPClient: client,
	}
}

/*AdminDeleteAllUserGroupParams contains all the parameters to send to the API endpoint
for the admin delete all user group operation typically these are written to a http.Request
*/
type AdminDeleteAllUserGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithTimeout(timeout time.Duration) *AdminDeleteAllUserGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithContext(ctx context.Context) *AdminDeleteAllUserGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithHTTPClient(client *http.Client) *AdminDeleteAllUserGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteAllUserGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithNamespace(namespace string) *AdminDeleteAllUserGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithUserID(userID string) *AdminDeleteAllUserGroupParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteAllUserGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
