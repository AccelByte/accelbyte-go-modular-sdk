// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment_config

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

// NewCreateDeploymentParams creates a new CreateDeploymentParams object
// with the default values initialized.
func NewCreateDeploymentParams() *CreateDeploymentParams {
	var ()
	return &CreateDeploymentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateDeploymentParamsWithTimeout creates a new CreateDeploymentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateDeploymentParamsWithTimeout(timeout time.Duration) *CreateDeploymentParams {
	var ()
	return &CreateDeploymentParams{

		timeout: timeout,
	}
}

// NewCreateDeploymentParamsWithContext creates a new CreateDeploymentParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateDeploymentParamsWithContext(ctx context.Context) *CreateDeploymentParams {
	var ()
	return &CreateDeploymentParams{

		Context: ctx,
	}
}

// NewCreateDeploymentParamsWithHTTPClient creates a new CreateDeploymentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateDeploymentParamsWithHTTPClient(client *http.Client) *CreateDeploymentParams {
	var ()
	return &CreateDeploymentParams{
		HTTPClient: client,
	}
}

/*CreateDeploymentParams contains all the parameters to send to the API endpoint
for the create deployment operation typically these are written to a http.Request
*/
type CreateDeploymentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsCreateDeploymentRequest
	/*Deployment
	  deployment name

	*/
	Deployment string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create deployment params
func (o *CreateDeploymentParams) WithTimeout(timeout time.Duration) *CreateDeploymentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create deployment params
func (o *CreateDeploymentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create deployment params
func (o *CreateDeploymentParams) WithContext(ctx context.Context) *CreateDeploymentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create deployment params
func (o *CreateDeploymentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create deployment params
func (o *CreateDeploymentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create deployment params
func (o *CreateDeploymentParams) WithHTTPClient(client *http.Client) *CreateDeploymentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create deployment params
func (o *CreateDeploymentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create deployment params
func (o *CreateDeploymentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create deployment params
func (o *CreateDeploymentParams) WithBody(body *dsmcclientmodels.ModelsCreateDeploymentRequest) *CreateDeploymentParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create deployment params
func (o *CreateDeploymentParams) SetBody(body *dsmcclientmodels.ModelsCreateDeploymentRequest) {
	o.Body = body
}

// WithDeployment adds the deployment to the create deployment params
func (o *CreateDeploymentParams) WithDeployment(deployment string) *CreateDeploymentParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the create deployment params
func (o *CreateDeploymentParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the create deployment params
func (o *CreateDeploymentParams) WithNamespace(namespace string) *CreateDeploymentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create deployment params
func (o *CreateDeploymentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateDeploymentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param deployment
	if err := r.SetPathParam("deployment", o.Deployment); err != nil {
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
