// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_binary_record

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

// NewAdminGetPlayerBinaryRecordV1Params creates a new AdminGetPlayerBinaryRecordV1Params object
// with the default values initialized.
func NewAdminGetPlayerBinaryRecordV1Params() *AdminGetPlayerBinaryRecordV1Params {
	var ()
	return &AdminGetPlayerBinaryRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPlayerBinaryRecordV1ParamsWithTimeout creates a new AdminGetPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPlayerBinaryRecordV1ParamsWithTimeout(timeout time.Duration) *AdminGetPlayerBinaryRecordV1Params {
	var ()
	return &AdminGetPlayerBinaryRecordV1Params{

		timeout: timeout,
	}
}

// NewAdminGetPlayerBinaryRecordV1ParamsWithContext creates a new AdminGetPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPlayerBinaryRecordV1ParamsWithContext(ctx context.Context) *AdminGetPlayerBinaryRecordV1Params {
	var ()
	return &AdminGetPlayerBinaryRecordV1Params{

		Context: ctx,
	}
}

// NewAdminGetPlayerBinaryRecordV1ParamsWithHTTPClient creates a new AdminGetPlayerBinaryRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPlayerBinaryRecordV1ParamsWithHTTPClient(client *http.Client) *AdminGetPlayerBinaryRecordV1Params {
	var ()
	return &AdminGetPlayerBinaryRecordV1Params{
		HTTPClient: client,
	}
}

/*AdminGetPlayerBinaryRecordV1Params contains all the parameters to send to the API endpoint
for the admin get player binary record v1 operation typically these are written to a http.Request
*/
type AdminGetPlayerBinaryRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID who own the record

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) WithTimeout(timeout time.Duration) *AdminGetPlayerBinaryRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) WithContext(ctx context.Context) *AdminGetPlayerBinaryRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) WithHTTPClient(client *http.Client) *AdminGetPlayerBinaryRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithKey adds the key to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) WithKey(key string) *AdminGetPlayerBinaryRecordV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) WithNamespace(namespace string) *AdminGetPlayerBinaryRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) WithUserID(userID string) *AdminGetPlayerBinaryRecordV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get player binary record v1 params
func (o *AdminGetPlayerBinaryRecordV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPlayerBinaryRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
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
