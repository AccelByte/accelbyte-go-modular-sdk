// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

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

// NewAdminGetAllConfigurationTemplatesV1Params creates a new AdminGetAllConfigurationTemplatesV1Params object
// with the default values initialized.
func NewAdminGetAllConfigurationTemplatesV1Params() *AdminGetAllConfigurationTemplatesV1Params {
	var ()
	return &AdminGetAllConfigurationTemplatesV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetAllConfigurationTemplatesV1ParamsWithTimeout creates a new AdminGetAllConfigurationTemplatesV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetAllConfigurationTemplatesV1ParamsWithTimeout(timeout time.Duration) *AdminGetAllConfigurationTemplatesV1Params {
	var ()
	return &AdminGetAllConfigurationTemplatesV1Params{

		timeout: timeout,
	}
}

// NewAdminGetAllConfigurationTemplatesV1ParamsWithContext creates a new AdminGetAllConfigurationTemplatesV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetAllConfigurationTemplatesV1ParamsWithContext(ctx context.Context) *AdminGetAllConfigurationTemplatesV1Params {
	var ()
	return &AdminGetAllConfigurationTemplatesV1Params{

		Context: ctx,
	}
}

// NewAdminGetAllConfigurationTemplatesV1ParamsWithHTTPClient creates a new AdminGetAllConfigurationTemplatesV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetAllConfigurationTemplatesV1ParamsWithHTTPClient(client *http.Client) *AdminGetAllConfigurationTemplatesV1Params {
	var ()
	return &AdminGetAllConfigurationTemplatesV1Params{
		HTTPClient: client,
	}
}

/*AdminGetAllConfigurationTemplatesV1Params contains all the parameters to send to the API endpoint
for the admin get all configuration templates v1 operation typically these are written to a http.Request
*/
type AdminGetAllConfigurationTemplatesV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithTimeout(timeout time.Duration) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithContext(ctx context.Context) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithHTTPClient(client *http.Client) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) WithNamespace(namespace string) *AdminGetAllConfigurationTemplatesV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get all configuration templates v1 params
func (o *AdminGetAllConfigurationTemplatesV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetAllConfigurationTemplatesV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
