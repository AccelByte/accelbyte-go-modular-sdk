// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pod_config

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

// NewCreatePodConfigParams creates a new CreatePodConfigParams object
// with the default values initialized.
func NewCreatePodConfigParams() *CreatePodConfigParams {
	var ()
	return &CreatePodConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreatePodConfigParamsWithTimeout creates a new CreatePodConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreatePodConfigParamsWithTimeout(timeout time.Duration) *CreatePodConfigParams {
	var ()
	return &CreatePodConfigParams{

		timeout: timeout,
	}
}

// NewCreatePodConfigParamsWithContext creates a new CreatePodConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreatePodConfigParamsWithContext(ctx context.Context) *CreatePodConfigParams {
	var ()
	return &CreatePodConfigParams{

		Context: ctx,
	}
}

// NewCreatePodConfigParamsWithHTTPClient creates a new CreatePodConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreatePodConfigParamsWithHTTPClient(client *http.Client) *CreatePodConfigParams {
	var ()
	return &CreatePodConfigParams{
		HTTPClient: client,
	}
}

/*CreatePodConfigParams contains all the parameters to send to the API endpoint
for the create pod config operation typically these are written to a http.Request
*/
type CreatePodConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsCreatePodConfigRequest
	/*Name
	  pod name

	*/
	Name string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create pod config params
func (o *CreatePodConfigParams) WithTimeout(timeout time.Duration) *CreatePodConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create pod config params
func (o *CreatePodConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create pod config params
func (o *CreatePodConfigParams) WithContext(ctx context.Context) *CreatePodConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create pod config params
func (o *CreatePodConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create pod config params
func (o *CreatePodConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create pod config params
func (o *CreatePodConfigParams) WithHTTPClient(client *http.Client) *CreatePodConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create pod config params
func (o *CreatePodConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create pod config params
func (o *CreatePodConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create pod config params
func (o *CreatePodConfigParams) WithBody(body *dsmcclientmodels.ModelsCreatePodConfigRequest) *CreatePodConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create pod config params
func (o *CreatePodConfigParams) SetBody(body *dsmcclientmodels.ModelsCreatePodConfigRequest) {
	o.Body = body
}

// WithName adds the name to the create pod config params
func (o *CreatePodConfigParams) WithName(name string) *CreatePodConfigParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the create pod config params
func (o *CreatePodConfigParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the create pod config params
func (o *CreatePodConfigParams) WithNamespace(namespace string) *CreatePodConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create pod config params
func (o *CreatePodConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreatePodConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
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
