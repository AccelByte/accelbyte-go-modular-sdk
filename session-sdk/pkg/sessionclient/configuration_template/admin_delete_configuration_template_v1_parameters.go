// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration_template

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

// NewAdminDeleteConfigurationTemplateV1Params creates a new AdminDeleteConfigurationTemplateV1Params object
// with the default values initialized.
func NewAdminDeleteConfigurationTemplateV1Params() *AdminDeleteConfigurationTemplateV1Params {
	var ()
	return &AdminDeleteConfigurationTemplateV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteConfigurationTemplateV1ParamsWithTimeout creates a new AdminDeleteConfigurationTemplateV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteConfigurationTemplateV1ParamsWithTimeout(timeout time.Duration) *AdminDeleteConfigurationTemplateV1Params {
	var ()
	return &AdminDeleteConfigurationTemplateV1Params{

		timeout: timeout,
	}
}

// NewAdminDeleteConfigurationTemplateV1ParamsWithContext creates a new AdminDeleteConfigurationTemplateV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteConfigurationTemplateV1ParamsWithContext(ctx context.Context) *AdminDeleteConfigurationTemplateV1Params {
	var ()
	return &AdminDeleteConfigurationTemplateV1Params{

		Context: ctx,
	}
}

// NewAdminDeleteConfigurationTemplateV1ParamsWithHTTPClient creates a new AdminDeleteConfigurationTemplateV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteConfigurationTemplateV1ParamsWithHTTPClient(client *http.Client) *AdminDeleteConfigurationTemplateV1Params {
	var ()
	return &AdminDeleteConfigurationTemplateV1Params{
		HTTPClient: client,
	}
}

/*
AdminDeleteConfigurationTemplateV1Params contains all the parameters to send to the API endpoint
for the admin delete configuration template v1 operation typically these are written to a http.Request
*/
type AdminDeleteConfigurationTemplateV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Name
	  configuration name

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

// WithTimeout adds the timeout to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) WithTimeout(timeout time.Duration) *AdminDeleteConfigurationTemplateV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) WithContext(ctx context.Context) *AdminDeleteConfigurationTemplateV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) WithHTTPClient(client *http.Client) *AdminDeleteConfigurationTemplateV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteConfigurationTemplateV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithName adds the name to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) WithName(name string) *AdminDeleteConfigurationTemplateV1Params {
	o.SetName(name)
	return o
}

// SetName adds the name to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) WithNamespace(namespace string) *AdminDeleteConfigurationTemplateV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete configuration template v1 params
func (o *AdminDeleteConfigurationTemplateV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteConfigurationTemplateV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
