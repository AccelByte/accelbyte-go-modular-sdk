// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewPublicGetUserPublicInfoByUserIDV4Params creates a new PublicGetUserPublicInfoByUserIDV4Params object
// with the default values initialized.
func NewPublicGetUserPublicInfoByUserIDV4Params() *PublicGetUserPublicInfoByUserIDV4Params {
	var ()
	return &PublicGetUserPublicInfoByUserIDV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserPublicInfoByUserIDV4ParamsWithTimeout creates a new PublicGetUserPublicInfoByUserIDV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserPublicInfoByUserIDV4ParamsWithTimeout(timeout time.Duration) *PublicGetUserPublicInfoByUserIDV4Params {
	var ()
	return &PublicGetUserPublicInfoByUserIDV4Params{

		timeout: timeout,
	}
}

// NewPublicGetUserPublicInfoByUserIDV4ParamsWithContext creates a new PublicGetUserPublicInfoByUserIDV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserPublicInfoByUserIDV4ParamsWithContext(ctx context.Context) *PublicGetUserPublicInfoByUserIDV4Params {
	var ()
	return &PublicGetUserPublicInfoByUserIDV4Params{

		Context: ctx,
	}
}

// NewPublicGetUserPublicInfoByUserIDV4ParamsWithHTTPClient creates a new PublicGetUserPublicInfoByUserIDV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserPublicInfoByUserIDV4ParamsWithHTTPClient(client *http.Client) *PublicGetUserPublicInfoByUserIDV4Params {
	var ()
	return &PublicGetUserPublicInfoByUserIDV4Params{
		HTTPClient: client,
	}
}

/*PublicGetUserPublicInfoByUserIDV4Params contains all the parameters to send to the API endpoint
for the public get user public info by user id v4 operation typically these are written to a http.Request
*/
type PublicGetUserPublicInfoByUserIDV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) WithTimeout(timeout time.Duration) *PublicGetUserPublicInfoByUserIDV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) WithContext(ctx context.Context) *PublicGetUserPublicInfoByUserIDV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) WithHTTPClient(client *http.Client) *PublicGetUserPublicInfoByUserIDV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) WithNamespace(namespace string) *PublicGetUserPublicInfoByUserIDV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) WithUserID(userID string) *PublicGetUserPublicInfoByUserIDV4Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user public info by user id v4 params
func (o *PublicGetUserPublicInfoByUserIDV4Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserPublicInfoByUserIDV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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