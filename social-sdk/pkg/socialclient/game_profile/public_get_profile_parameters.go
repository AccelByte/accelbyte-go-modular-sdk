// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_profile

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

// NewPublicGetProfileParams creates a new PublicGetProfileParams object
// with the default values initialized.
func NewPublicGetProfileParams() *PublicGetProfileParams {
	var ()
	return &PublicGetProfileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetProfileParamsWithTimeout creates a new PublicGetProfileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetProfileParamsWithTimeout(timeout time.Duration) *PublicGetProfileParams {
	var ()
	return &PublicGetProfileParams{

		timeout: timeout,
	}
}

// NewPublicGetProfileParamsWithContext creates a new PublicGetProfileParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetProfileParamsWithContext(ctx context.Context) *PublicGetProfileParams {
	var ()
	return &PublicGetProfileParams{

		Context: ctx,
	}
}

// NewPublicGetProfileParamsWithHTTPClient creates a new PublicGetProfileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetProfileParamsWithHTTPClient(client *http.Client) *PublicGetProfileParams {
	var ()
	return &PublicGetProfileParams{
		HTTPClient: client,
	}
}

/*PublicGetProfileParams contains all the parameters to send to the API endpoint
for the public get profile operation typically these are written to a http.Request
*/
type PublicGetProfileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*ProfileID
	  Game profile ID

	*/
	ProfileID string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get profile params
func (o *PublicGetProfileParams) WithTimeout(timeout time.Duration) *PublicGetProfileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get profile params
func (o *PublicGetProfileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get profile params
func (o *PublicGetProfileParams) WithContext(ctx context.Context) *PublicGetProfileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get profile params
func (o *PublicGetProfileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get profile params
func (o *PublicGetProfileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get profile params
func (o *PublicGetProfileParams) WithHTTPClient(client *http.Client) *PublicGetProfileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get profile params
func (o *PublicGetProfileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get profile params
func (o *PublicGetProfileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get profile params
func (o *PublicGetProfileParams) WithNamespace(namespace string) *PublicGetProfileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get profile params
func (o *PublicGetProfileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithProfileID adds the profileID to the public get profile params
func (o *PublicGetProfileParams) WithProfileID(profileID string) *PublicGetProfileParams {
	o.SetProfileID(profileID)
	return o
}

// SetProfileID adds the profileId to the public get profile params
func (o *PublicGetProfileParams) SetProfileID(profileID string) {
	o.ProfileID = profileID
}

// WithUserID adds the userID to the public get profile params
func (o *PublicGetProfileParams) WithUserID(userID string) *PublicGetProfileParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get profile params
func (o *PublicGetProfileParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetProfileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param profileId
	if err := r.SetPathParam("profileId", o.ProfileID); err != nil {
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
