// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_record

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

// NewAdminGetPlayerRecordSizeHandlerV1Params creates a new AdminGetPlayerRecordSizeHandlerV1Params object
// with the default values initialized.
func NewAdminGetPlayerRecordSizeHandlerV1Params() *AdminGetPlayerRecordSizeHandlerV1Params {
	var ()
	return &AdminGetPlayerRecordSizeHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPlayerRecordSizeHandlerV1ParamsWithTimeout creates a new AdminGetPlayerRecordSizeHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPlayerRecordSizeHandlerV1ParamsWithTimeout(timeout time.Duration) *AdminGetPlayerRecordSizeHandlerV1Params {
	var ()
	return &AdminGetPlayerRecordSizeHandlerV1Params{

		timeout: timeout,
	}
}

// NewAdminGetPlayerRecordSizeHandlerV1ParamsWithContext creates a new AdminGetPlayerRecordSizeHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPlayerRecordSizeHandlerV1ParamsWithContext(ctx context.Context) *AdminGetPlayerRecordSizeHandlerV1Params {
	var ()
	return &AdminGetPlayerRecordSizeHandlerV1Params{

		Context: ctx,
	}
}

// NewAdminGetPlayerRecordSizeHandlerV1ParamsWithHTTPClient creates a new AdminGetPlayerRecordSizeHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPlayerRecordSizeHandlerV1ParamsWithHTTPClient(client *http.Client) *AdminGetPlayerRecordSizeHandlerV1Params {
	var ()
	return &AdminGetPlayerRecordSizeHandlerV1Params{
		HTTPClient: client,
	}
}

/*AdminGetPlayerRecordSizeHandlerV1Params contains all the parameters to send to the API endpoint
for the admin get player record size handler v1 operation typically these are written to a http.Request
*/
type AdminGetPlayerRecordSizeHandlerV1Params struct {

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

// WithTimeout adds the timeout to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) WithTimeout(timeout time.Duration) *AdminGetPlayerRecordSizeHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) WithContext(ctx context.Context) *AdminGetPlayerRecordSizeHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) WithHTTPClient(client *http.Client) *AdminGetPlayerRecordSizeHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithKey adds the key to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) WithKey(key string) *AdminGetPlayerRecordSizeHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) WithNamespace(namespace string) *AdminGetPlayerRecordSizeHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) WithUserID(userID string) *AdminGetPlayerRecordSizeHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get player record size handler v1 params
func (o *AdminGetPlayerRecordSizeHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPlayerRecordSizeHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
