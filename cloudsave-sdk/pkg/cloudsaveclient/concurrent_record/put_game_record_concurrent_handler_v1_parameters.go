// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package concurrent_record

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

// NewPutGameRecordConcurrentHandlerV1Params creates a new PutGameRecordConcurrentHandlerV1Params object
// with the default values initialized.
func NewPutGameRecordConcurrentHandlerV1Params() *PutGameRecordConcurrentHandlerV1Params {
	var ()
	return &PutGameRecordConcurrentHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPutGameRecordConcurrentHandlerV1ParamsWithTimeout creates a new PutGameRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPutGameRecordConcurrentHandlerV1ParamsWithTimeout(timeout time.Duration) *PutGameRecordConcurrentHandlerV1Params {
	var ()
	return &PutGameRecordConcurrentHandlerV1Params{

		timeout: timeout,
	}
}

// NewPutGameRecordConcurrentHandlerV1ParamsWithContext creates a new PutGameRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPutGameRecordConcurrentHandlerV1ParamsWithContext(ctx context.Context) *PutGameRecordConcurrentHandlerV1Params {
	var ()
	return &PutGameRecordConcurrentHandlerV1Params{

		Context: ctx,
	}
}

// NewPutGameRecordConcurrentHandlerV1ParamsWithHTTPClient creates a new PutGameRecordConcurrentHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPutGameRecordConcurrentHandlerV1ParamsWithHTTPClient(client *http.Client) *PutGameRecordConcurrentHandlerV1Params {
	var ()
	return &PutGameRecordConcurrentHandlerV1Params{
		HTTPClient: client,
	}
}

/*PutGameRecordConcurrentHandlerV1Params contains all the parameters to send to the API endpoint
for the put game record concurrent handler v1 operation typically these are written to a http.Request
*/
type PutGameRecordConcurrentHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsConcurrentRecordRequest
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

// WithTimeout adds the timeout to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) WithTimeout(timeout time.Duration) *PutGameRecordConcurrentHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) WithContext(ctx context.Context) *PutGameRecordConcurrentHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) WithHTTPClient(client *http.Client) *PutGameRecordConcurrentHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) WithBody(body *cloudsaveclientmodels.ModelsConcurrentRecordRequest) *PutGameRecordConcurrentHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) SetBody(body *cloudsaveclientmodels.ModelsConcurrentRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) WithKey(key string) *PutGameRecordConcurrentHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) WithNamespace(namespace string) *PutGameRecordConcurrentHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the put game record concurrent handler v1 params
func (o *PutGameRecordConcurrentHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PutGameRecordConcurrentHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
