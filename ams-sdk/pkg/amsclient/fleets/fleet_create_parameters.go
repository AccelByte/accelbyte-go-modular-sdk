// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fleets

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ams-sdk/pkg/amsclientmodels"
)

// NewFleetCreateParams creates a new FleetCreateParams object
// with the default values initialized.
func NewFleetCreateParams() *FleetCreateParams {
	var ()
	return &FleetCreateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewFleetCreateParamsWithTimeout creates a new FleetCreateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewFleetCreateParamsWithTimeout(timeout time.Duration) *FleetCreateParams {
	var ()
	return &FleetCreateParams{

		timeout: timeout,
	}
}

// NewFleetCreateParamsWithContext creates a new FleetCreateParams object
// with the default values initialized, and the ability to set a context for a request
func NewFleetCreateParamsWithContext(ctx context.Context) *FleetCreateParams {
	var ()
	return &FleetCreateParams{

		Context: ctx,
	}
}

// NewFleetCreateParamsWithHTTPClient creates a new FleetCreateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewFleetCreateParamsWithHTTPClient(client *http.Client) *FleetCreateParams {
	var ()
	return &FleetCreateParams{
		HTTPClient: client,
	}
}

/*
FleetCreateParams contains all the parameters to send to the API endpoint
for the fleet create operation typically these are written to a http.Request
*/
type FleetCreateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIFleetParameters
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the fleet create params
func (o *FleetCreateParams) WithTimeout(timeout time.Duration) *FleetCreateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the fleet create params
func (o *FleetCreateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the fleet create params
func (o *FleetCreateParams) WithContext(ctx context.Context) *FleetCreateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the fleet create params
func (o *FleetCreateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the fleet create params
func (o *FleetCreateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the fleet create params
func (o *FleetCreateParams) WithHTTPClient(client *http.Client) *FleetCreateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the fleet create params
func (o *FleetCreateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the fleet create params
func (o *FleetCreateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the fleet create params
func (o *FleetCreateParams) WithBody(body *amsclientmodels.APIFleetParameters) *FleetCreateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the fleet create params
func (o *FleetCreateParams) SetBody(body *amsclientmodels.APIFleetParameters) {
	o.Body = body
}

// WithNamespace adds the namespace to the fleet create params
func (o *FleetCreateParams) WithNamespace(namespace string) *FleetCreateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the fleet create params
func (o *FleetCreateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *FleetCreateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
