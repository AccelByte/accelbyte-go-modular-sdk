// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_descriptions

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

// NewAgentTypeDescriptionHandlerParams creates a new AgentTypeDescriptionHandlerParams object
// with the default values initialized.
func NewAgentTypeDescriptionHandlerParams() *AgentTypeDescriptionHandlerParams {
	var ()
	return &AgentTypeDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAgentTypeDescriptionHandlerParamsWithTimeout creates a new AgentTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAgentTypeDescriptionHandlerParamsWithTimeout(timeout time.Duration) *AgentTypeDescriptionHandlerParams {
	var ()
	return &AgentTypeDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewAgentTypeDescriptionHandlerParamsWithContext creates a new AgentTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewAgentTypeDescriptionHandlerParamsWithContext(ctx context.Context) *AgentTypeDescriptionHandlerParams {
	var ()
	return &AgentTypeDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewAgentTypeDescriptionHandlerParamsWithHTTPClient creates a new AgentTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAgentTypeDescriptionHandlerParamsWithHTTPClient(client *http.Client) *AgentTypeDescriptionHandlerParams {
	var ()
	return &AgentTypeDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*AgentTypeDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the agent type description handler operation typically these are written to a http.Request
*/
type AgentTypeDescriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the agent type description handler params
func (o *AgentTypeDescriptionHandlerParams) WithTimeout(timeout time.Duration) *AgentTypeDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the agent type description handler params
func (o *AgentTypeDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the agent type description handler params
func (o *AgentTypeDescriptionHandlerParams) WithContext(ctx context.Context) *AgentTypeDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the agent type description handler params
func (o *AgentTypeDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the agent type description handler params
func (o *AgentTypeDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the agent type description handler params
func (o *AgentTypeDescriptionHandlerParams) WithHTTPClient(client *http.Client) *AgentTypeDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the agent type description handler params
func (o *AgentTypeDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the agent type description handler params
func (o *AgentTypeDescriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AgentTypeDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
