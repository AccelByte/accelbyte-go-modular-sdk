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

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminUpdateUserStatusV3Params creates a new AdminUpdateUserStatusV3Params object
// with the default values initialized.
func NewAdminUpdateUserStatusV3Params() *AdminUpdateUserStatusV3Params {
	var ()
	return &AdminUpdateUserStatusV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateUserStatusV3ParamsWithTimeout creates a new AdminUpdateUserStatusV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateUserStatusV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateUserStatusV3Params {
	var ()
	return &AdminUpdateUserStatusV3Params{

		timeout: timeout,
	}
}

// NewAdminUpdateUserStatusV3ParamsWithContext creates a new AdminUpdateUserStatusV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateUserStatusV3ParamsWithContext(ctx context.Context) *AdminUpdateUserStatusV3Params {
	var ()
	return &AdminUpdateUserStatusV3Params{

		Context: ctx,
	}
}

// NewAdminUpdateUserStatusV3ParamsWithHTTPClient creates a new AdminUpdateUserStatusV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateUserStatusV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateUserStatusV3Params {
	var ()
	return &AdminUpdateUserStatusV3Params{
		HTTPClient: client,
	}
}

/*AdminUpdateUserStatusV3Params contains all the parameters to send to the API endpoint
for the admin update user status v3 operation typically these are written to a http.Request
*/
type AdminUpdateUserStatusV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUpdateUserStatusRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) WithTimeout(timeout time.Duration) *AdminUpdateUserStatusV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) WithContext(ctx context.Context) *AdminUpdateUserStatusV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) WithHTTPClient(client *http.Client) *AdminUpdateUserStatusV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) WithBody(body *iamclientmodels.ModelUpdateUserStatusRequest) *AdminUpdateUserStatusV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) SetBody(body *iamclientmodels.ModelUpdateUserStatusRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) WithNamespace(namespace string) *AdminUpdateUserStatusV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) WithUserID(userID string) *AdminUpdateUserStatusV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update user status v3 params
func (o *AdminUpdateUserStatusV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateUserStatusV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
