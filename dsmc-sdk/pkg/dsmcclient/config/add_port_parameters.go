// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

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

// NewAddPortParams creates a new AddPortParams object
// with the default values initialized.
func NewAddPortParams() *AddPortParams {
	var ()
	return &AddPortParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddPortParamsWithTimeout creates a new AddPortParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddPortParamsWithTimeout(timeout time.Duration) *AddPortParams {
	var ()
	return &AddPortParams{

		timeout: timeout,
	}
}

// NewAddPortParamsWithContext creates a new AddPortParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddPortParamsWithContext(ctx context.Context) *AddPortParams {
	var ()
	return &AddPortParams{

		Context: ctx,
	}
}

// NewAddPortParamsWithHTTPClient creates a new AddPortParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddPortParamsWithHTTPClient(client *http.Client) *AddPortParams {
	var ()
	return &AddPortParams{
		HTTPClient: client,
	}
}

/*AddPortParams contains all the parameters to send to the API endpoint
for the add port operation typically these are written to a http.Request
*/
type AddPortParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *dsmcclientmodels.ModelsCreatePortRequest
	/*Name
	  port name

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the add port params
func (o *AddPortParams) WithTimeout(timeout time.Duration) *AddPortParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add port params
func (o *AddPortParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add port params
func (o *AddPortParams) WithContext(ctx context.Context) *AddPortParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add port params
func (o *AddPortParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add port params
func (o *AddPortParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add port params
func (o *AddPortParams) WithHTTPClient(client *http.Client) *AddPortParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add port params
func (o *AddPortParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add port params
func (o *AddPortParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddPortParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the add port params
func (o *AddPortParams) WithBody(body *dsmcclientmodels.ModelsCreatePortRequest) *AddPortParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the add port params
func (o *AddPortParams) SetBody(body *dsmcclientmodels.ModelsCreatePortRequest) {
	o.Body = body
}

// WithName adds the name to the add port params
func (o *AddPortParams) WithName(name string) *AddPortParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the add port params
func (o *AddPortParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the add port params
func (o *AddPortParams) WithNamespace(namespace string) *AddPortParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the add port params
func (o *AddPortParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AddPortParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
