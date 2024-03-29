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

// NewCreateDeploymentOverrideParams creates a new CreateDeploymentOverrideParams object
// with the default values initialized.
func NewCreateDeploymentOverrideParams() *CreateDeploymentOverrideParams {
	var ()
	return &CreateDeploymentOverrideParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateDeploymentOverrideParamsWithTimeout creates a new CreateDeploymentOverrideParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateDeploymentOverrideParamsWithTimeout(timeout time.Duration) *CreateDeploymentOverrideParams {
	var ()
	return &CreateDeploymentOverrideParams{

		timeout: timeout,
	}
}

// NewCreateDeploymentOverrideParamsWithContext creates a new CreateDeploymentOverrideParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateDeploymentOverrideParamsWithContext(ctx context.Context) *CreateDeploymentOverrideParams {
	var ()
	return &CreateDeploymentOverrideParams{

		Context: ctx,
	}
}

// NewCreateDeploymentOverrideParamsWithHTTPClient creates a new CreateDeploymentOverrideParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateDeploymentOverrideParamsWithHTTPClient(client *http.Client) *CreateDeploymentOverrideParams {
	var ()
	return &CreateDeploymentOverrideParams{
		HTTPClient: client,
	}
}

/*CreateDeploymentOverrideParams contains all the parameters to send to the API endpoint
for the create deployment override operation typically these are written to a http.Request
*/
type CreateDeploymentOverrideParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsCreateDeploymentOverrideRequest
	/*Deployment
	  deployment of the game

	*/
	Deployment string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Version
	  version

	*/
	Version string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create deployment override params
func (o *CreateDeploymentOverrideParams) WithTimeout(timeout time.Duration) *CreateDeploymentOverrideParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create deployment override params
func (o *CreateDeploymentOverrideParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create deployment override params
func (o *CreateDeploymentOverrideParams) WithContext(ctx context.Context) *CreateDeploymentOverrideParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create deployment override params
func (o *CreateDeploymentOverrideParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create deployment override params
func (o *CreateDeploymentOverrideParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create deployment override params
func (o *CreateDeploymentOverrideParams) WithHTTPClient(client *http.Client) *CreateDeploymentOverrideParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create deployment override params
func (o *CreateDeploymentOverrideParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create deployment override params
func (o *CreateDeploymentOverrideParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateDeploymentOverrideParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create deployment override params
func (o *CreateDeploymentOverrideParams) WithBody(body *dsmcclientmodels.ModelsCreateDeploymentOverrideRequest) *CreateDeploymentOverrideParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create deployment override params
func (o *CreateDeploymentOverrideParams) SetBody(body *dsmcclientmodels.ModelsCreateDeploymentOverrideRequest) {
	o.Body = body
}

// WithDeployment adds the deployment to the create deployment override params
func (o *CreateDeploymentOverrideParams) WithDeployment(deployment string) *CreateDeploymentOverrideParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the create deployment override params
func (o *CreateDeploymentOverrideParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the create deployment override params
func (o *CreateDeploymentOverrideParams) WithNamespace(namespace string) *CreateDeploymentOverrideParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create deployment override params
func (o *CreateDeploymentOverrideParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithVersion adds the version to the create deployment override params
func (o *CreateDeploymentOverrideParams) WithVersion(version string) *CreateDeploymentOverrideParams {
	o.SetVersion(version)
	return o
}

// SetVersion adds the version to the create deployment override params
func (o *CreateDeploymentOverrideParams) SetVersion(version string) {
	o.Version = version
}

// WriteToRequest writes these params to a swagger request
func (o *CreateDeploymentOverrideParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param version
	if err := r.SetPathParam("version", o.Version); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
