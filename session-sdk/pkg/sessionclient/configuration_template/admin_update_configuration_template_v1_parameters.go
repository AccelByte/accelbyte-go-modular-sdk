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

	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewAdminUpdateConfigurationTemplateV1Params creates a new AdminUpdateConfigurationTemplateV1Params object
// with the default values initialized.
func NewAdminUpdateConfigurationTemplateV1Params() *AdminUpdateConfigurationTemplateV1Params {
	var ()
	return &AdminUpdateConfigurationTemplateV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateConfigurationTemplateV1ParamsWithTimeout creates a new AdminUpdateConfigurationTemplateV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateConfigurationTemplateV1ParamsWithTimeout(timeout time.Duration) *AdminUpdateConfigurationTemplateV1Params {
	var ()
	return &AdminUpdateConfigurationTemplateV1Params{

		timeout: timeout,
	}
}

// NewAdminUpdateConfigurationTemplateV1ParamsWithContext creates a new AdminUpdateConfigurationTemplateV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateConfigurationTemplateV1ParamsWithContext(ctx context.Context) *AdminUpdateConfigurationTemplateV1Params {
	var ()
	return &AdminUpdateConfigurationTemplateV1Params{

		Context: ctx,
	}
}

// NewAdminUpdateConfigurationTemplateV1ParamsWithHTTPClient creates a new AdminUpdateConfigurationTemplateV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateConfigurationTemplateV1ParamsWithHTTPClient(client *http.Client) *AdminUpdateConfigurationTemplateV1Params {
	var ()
	return &AdminUpdateConfigurationTemplateV1Params{
		HTTPClient: client,
	}
}

/*AdminUpdateConfigurationTemplateV1Params contains all the parameters to send to the API endpoint
for the admin update configuration template v1 operation typically these are written to a http.Request
*/
type AdminUpdateConfigurationTemplateV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsUpdateConfigurationTemplateRequest
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
}

// WithTimeout adds the timeout to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) WithTimeout(timeout time.Duration) *AdminUpdateConfigurationTemplateV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) WithContext(ctx context.Context) *AdminUpdateConfigurationTemplateV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) WithHTTPClient(client *http.Client) *AdminUpdateConfigurationTemplateV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) WithBody(body *sessionclientmodels.ApimodelsUpdateConfigurationTemplateRequest) *AdminUpdateConfigurationTemplateV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) SetBody(body *sessionclientmodels.ApimodelsUpdateConfigurationTemplateRequest) {
	o.Body = body
}

// WithName adds the name to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) WithName(name string) *AdminUpdateConfigurationTemplateV1Params {
	o.SetName(name)
	return o
}

// SetName adds the name to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) WithNamespace(namespace string) *AdminUpdateConfigurationTemplateV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update configuration template v1 params
func (o *AdminUpdateConfigurationTemplateV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateConfigurationTemplateV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
