// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package friends

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

// NewGetUserFriendsWithPlatformParams creates a new GetUserFriendsWithPlatformParams object
// with the default values initialized.
func NewGetUserFriendsWithPlatformParams() *GetUserFriendsWithPlatformParams {
	var ()
	return &GetUserFriendsWithPlatformParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserFriendsWithPlatformParamsWithTimeout creates a new GetUserFriendsWithPlatformParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserFriendsWithPlatformParamsWithTimeout(timeout time.Duration) *GetUserFriendsWithPlatformParams {
	var ()
	return &GetUserFriendsWithPlatformParams{

		timeout: timeout,
	}
}

// NewGetUserFriendsWithPlatformParamsWithContext creates a new GetUserFriendsWithPlatformParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserFriendsWithPlatformParamsWithContext(ctx context.Context) *GetUserFriendsWithPlatformParams {
	var ()
	return &GetUserFriendsWithPlatformParams{

		Context: ctx,
	}
}

// NewGetUserFriendsWithPlatformParamsWithHTTPClient creates a new GetUserFriendsWithPlatformParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserFriendsWithPlatformParamsWithHTTPClient(client *http.Client) *GetUserFriendsWithPlatformParams {
	var ()
	return &GetUserFriendsWithPlatformParams{
		HTTPClient: client,
	}
}

/*GetUserFriendsWithPlatformParams contains all the parameters to send to the API endpoint
for the get user friends with platform operation typically these are written to a http.Request
*/
type GetUserFriendsWithPlatformParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) WithTimeout(timeout time.Duration) *GetUserFriendsWithPlatformParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) WithContext(ctx context.Context) *GetUserFriendsWithPlatformParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) WithHTTPClient(client *http.Client) *GetUserFriendsWithPlatformParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) WithNamespace(namespace string) *GetUserFriendsWithPlatformParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user friends with platform params
func (o *GetUserFriendsWithPlatformParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserFriendsWithPlatformParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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