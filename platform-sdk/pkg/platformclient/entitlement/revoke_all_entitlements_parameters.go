// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

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

// NewRevokeAllEntitlementsParams creates a new RevokeAllEntitlementsParams object
// with the default values initialized.
func NewRevokeAllEntitlementsParams() *RevokeAllEntitlementsParams {
	var ()
	return &RevokeAllEntitlementsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeAllEntitlementsParamsWithTimeout creates a new RevokeAllEntitlementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeAllEntitlementsParamsWithTimeout(timeout time.Duration) *RevokeAllEntitlementsParams {
	var ()
	return &RevokeAllEntitlementsParams{

		timeout: timeout,
	}
}

// NewRevokeAllEntitlementsParamsWithContext creates a new RevokeAllEntitlementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeAllEntitlementsParamsWithContext(ctx context.Context) *RevokeAllEntitlementsParams {
	var ()
	return &RevokeAllEntitlementsParams{

		Context: ctx,
	}
}

// NewRevokeAllEntitlementsParamsWithHTTPClient creates a new RevokeAllEntitlementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeAllEntitlementsParamsWithHTTPClient(client *http.Client) *RevokeAllEntitlementsParams {
	var ()
	return &RevokeAllEntitlementsParams{
		HTTPClient: client,
	}
}

/*RevokeAllEntitlementsParams contains all the parameters to send to the API endpoint
for the revoke all entitlements operation typically these are written to a http.Request
*/
type RevokeAllEntitlementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) WithTimeout(timeout time.Duration) *RevokeAllEntitlementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) WithContext(ctx context.Context) *RevokeAllEntitlementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) WithHTTPClient(client *http.Client) *RevokeAllEntitlementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) WithNamespace(namespace string) *RevokeAllEntitlementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) WithUserID(userID string) *RevokeAllEntitlementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the revoke all entitlements params
func (o *RevokeAllEntitlementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeAllEntitlementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
