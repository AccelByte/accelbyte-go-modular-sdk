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

	"github.com/AccelByte/accelbyte-go-modular-sdk/csm-sdk/pkg/csmclientmodels"
)

// NewUpdateVariableV1Params creates a new UpdateVariableV1Params object
// with the default values initialized.
func NewUpdateVariableV1Params() *UpdateVariableV1Params {
	var ()
	return &UpdateVariableV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateVariableV1ParamsWithTimeout creates a new UpdateVariableV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateVariableV1ParamsWithTimeout(timeout time.Duration) *UpdateVariableV1Params {
	var ()
	return &UpdateVariableV1Params{

		timeout: timeout,
	}
}

// NewUpdateVariableV1ParamsWithContext creates a new UpdateVariableV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateVariableV1ParamsWithContext(ctx context.Context) *UpdateVariableV1Params {
	var ()
	return &UpdateVariableV1Params{

		Context: ctx,
	}
}

// NewUpdateVariableV1ParamsWithHTTPClient creates a new UpdateVariableV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateVariableV1ParamsWithHTTPClient(client *http.Client) *UpdateVariableV1Params {
	var ()
	return &UpdateVariableV1Params{
		HTTPClient: client,
	}
}

/*UpdateVariableV1Params contains all the parameters to send to the API endpoint
for the update variable v1 operation typically these are written to a http.Request
*/
type UpdateVariableV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *csmclientmodels.GeneratedUpdateConfigurationV1Request
	/*App
	  App Name

	*/
	App string
	/*ConfigID
	  Config ID

	*/
	ConfigID string
	/*Namespace
	  Game Name

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update variable v1 params
func (o *UpdateVariableV1Params) WithTimeout(timeout time.Duration) *UpdateVariableV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update variable v1 params
func (o *UpdateVariableV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update variable v1 params
func (o *UpdateVariableV1Params) WithContext(ctx context.Context) *UpdateVariableV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update variable v1 params
func (o *UpdateVariableV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update variable v1 params
func (o *UpdateVariableV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update variable v1 params
func (o *UpdateVariableV1Params) WithHTTPClient(client *http.Client) *UpdateVariableV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update variable v1 params
func (o *UpdateVariableV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update variable v1 params
func (o *UpdateVariableV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateVariableV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update variable v1 params
func (o *UpdateVariableV1Params) WithBody(body *csmclientmodels.GeneratedUpdateConfigurationV1Request) *UpdateVariableV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update variable v1 params
func (o *UpdateVariableV1Params) SetBody(body *csmclientmodels.GeneratedUpdateConfigurationV1Request) {
	o.Body = body
}

// WithApp adds the app to the update variable v1 params
func (o *UpdateVariableV1Params) WithApp(app string) *UpdateVariableV1Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the update variable v1 params
func (o *UpdateVariableV1Params) SetApp(app string) {
	o.App = app
}

// WithConfigID adds the configID to the update variable v1 params
func (o *UpdateVariableV1Params) WithConfigID(configID string) *UpdateVariableV1Params {
	o.SetConfigID(configID)
	return o
}

// SetConfigID adds the configId to the update variable v1 params
func (o *UpdateVariableV1Params) SetConfigID(configID string) {
	o.ConfigID = configID
}

// WithNamespace adds the namespace to the update variable v1 params
func (o *UpdateVariableV1Params) WithNamespace(namespace string) *UpdateVariableV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update variable v1 params
func (o *UpdateVariableV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateVariableV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
	}

	// path param configId
	if err := r.SetPathParam("configId", o.ConfigID); err != nil {
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
