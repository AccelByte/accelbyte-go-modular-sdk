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

// NewInitiateGroupConfigurationAdminV1Params creates a new InitiateGroupConfigurationAdminV1Params object
// with the default values initialized.
func NewInitiateGroupConfigurationAdminV1Params() *InitiateGroupConfigurationAdminV1Params {
	var ()
	return &InitiateGroupConfigurationAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewInitiateGroupConfigurationAdminV1ParamsWithTimeout creates a new InitiateGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewInitiateGroupConfigurationAdminV1ParamsWithTimeout(timeout time.Duration) *InitiateGroupConfigurationAdminV1Params {
	var ()
	return &InitiateGroupConfigurationAdminV1Params{

		timeout: timeout,
	}
}

// NewInitiateGroupConfigurationAdminV1ParamsWithContext creates a new InitiateGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewInitiateGroupConfigurationAdminV1ParamsWithContext(ctx context.Context) *InitiateGroupConfigurationAdminV1Params {
	var ()
	return &InitiateGroupConfigurationAdminV1Params{

		Context: ctx,
	}
}

// NewInitiateGroupConfigurationAdminV1ParamsWithHTTPClient creates a new InitiateGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewInitiateGroupConfigurationAdminV1ParamsWithHTTPClient(client *http.Client) *InitiateGroupConfigurationAdminV1Params {
	var ()
	return &InitiateGroupConfigurationAdminV1Params{
		HTTPClient: client,
	}
}

/*InitiateGroupConfigurationAdminV1Params contains all the parameters to send to the API endpoint
for the initiate group configuration admin v1 operation typically these are written to a http.Request
*/
type InitiateGroupConfigurationAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) WithTimeout(timeout time.Duration) *InitiateGroupConfigurationAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) WithContext(ctx context.Context) *InitiateGroupConfigurationAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) WithHTTPClient(client *http.Client) *InitiateGroupConfigurationAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) WithNamespace(namespace string) *InitiateGroupConfigurationAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the initiate group configuration admin v1 params
func (o *InitiateGroupConfigurationAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *InitiateGroupConfigurationAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
