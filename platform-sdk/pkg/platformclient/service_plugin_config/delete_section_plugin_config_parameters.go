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

// NewDeleteSectionPluginConfigParams creates a new DeleteSectionPluginConfigParams object
// with the default values initialized.
func NewDeleteSectionPluginConfigParams() *DeleteSectionPluginConfigParams {
	var ()
	return &DeleteSectionPluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSectionPluginConfigParamsWithTimeout creates a new DeleteSectionPluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSectionPluginConfigParamsWithTimeout(timeout time.Duration) *DeleteSectionPluginConfigParams {
	var ()
	return &DeleteSectionPluginConfigParams{

		timeout: timeout,
	}
}

// NewDeleteSectionPluginConfigParamsWithContext creates a new DeleteSectionPluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSectionPluginConfigParamsWithContext(ctx context.Context) *DeleteSectionPluginConfigParams {
	var ()
	return &DeleteSectionPluginConfigParams{

		Context: ctx,
	}
}

// NewDeleteSectionPluginConfigParamsWithHTTPClient creates a new DeleteSectionPluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSectionPluginConfigParamsWithHTTPClient(client *http.Client) *DeleteSectionPluginConfigParams {
	var ()
	return &DeleteSectionPluginConfigParams{
		HTTPClient: client,
	}
}

/*
DeleteSectionPluginConfigParams contains all the parameters to send to the API endpoint
for the delete section plugin config operation typically these are written to a http.Request
*/
type DeleteSectionPluginConfigParams struct {

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

// WithTimeout adds the timeout to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) WithTimeout(timeout time.Duration) *DeleteSectionPluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) WithContext(ctx context.Context) *DeleteSectionPluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) WithHTTPClient(client *http.Client) *DeleteSectionPluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteSectionPluginConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) WithNamespace(namespace string) *DeleteSectionPluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete section plugin config params
func (o *DeleteSectionPluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSectionPluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
