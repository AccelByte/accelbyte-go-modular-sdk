// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_record

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

// NewAdminDeleteAdminGameRecordV1Params creates a new AdminDeleteAdminGameRecordV1Params object
// with the default values initialized.
func NewAdminDeleteAdminGameRecordV1Params() *AdminDeleteAdminGameRecordV1Params {
	var ()
	return &AdminDeleteAdminGameRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteAdminGameRecordV1ParamsWithTimeout creates a new AdminDeleteAdminGameRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteAdminGameRecordV1ParamsWithTimeout(timeout time.Duration) *AdminDeleteAdminGameRecordV1Params {
	var ()
	return &AdminDeleteAdminGameRecordV1Params{

		timeout: timeout,
	}
}

// NewAdminDeleteAdminGameRecordV1ParamsWithContext creates a new AdminDeleteAdminGameRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteAdminGameRecordV1ParamsWithContext(ctx context.Context) *AdminDeleteAdminGameRecordV1Params {
	var ()
	return &AdminDeleteAdminGameRecordV1Params{

		Context: ctx,
	}
}

// NewAdminDeleteAdminGameRecordV1ParamsWithHTTPClient creates a new AdminDeleteAdminGameRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteAdminGameRecordV1ParamsWithHTTPClient(client *http.Client) *AdminDeleteAdminGameRecordV1Params {
	var ()
	return &AdminDeleteAdminGameRecordV1Params{
		HTTPClient: client,
	}
}

/*AdminDeleteAdminGameRecordV1Params contains all the parameters to send to the API endpoint
for the admin delete admin game record v1 operation typically these are written to a http.Request
*/
type AdminDeleteAdminGameRecordV1Params struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) WithTimeout(timeout time.Duration) *AdminDeleteAdminGameRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) WithContext(ctx context.Context) *AdminDeleteAdminGameRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) WithHTTPClient(client *http.Client) *AdminDeleteAdminGameRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithKey adds the key to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) WithKey(key string) *AdminDeleteAdminGameRecordV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) WithNamespace(namespace string) *AdminDeleteAdminGameRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete admin game record v1 params
func (o *AdminDeleteAdminGameRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteAdminGameRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
