// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_game_binary_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewAdminPutGameBinaryRecordV1Params creates a new AdminPutGameBinaryRecordV1Params object
// with the default values initialized.
func NewAdminPutGameBinaryRecordV1Params() *AdminPutGameBinaryRecordV1Params {
	var ()
	return &AdminPutGameBinaryRecordV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPutGameBinaryRecordV1ParamsWithTimeout creates a new AdminPutGameBinaryRecordV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPutGameBinaryRecordV1ParamsWithTimeout(timeout time.Duration) *AdminPutGameBinaryRecordV1Params {
	var ()
	return &AdminPutGameBinaryRecordV1Params{

		timeout: timeout,
	}
}

// NewAdminPutGameBinaryRecordV1ParamsWithContext creates a new AdminPutGameBinaryRecordV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPutGameBinaryRecordV1ParamsWithContext(ctx context.Context) *AdminPutGameBinaryRecordV1Params {
	var ()
	return &AdminPutGameBinaryRecordV1Params{

		Context: ctx,
	}
}

// NewAdminPutGameBinaryRecordV1ParamsWithHTTPClient creates a new AdminPutGameBinaryRecordV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPutGameBinaryRecordV1ParamsWithHTTPClient(client *http.Client) *AdminPutGameBinaryRecordV1Params {
	var ()
	return &AdminPutGameBinaryRecordV1Params{
		HTTPClient: client,
	}
}

/*AdminPutGameBinaryRecordV1Params contains all the parameters to send to the API endpoint
for the admin put game binary record v1 operation typically these are written to a http.Request
*/
type AdminPutGameBinaryRecordV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsBinaryRecordRequest
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

// WithTimeout adds the timeout to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) WithTimeout(timeout time.Duration) *AdminPutGameBinaryRecordV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) WithContext(ctx context.Context) *AdminPutGameBinaryRecordV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) WithHTTPClient(client *http.Client) *AdminPutGameBinaryRecordV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) WithBody(body *cloudsaveclientmodels.ModelsBinaryRecordRequest) *AdminPutGameBinaryRecordV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) SetBody(body *cloudsaveclientmodels.ModelsBinaryRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) WithKey(key string) *AdminPutGameBinaryRecordV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) WithNamespace(namespace string) *AdminPutGameBinaryRecordV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin put game binary record v1 params
func (o *AdminPutGameBinaryRecordV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPutGameBinaryRecordV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
