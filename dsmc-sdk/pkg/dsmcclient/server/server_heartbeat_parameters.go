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

	"github.com/AccelByte/accelbyte-go-modular-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// NewServerHeartbeatParams creates a new ServerHeartbeatParams object
// with the default values initialized.
func NewServerHeartbeatParams() *ServerHeartbeatParams {
	var ()
	return &ServerHeartbeatParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewServerHeartbeatParamsWithTimeout creates a new ServerHeartbeatParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewServerHeartbeatParamsWithTimeout(timeout time.Duration) *ServerHeartbeatParams {
	var ()
	return &ServerHeartbeatParams{

		timeout: timeout,
	}
}

// NewServerHeartbeatParamsWithContext creates a new ServerHeartbeatParams object
// with the default values initialized, and the ability to set a context for a request
func NewServerHeartbeatParamsWithContext(ctx context.Context) *ServerHeartbeatParams {
	var ()
	return &ServerHeartbeatParams{

		Context: ctx,
	}
}

// NewServerHeartbeatParamsWithHTTPClient creates a new ServerHeartbeatParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewServerHeartbeatParamsWithHTTPClient(client *http.Client) *ServerHeartbeatParams {
	var ()
	return &ServerHeartbeatParams{
		HTTPClient: client,
	}
}

/*ServerHeartbeatParams contains all the parameters to send to the API endpoint
for the server heartbeat operation typically these are written to a http.Request
*/
type ServerHeartbeatParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsDSHeartbeatRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the server heartbeat params
func (o *ServerHeartbeatParams) WithTimeout(timeout time.Duration) *ServerHeartbeatParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the server heartbeat params
func (o *ServerHeartbeatParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the server heartbeat params
func (o *ServerHeartbeatParams) WithContext(ctx context.Context) *ServerHeartbeatParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the server heartbeat params
func (o *ServerHeartbeatParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the server heartbeat params
func (o *ServerHeartbeatParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the server heartbeat params
func (o *ServerHeartbeatParams) WithHTTPClient(client *http.Client) *ServerHeartbeatParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the server heartbeat params
func (o *ServerHeartbeatParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the server heartbeat params
func (o *ServerHeartbeatParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the server heartbeat params
func (o *ServerHeartbeatParams) WithBody(body *dsmcclientmodels.ModelsDSHeartbeatRequest) *ServerHeartbeatParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the server heartbeat params
func (o *ServerHeartbeatParams) SetBody(body *dsmcclientmodels.ModelsDSHeartbeatRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the server heartbeat params
func (o *ServerHeartbeatParams) WithNamespace(namespace string) *ServerHeartbeatParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the server heartbeat params
func (o *ServerHeartbeatParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ServerHeartbeatParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
