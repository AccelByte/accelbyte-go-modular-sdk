// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

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

// NewDeleteGroupConfigurationV1Params creates a new DeleteGroupConfigurationV1Params object
// with the default values initialized.
func NewDeleteGroupConfigurationV1Params() *DeleteGroupConfigurationV1Params {
	var ()
	return &DeleteGroupConfigurationV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteGroupConfigurationV1ParamsWithTimeout creates a new DeleteGroupConfigurationV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteGroupConfigurationV1ParamsWithTimeout(timeout time.Duration) *DeleteGroupConfigurationV1Params {
	var ()
	return &DeleteGroupConfigurationV1Params{

		timeout: timeout,
	}
}

// NewDeleteGroupConfigurationV1ParamsWithContext creates a new DeleteGroupConfigurationV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteGroupConfigurationV1ParamsWithContext(ctx context.Context) *DeleteGroupConfigurationV1Params {
	var ()
	return &DeleteGroupConfigurationV1Params{

		Context: ctx,
	}
}

// NewDeleteGroupConfigurationV1ParamsWithHTTPClient creates a new DeleteGroupConfigurationV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteGroupConfigurationV1ParamsWithHTTPClient(client *http.Client) *DeleteGroupConfigurationV1Params {
	var ()
	return &DeleteGroupConfigurationV1Params{
		HTTPClient: client,
	}
}

/*DeleteGroupConfigurationV1Params contains all the parameters to send to the API endpoint
for the delete group configuration v1 operation typically these are written to a http.Request
*/
type DeleteGroupConfigurationV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ConfigurationCode
	  Group Configuration Code

	*/
	ConfigurationCode string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) WithTimeout(timeout time.Duration) *DeleteGroupConfigurationV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) WithContext(ctx context.Context) *DeleteGroupConfigurationV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) WithHTTPClient(client *http.Client) *DeleteGroupConfigurationV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithConfigurationCode adds the configurationCode to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) WithConfigurationCode(configurationCode string) *DeleteGroupConfigurationV1Params {
	o.SetConfigurationCode(configurationCode)
	return o
}

// SetConfigurationCode adds the configurationCode to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) SetConfigurationCode(configurationCode string) {
	o.ConfigurationCode = configurationCode
}

// WithNamespace adds the namespace to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) WithNamespace(namespace string) *DeleteGroupConfigurationV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete group configuration v1 params
func (o *DeleteGroupConfigurationV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteGroupConfigurationV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param configurationCode
	if err := r.SetPathParam("configurationCode", o.ConfigurationCode); err != nil {
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
