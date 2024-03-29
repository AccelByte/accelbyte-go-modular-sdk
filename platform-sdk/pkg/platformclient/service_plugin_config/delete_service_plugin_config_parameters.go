// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package service_plugin_config

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

// NewDeleteServicePluginConfigParams creates a new DeleteServicePluginConfigParams object
// with the default values initialized.
func NewDeleteServicePluginConfigParams() *DeleteServicePluginConfigParams {
	var ()
	return &DeleteServicePluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteServicePluginConfigParamsWithTimeout creates a new DeleteServicePluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteServicePluginConfigParamsWithTimeout(timeout time.Duration) *DeleteServicePluginConfigParams {
	var ()
	return &DeleteServicePluginConfigParams{

		timeout: timeout,
	}
}

// NewDeleteServicePluginConfigParamsWithContext creates a new DeleteServicePluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteServicePluginConfigParamsWithContext(ctx context.Context) *DeleteServicePluginConfigParams {
	var ()
	return &DeleteServicePluginConfigParams{

		Context: ctx,
	}
}

// NewDeleteServicePluginConfigParamsWithHTTPClient creates a new DeleteServicePluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteServicePluginConfigParamsWithHTTPClient(client *http.Client) *DeleteServicePluginConfigParams {
	var ()
	return &DeleteServicePluginConfigParams{
		HTTPClient: client,
	}
}

/*DeleteServicePluginConfigParams contains all the parameters to send to the API endpoint
for the delete service plugin config operation typically these are written to a http.Request
*/
type DeleteServicePluginConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) WithTimeout(timeout time.Duration) *DeleteServicePluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) WithContext(ctx context.Context) *DeleteServicePluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) WithHTTPClient(client *http.Client) *DeleteServicePluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteServicePluginConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) WithNamespace(namespace string) *DeleteServicePluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete service plugin config params
func (o *DeleteServicePluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteServicePluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
