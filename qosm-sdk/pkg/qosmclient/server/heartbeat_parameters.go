// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package server

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/qosm-sdk/pkg/qosmclientmodels"
)

// NewHeartbeatParams creates a new HeartbeatParams object
// with the default values initialized.
func NewHeartbeatParams() *HeartbeatParams {
	var ()
	return &HeartbeatParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewHeartbeatParamsWithTimeout creates a new HeartbeatParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewHeartbeatParamsWithTimeout(timeout time.Duration) *HeartbeatParams {
	var ()
	return &HeartbeatParams{

		timeout: timeout,
	}
}

// NewHeartbeatParamsWithContext creates a new HeartbeatParams object
// with the default values initialized, and the ability to set a context for a request
func NewHeartbeatParamsWithContext(ctx context.Context) *HeartbeatParams {
	var ()
	return &HeartbeatParams{

		Context: ctx,
	}
}

// NewHeartbeatParamsWithHTTPClient creates a new HeartbeatParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewHeartbeatParamsWithHTTPClient(client *http.Client) *HeartbeatParams {
	var ()
	return &HeartbeatParams{
		HTTPClient: client,
	}
}

/*HeartbeatParams contains all the parameters to send to the API endpoint
for the heartbeat operation typically these are written to a http.Request
*/
type HeartbeatParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *qosmclientmodels.ModelsHeartbeatRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the heartbeat params
func (o *HeartbeatParams) WithTimeout(timeout time.Duration) *HeartbeatParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the heartbeat params
func (o *HeartbeatParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the heartbeat params
func (o *HeartbeatParams) WithContext(ctx context.Context) *HeartbeatParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the heartbeat params
func (o *HeartbeatParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the heartbeat params
func (o *HeartbeatParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the heartbeat params
func (o *HeartbeatParams) WithHTTPClient(client *http.Client) *HeartbeatParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the heartbeat params
func (o *HeartbeatParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the heartbeat params
func (o *HeartbeatParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the heartbeat params
func (o *HeartbeatParams) WithBody(body *qosmclientmodels.ModelsHeartbeatRequest) *HeartbeatParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the heartbeat params
func (o *HeartbeatParams) SetBody(body *qosmclientmodels.ModelsHeartbeatRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *HeartbeatParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
