// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

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

// NewRevokeUserParams creates a new RevokeUserParams object
// with the default values initialized.
func NewRevokeUserParams() *RevokeUserParams {
	var ()
	return &RevokeUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeUserParamsWithTimeout creates a new RevokeUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeUserParamsWithTimeout(timeout time.Duration) *RevokeUserParams {
	var ()
	return &RevokeUserParams{

		timeout: timeout,
	}
}

// NewRevokeUserParamsWithContext creates a new RevokeUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeUserParamsWithContext(ctx context.Context) *RevokeUserParams {
	var ()
	return &RevokeUserParams{

		Context: ctx,
	}
}

// NewRevokeUserParamsWithHTTPClient creates a new RevokeUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeUserParamsWithHTTPClient(client *http.Client) *RevokeUserParams {
	var ()
	return &RevokeUserParams{
		HTTPClient: client,
	}
}

/*RevokeUserParams contains all the parameters to send to the API endpoint
for the revoke user operation typically these are written to a http.Request
*/
type RevokeUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  User to be revoked

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the revoke user params
func (o *RevokeUserParams) WithTimeout(timeout time.Duration) *RevokeUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke user params
func (o *RevokeUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke user params
func (o *RevokeUserParams) WithContext(ctx context.Context) *RevokeUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke user params
func (o *RevokeUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke user params
func (o *RevokeUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke user params
func (o *RevokeUserParams) WithHTTPClient(client *http.Client) *RevokeUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke user params
func (o *RevokeUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke user params
func (o *RevokeUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the revoke user params
func (o *RevokeUserParams) WithNamespace(namespace string) *RevokeUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the revoke user params
func (o *RevokeUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the revoke user params
func (o *RevokeUserParams) WithUserID(userID string) *RevokeUserParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the revoke user params
func (o *RevokeUserParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
