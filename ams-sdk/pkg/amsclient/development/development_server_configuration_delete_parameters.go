// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package development

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

// NewDevelopmentServerConfigurationDeleteParams creates a new DevelopmentServerConfigurationDeleteParams object
// with the default values initialized.
func NewDevelopmentServerConfigurationDeleteParams() *DevelopmentServerConfigurationDeleteParams {
	var ()
	return &DevelopmentServerConfigurationDeleteParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDevelopmentServerConfigurationDeleteParamsWithTimeout creates a new DevelopmentServerConfigurationDeleteParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDevelopmentServerConfigurationDeleteParamsWithTimeout(timeout time.Duration) *DevelopmentServerConfigurationDeleteParams {
	var ()
	return &DevelopmentServerConfigurationDeleteParams{

		timeout: timeout,
	}
}

// NewDevelopmentServerConfigurationDeleteParamsWithContext creates a new DevelopmentServerConfigurationDeleteParams object
// with the default values initialized, and the ability to set a context for a request
func NewDevelopmentServerConfigurationDeleteParamsWithContext(ctx context.Context) *DevelopmentServerConfigurationDeleteParams {
	var ()
	return &DevelopmentServerConfigurationDeleteParams{

		Context: ctx,
	}
}

// NewDevelopmentServerConfigurationDeleteParamsWithHTTPClient creates a new DevelopmentServerConfigurationDeleteParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDevelopmentServerConfigurationDeleteParamsWithHTTPClient(client *http.Client) *DevelopmentServerConfigurationDeleteParams {
	var ()
	return &DevelopmentServerConfigurationDeleteParams{
		HTTPClient: client,
	}
}

/*DevelopmentServerConfigurationDeleteParams contains all the parameters to send to the API endpoint
for the development server configuration delete operation typically these are written to a http.Request
*/
type DevelopmentServerConfigurationDeleteParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*DevelopmentServerConfigID
	  the name of the development server configuration

	*/
	DevelopmentServerConfigID string
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

// WithTimeout adds the timeout to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) WithTimeout(timeout time.Duration) *DevelopmentServerConfigurationDeleteParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) WithContext(ctx context.Context) *DevelopmentServerConfigurationDeleteParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) WithHTTPClient(client *http.Client) *DevelopmentServerConfigurationDeleteParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DevelopmentServerConfigurationDeleteParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDevelopmentServerConfigID adds the developmentServerConfigID to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) WithDevelopmentServerConfigID(developmentServerConfigID string) *DevelopmentServerConfigurationDeleteParams {
	o.SetDevelopmentServerConfigID(developmentServerConfigID)
	return o
}

// SetDevelopmentServerConfigID adds the developmentServerConfigId to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) SetDevelopmentServerConfigID(developmentServerConfigID string) {
	o.DevelopmentServerConfigID = developmentServerConfigID
}

// WithNamespace adds the namespace to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) WithNamespace(namespace string) *DevelopmentServerConfigurationDeleteParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the development server configuration delete params
func (o *DevelopmentServerConfigurationDeleteParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DevelopmentServerConfigurationDeleteParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param developmentServerConfigID
	if err := r.SetPathParam("developmentServerConfigID", o.DevelopmentServerConfigID); err != nil {
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
