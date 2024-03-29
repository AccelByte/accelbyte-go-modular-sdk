// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

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

// NewAdminCreateConfigurationAlertV1Params creates a new AdminCreateConfigurationAlertV1Params object
// with the default values initialized.
func NewAdminCreateConfigurationAlertV1Params() *AdminCreateConfigurationAlertV1Params {
	var ()
	return &AdminCreateConfigurationAlertV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateConfigurationAlertV1ParamsWithTimeout creates a new AdminCreateConfigurationAlertV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateConfigurationAlertV1ParamsWithTimeout(timeout time.Duration) *AdminCreateConfigurationAlertV1Params {
	var ()
	return &AdminCreateConfigurationAlertV1Params{

		timeout: timeout,
	}
}

// NewAdminCreateConfigurationAlertV1ParamsWithContext creates a new AdminCreateConfigurationAlertV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateConfigurationAlertV1ParamsWithContext(ctx context.Context) *AdminCreateConfigurationAlertV1Params {
	var ()
	return &AdminCreateConfigurationAlertV1Params{

		Context: ctx,
	}
}

// NewAdminCreateConfigurationAlertV1ParamsWithHTTPClient creates a new AdminCreateConfigurationAlertV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateConfigurationAlertV1ParamsWithHTTPClient(client *http.Client) *AdminCreateConfigurationAlertV1Params {
	var ()
	return &AdminCreateConfigurationAlertV1Params{
		HTTPClient: client,
	}
}

/*AdminCreateConfigurationAlertV1Params contains all the parameters to send to the API endpoint
for the admin create configuration alert v1 operation typically these are written to a http.Request
*/
type AdminCreateConfigurationAlertV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsConfigAlertRequestCreate
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

// WithTimeout adds the timeout to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) WithTimeout(timeout time.Duration) *AdminCreateConfigurationAlertV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) WithContext(ctx context.Context) *AdminCreateConfigurationAlertV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) WithHTTPClient(client *http.Client) *AdminCreateConfigurationAlertV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCreateConfigurationAlertV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) WithBody(body *sessionclientmodels.ApimodelsConfigAlertRequestCreate) *AdminCreateConfigurationAlertV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) SetBody(body *sessionclientmodels.ApimodelsConfigAlertRequestCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) WithNamespace(namespace string) *AdminCreateConfigurationAlertV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create configuration alert v1 params
func (o *AdminCreateConfigurationAlertV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateConfigurationAlertV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
