// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_group

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

// NewAdminGetGroupParams creates a new AdminGetGroupParams object
// with the default values initialized.
func NewAdminGetGroupParams() *AdminGetGroupParams {
	var ()
	return &AdminGetGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetGroupParamsWithTimeout creates a new AdminGetGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetGroupParamsWithTimeout(timeout time.Duration) *AdminGetGroupParams {
	var ()
	return &AdminGetGroupParams{

		timeout: timeout,
	}
}

// NewAdminGetGroupParamsWithContext creates a new AdminGetGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetGroupParamsWithContext(ctx context.Context) *AdminGetGroupParams {
	var ()
	return &AdminGetGroupParams{

		Context: ctx,
	}
}

// NewAdminGetGroupParamsWithHTTPClient creates a new AdminGetGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetGroupParamsWithHTTPClient(client *http.Client) *AdminGetGroupParams {
	var ()
	return &AdminGetGroupParams{
		HTTPClient: client,
	}
}

/*AdminGetGroupParams contains all the parameters to send to the API endpoint
for the admin get group operation typically these are written to a http.Request
*/
type AdminGetGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  group ID

	*/
	GroupID string
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
}

// WithTimeout adds the timeout to the admin get group params
func (o *AdminGetGroupParams) WithTimeout(timeout time.Duration) *AdminGetGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get group params
func (o *AdminGetGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get group params
func (o *AdminGetGroupParams) WithContext(ctx context.Context) *AdminGetGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get group params
func (o *AdminGetGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get group params
func (o *AdminGetGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get group params
func (o *AdminGetGroupParams) WithHTTPClient(client *http.Client) *AdminGetGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get group params
func (o *AdminGetGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get group params
func (o *AdminGetGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the admin get group params
func (o *AdminGetGroupParams) WithGroupID(groupID string) *AdminGetGroupParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the admin get group params
func (o *AdminGetGroupParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the admin get group params
func (o *AdminGetGroupParams) WithNamespace(namespace string) *AdminGetGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get group params
func (o *AdminGetGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get group params
func (o *AdminGetGroupParams) WithUserID(userID string) *AdminGetGroupParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get group params
func (o *AdminGetGroupParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
