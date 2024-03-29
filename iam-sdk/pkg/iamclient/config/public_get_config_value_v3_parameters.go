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

// NewPublicGetConfigValueV3Params creates a new PublicGetConfigValueV3Params object
// with the default values initialized.
func NewPublicGetConfigValueV3Params() *PublicGetConfigValueV3Params {
	var ()
	return &PublicGetConfigValueV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetConfigValueV3ParamsWithTimeout creates a new PublicGetConfigValueV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetConfigValueV3ParamsWithTimeout(timeout time.Duration) *PublicGetConfigValueV3Params {
	var ()
	return &PublicGetConfigValueV3Params{

		timeout: timeout,
	}
}

// NewPublicGetConfigValueV3ParamsWithContext creates a new PublicGetConfigValueV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetConfigValueV3ParamsWithContext(ctx context.Context) *PublicGetConfigValueV3Params {
	var ()
	return &PublicGetConfigValueV3Params{

		Context: ctx,
	}
}

// NewPublicGetConfigValueV3ParamsWithHTTPClient creates a new PublicGetConfigValueV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetConfigValueV3ParamsWithHTTPClient(client *http.Client) *PublicGetConfigValueV3Params {
	var ()
	return &PublicGetConfigValueV3Params{
		HTTPClient: client,
	}
}

/*PublicGetConfigValueV3Params contains all the parameters to send to the API endpoint
for the public get config value v3 operation typically these are written to a http.Request
*/
type PublicGetConfigValueV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ConfigKey
	  config key

	*/
	ConfigKey string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) WithTimeout(timeout time.Duration) *PublicGetConfigValueV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) WithContext(ctx context.Context) *PublicGetConfigValueV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) WithHTTPClient(client *http.Client) *PublicGetConfigValueV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetConfigValueV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithConfigKey adds the configKey to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) WithConfigKey(configKey string) *PublicGetConfigValueV3Params {
	o.SetConfigKey(configKey)
	return o
}

// SetConfigKey adds the configKey to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) SetConfigKey(configKey string) {
	o.ConfigKey = configKey
}

// WithNamespace adds the namespace to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) WithNamespace(namespace string) *PublicGetConfigValueV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get config value v3 params
func (o *PublicGetConfigValueV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetConfigValueV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
