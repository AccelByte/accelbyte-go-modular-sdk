// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// NewQueueSessionHandlerParams creates a new QueueSessionHandlerParams object
// with the default values initialized.
func NewQueueSessionHandlerParams() *QueueSessionHandlerParams {
	var ()
	return &QueueSessionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueueSessionHandlerParamsWithTimeout creates a new QueueSessionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueueSessionHandlerParamsWithTimeout(timeout time.Duration) *QueueSessionHandlerParams {
	var ()
	return &QueueSessionHandlerParams{

		timeout: timeout,
	}
}

// NewQueueSessionHandlerParamsWithContext creates a new QueueSessionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueueSessionHandlerParamsWithContext(ctx context.Context) *QueueSessionHandlerParams {
	var ()
	return &QueueSessionHandlerParams{

		Context: ctx,
	}
}

// NewQueueSessionHandlerParamsWithHTTPClient creates a new QueueSessionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueueSessionHandlerParamsWithHTTPClient(client *http.Client) *QueueSessionHandlerParams {
	var ()
	return &QueueSessionHandlerParams{
		HTTPClient: client,
	}
}

/*QueueSessionHandlerParams contains all the parameters to send to the API endpoint
for the queue session handler operation typically these are written to a http.Request
*/
type QueueSessionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *matchmakingclientmodels.ModelsMatchmakingResult
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the queue session handler params
func (o *QueueSessionHandlerParams) WithTimeout(timeout time.Duration) *QueueSessionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the queue session handler params
func (o *QueueSessionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the queue session handler params
func (o *QueueSessionHandlerParams) WithContext(ctx context.Context) *QueueSessionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the queue session handler params
func (o *QueueSessionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the queue session handler params
func (o *QueueSessionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the queue session handler params
func (o *QueueSessionHandlerParams) WithHTTPClient(client *http.Client) *QueueSessionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the queue session handler params
func (o *QueueSessionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the queue session handler params
func (o *QueueSessionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the queue session handler params
func (o *QueueSessionHandlerParams) WithBody(body *matchmakingclientmodels.ModelsMatchmakingResult) *QueueSessionHandlerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the queue session handler params
func (o *QueueSessionHandlerParams) SetBody(body *matchmakingclientmodels.ModelsMatchmakingResult) {
	o.Body = body
}

// WithNamespace adds the namespace to the queue session handler params
func (o *QueueSessionHandlerParams) WithNamespace(namespace string) *QueueSessionHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the queue session handler params
func (o *QueueSessionHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *QueueSessionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
