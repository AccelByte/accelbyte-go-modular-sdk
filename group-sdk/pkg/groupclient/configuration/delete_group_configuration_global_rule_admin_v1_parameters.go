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

// NewDeleteGroupConfigurationGlobalRuleAdminV1Params creates a new DeleteGroupConfigurationGlobalRuleAdminV1Params object
// with the default values initialized.
func NewDeleteGroupConfigurationGlobalRuleAdminV1Params() *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	var ()
	return &DeleteGroupConfigurationGlobalRuleAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteGroupConfigurationGlobalRuleAdminV1ParamsWithTimeout creates a new DeleteGroupConfigurationGlobalRuleAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteGroupConfigurationGlobalRuleAdminV1ParamsWithTimeout(timeout time.Duration) *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	var ()
	return &DeleteGroupConfigurationGlobalRuleAdminV1Params{

		timeout: timeout,
	}
}

// NewDeleteGroupConfigurationGlobalRuleAdminV1ParamsWithContext creates a new DeleteGroupConfigurationGlobalRuleAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteGroupConfigurationGlobalRuleAdminV1ParamsWithContext(ctx context.Context) *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	var ()
	return &DeleteGroupConfigurationGlobalRuleAdminV1Params{

		Context: ctx,
	}
}

// NewDeleteGroupConfigurationGlobalRuleAdminV1ParamsWithHTTPClient creates a new DeleteGroupConfigurationGlobalRuleAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteGroupConfigurationGlobalRuleAdminV1ParamsWithHTTPClient(client *http.Client) *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	var ()
	return &DeleteGroupConfigurationGlobalRuleAdminV1Params{
		HTTPClient: client,
	}
}

/*DeleteGroupConfigurationGlobalRuleAdminV1Params contains all the parameters to send to the API endpoint
for the delete group configuration global rule admin v1 operation typically these are written to a http.Request
*/
type DeleteGroupConfigurationGlobalRuleAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AllowedAction
	  Allowed Action. The value should be any actions in the service

	*/
	AllowedAction string
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

// WithTimeout adds the timeout to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) WithTimeout(timeout time.Duration) *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) WithContext(ctx context.Context) *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) WithHTTPClient(client *http.Client) *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAllowedAction adds the allowedAction to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) WithAllowedAction(allowedAction string) *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	o.SetAllowedAction(allowedAction)
	return o
}

// SetAllowedAction adds the allowedAction to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) SetAllowedAction(allowedAction string) {
	o.AllowedAction = allowedAction
}

// WithConfigurationCode adds the configurationCode to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) WithConfigurationCode(configurationCode string) *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	o.SetConfigurationCode(configurationCode)
	return o
}

// SetConfigurationCode adds the configurationCode to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) SetConfigurationCode(configurationCode string) {
	o.ConfigurationCode = configurationCode
}

// WithNamespace adds the namespace to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) WithNamespace(namespace string) *DeleteGroupConfigurationGlobalRuleAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete group configuration global rule admin v1 params
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteGroupConfigurationGlobalRuleAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param allowedAction
	if err := r.SetPathParam("allowedAction", o.AllowedAction); err != nil {
		return err
	}

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
