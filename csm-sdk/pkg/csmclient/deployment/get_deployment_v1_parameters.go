// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package deployment

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

// NewGetDeploymentV1Params creates a new GetDeploymentV1Params object
// with the default values initialized.
func NewGetDeploymentV1Params() *GetDeploymentV1Params {
	var ()
	return &GetDeploymentV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetDeploymentV1ParamsWithTimeout creates a new GetDeploymentV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetDeploymentV1ParamsWithTimeout(timeout time.Duration) *GetDeploymentV1Params {
	var ()
	return &GetDeploymentV1Params{

		timeout: timeout,
	}
}

// NewGetDeploymentV1ParamsWithContext creates a new GetDeploymentV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetDeploymentV1ParamsWithContext(ctx context.Context) *GetDeploymentV1Params {
	var ()
	return &GetDeploymentV1Params{

		Context: ctx,
	}
}

// NewGetDeploymentV1ParamsWithHTTPClient creates a new GetDeploymentV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetDeploymentV1ParamsWithHTTPClient(client *http.Client) *GetDeploymentV1Params {
	var ()
	return &GetDeploymentV1Params{
		HTTPClient: client,
	}
}

/*GetDeploymentV1Params contains all the parameters to send to the API endpoint
for the get deployment v1 operation typically these are written to a http.Request
*/
type GetDeploymentV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*DeploymentID
	  Deployment ID

	*/
	DeploymentID string
	/*Namespace
	  Game Name

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get deployment v1 params
func (o *GetDeploymentV1Params) WithTimeout(timeout time.Duration) *GetDeploymentV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get deployment v1 params
func (o *GetDeploymentV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get deployment v1 params
func (o *GetDeploymentV1Params) WithContext(ctx context.Context) *GetDeploymentV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get deployment v1 params
func (o *GetDeploymentV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get deployment v1 params
func (o *GetDeploymentV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get deployment v1 params
func (o *GetDeploymentV1Params) WithHTTPClient(client *http.Client) *GetDeploymentV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get deployment v1 params
func (o *GetDeploymentV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get deployment v1 params
func (o *GetDeploymentV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetDeploymentV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeploymentID adds the deploymentID to the get deployment v1 params
func (o *GetDeploymentV1Params) WithDeploymentID(deploymentID string) *GetDeploymentV1Params {
	o.SetDeploymentID(deploymentID)
	return o
}

// SetDeploymentID adds the deploymentId to the get deployment v1 params
func (o *GetDeploymentV1Params) SetDeploymentID(deploymentID string) {
	o.DeploymentID = deploymentID
}

// WithNamespace adds the namespace to the get deployment v1 params
func (o *GetDeploymentV1Params) WithNamespace(namespace string) *GetDeploymentV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get deployment v1 params
func (o *GetDeploymentV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetDeploymentV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param deploymentId
	if err := r.SetPathParam("deploymentId", o.DeploymentID); err != nil {
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
