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
)

// NewGetConfigParams creates a new GetConfigParams object
// with the default values initialized.
func NewGetConfigParams() *GetConfigParams {
	var ()
	return &GetConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetConfigParamsWithTimeout creates a new GetConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetConfigParamsWithTimeout(timeout time.Duration) *GetConfigParams {
	var ()
	return &GetConfigParams{

		timeout: timeout,
	}
}

// NewGetConfigParamsWithContext creates a new GetConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetConfigParamsWithContext(ctx context.Context) *GetConfigParams {
	var ()
	return &GetConfigParams{

		Context: ctx,
	}
}

// NewGetConfigParamsWithHTTPClient creates a new GetConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetConfigParamsWithHTTPClient(client *http.Client) *GetConfigParams {
	var ()
	return &GetConfigParams{
		HTTPClient: client,
	}
}

/*GetConfigParams contains all the parameters to send to the API endpoint
for the get config operation typically these are written to a http.Request
*/
type GetConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ConfigKey*/
	ConfigKey string
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get config params
func (o *GetConfigParams) WithTimeout(timeout time.Duration) *GetConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get config params
func (o *GetConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get config params
func (o *GetConfigParams) WithContext(ctx context.Context) *GetConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get config params
func (o *GetConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get config params
func (o *GetConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get config params
func (o *GetConfigParams) WithHTTPClient(client *http.Client) *GetConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get config params
func (o *GetConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get config params
func (o *GetConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithConfigKey adds the configKey to the get config params
func (o *GetConfigParams) WithConfigKey(configKey string) *GetConfigParams {
	o.SetConfigKey(configKey)
	return o
}

// SetConfigKey adds the configKey to the get config params
func (o *GetConfigParams) SetConfigKey(configKey string) {
	o.ConfigKey = configKey
}

// WithNamespace adds the namespace to the get config params
func (o *GetConfigParams) WithNamespace(namespace string) *GetConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get config params
func (o *GetConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param configKey
	if err := r.SetPathParam("configKey", o.ConfigKey); err != nil {
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
