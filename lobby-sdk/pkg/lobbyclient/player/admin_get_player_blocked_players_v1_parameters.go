// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

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

// NewAdminGetPlayerBlockedPlayersV1Params creates a new AdminGetPlayerBlockedPlayersV1Params object
// with the default values initialized.
func NewAdminGetPlayerBlockedPlayersV1Params() *AdminGetPlayerBlockedPlayersV1Params {
	var ()
	return &AdminGetPlayerBlockedPlayersV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPlayerBlockedPlayersV1ParamsWithTimeout creates a new AdminGetPlayerBlockedPlayersV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPlayerBlockedPlayersV1ParamsWithTimeout(timeout time.Duration) *AdminGetPlayerBlockedPlayersV1Params {
	var ()
	return &AdminGetPlayerBlockedPlayersV1Params{

		timeout: timeout,
	}
}

// NewAdminGetPlayerBlockedPlayersV1ParamsWithContext creates a new AdminGetPlayerBlockedPlayersV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPlayerBlockedPlayersV1ParamsWithContext(ctx context.Context) *AdminGetPlayerBlockedPlayersV1Params {
	var ()
	return &AdminGetPlayerBlockedPlayersV1Params{

		Context: ctx,
	}
}

// NewAdminGetPlayerBlockedPlayersV1ParamsWithHTTPClient creates a new AdminGetPlayerBlockedPlayersV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPlayerBlockedPlayersV1ParamsWithHTTPClient(client *http.Client) *AdminGetPlayerBlockedPlayersV1Params {
	var ()
	return &AdminGetPlayerBlockedPlayersV1Params{
		HTTPClient: client,
	}
}

/*AdminGetPlayerBlockedPlayersV1Params contains all the parameters to send to the API endpoint
for the admin get player blocked players v1 operation typically these are written to a http.Request
*/
type AdminGetPlayerBlockedPlayersV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

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

// WithTimeout adds the timeout to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) WithTimeout(timeout time.Duration) *AdminGetPlayerBlockedPlayersV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) WithContext(ctx context.Context) *AdminGetPlayerBlockedPlayersV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) WithHTTPClient(client *http.Client) *AdminGetPlayerBlockedPlayersV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) WithNamespace(namespace string) *AdminGetPlayerBlockedPlayersV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) WithUserID(userID string) *AdminGetPlayerBlockedPlayersV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get player blocked players v1 params
func (o *AdminGetPlayerBlockedPlayersV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPlayerBlockedPlayersV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
