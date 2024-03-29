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
)

// NewDeleteRootRegionOverrideParams creates a new DeleteRootRegionOverrideParams object
// with the default values initialized.
func NewDeleteRootRegionOverrideParams() *DeleteRootRegionOverrideParams {
	var ()
	return &DeleteRootRegionOverrideParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteRootRegionOverrideParamsWithTimeout creates a new DeleteRootRegionOverrideParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteRootRegionOverrideParamsWithTimeout(timeout time.Duration) *DeleteRootRegionOverrideParams {
	var ()
	return &DeleteRootRegionOverrideParams{

		timeout: timeout,
	}
}

// NewDeleteRootRegionOverrideParamsWithContext creates a new DeleteRootRegionOverrideParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteRootRegionOverrideParamsWithContext(ctx context.Context) *DeleteRootRegionOverrideParams {
	var ()
	return &DeleteRootRegionOverrideParams{

		Context: ctx,
	}
}

// NewDeleteRootRegionOverrideParamsWithHTTPClient creates a new DeleteRootRegionOverrideParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteRootRegionOverrideParamsWithHTTPClient(client *http.Client) *DeleteRootRegionOverrideParams {
	var ()
	return &DeleteRootRegionOverrideParams{
		HTTPClient: client,
	}
}

/*DeleteRootRegionOverrideParams contains all the parameters to send to the API endpoint
for the delete root region override operation typically these are written to a http.Request
*/
type DeleteRootRegionOverrideParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Deployment
	  deployment name

	*/
	Deployment string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Region
	  region

	*/
	Region string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete root region override params
func (o *DeleteRootRegionOverrideParams) WithTimeout(timeout time.Duration) *DeleteRootRegionOverrideParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete root region override params
func (o *DeleteRootRegionOverrideParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete root region override params
func (o *DeleteRootRegionOverrideParams) WithContext(ctx context.Context) *DeleteRootRegionOverrideParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete root region override params
func (o *DeleteRootRegionOverrideParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete root region override params
func (o *DeleteRootRegionOverrideParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete root region override params
func (o *DeleteRootRegionOverrideParams) WithHTTPClient(client *http.Client) *DeleteRootRegionOverrideParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete root region override params
func (o *DeleteRootRegionOverrideParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete root region override params
func (o *DeleteRootRegionOverrideParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteRootRegionOverrideParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeployment adds the deployment to the delete root region override params
func (o *DeleteRootRegionOverrideParams) WithDeployment(deployment string) *DeleteRootRegionOverrideParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the delete root region override params
func (o *DeleteRootRegionOverrideParams) SetDeployment(deployment string) {
	o.Deployment = deployment
}

// WithNamespace adds the namespace to the delete root region override params
func (o *DeleteRootRegionOverrideParams) WithNamespace(namespace string) *DeleteRootRegionOverrideParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete root region override params
func (o *DeleteRootRegionOverrideParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the delete root region override params
func (o *DeleteRootRegionOverrideParams) WithRegion(region string) *DeleteRootRegionOverrideParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the delete root region override params
func (o *DeleteRootRegionOverrideParams) SetRegion(region string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteRootRegionOverrideParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param deployment
	if err := r.SetPathParam("deployment", o.Deployment); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param region
	if err := r.SetPathParam("region", o.Region); err != nil {
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
