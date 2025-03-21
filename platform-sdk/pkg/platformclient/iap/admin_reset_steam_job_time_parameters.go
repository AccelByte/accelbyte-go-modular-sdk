// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewAdminResetSteamJobTimeParams creates a new AdminResetSteamJobTimeParams object
// with the default values initialized.
func NewAdminResetSteamJobTimeParams() *AdminResetSteamJobTimeParams {
	var ()
	return &AdminResetSteamJobTimeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminResetSteamJobTimeParamsWithTimeout creates a new AdminResetSteamJobTimeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminResetSteamJobTimeParamsWithTimeout(timeout time.Duration) *AdminResetSteamJobTimeParams {
	var ()
	return &AdminResetSteamJobTimeParams{

		timeout: timeout,
	}
}

// NewAdminResetSteamJobTimeParamsWithContext creates a new AdminResetSteamJobTimeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminResetSteamJobTimeParamsWithContext(ctx context.Context) *AdminResetSteamJobTimeParams {
	var ()
	return &AdminResetSteamJobTimeParams{

		Context: ctx,
	}
}

// NewAdminResetSteamJobTimeParamsWithHTTPClient creates a new AdminResetSteamJobTimeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminResetSteamJobTimeParamsWithHTTPClient(client *http.Client) *AdminResetSteamJobTimeParams {
	var ()
	return &AdminResetSteamJobTimeParams{
		HTTPClient: client,
	}
}

/*AdminResetSteamJobTimeParams contains all the parameters to send to the API endpoint
for the admin reset steam job time operation typically these are written to a http.Request
*/
type AdminResetSteamJobTimeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ResetJobRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) WithTimeout(timeout time.Duration) *AdminResetSteamJobTimeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) WithContext(ctx context.Context) *AdminResetSteamJobTimeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) WithHTTPClient(client *http.Client) *AdminResetSteamJobTimeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminResetSteamJobTimeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) WithBody(body *platformclientmodels.ResetJobRequest) *AdminResetSteamJobTimeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) SetBody(body *platformclientmodels.ResetJobRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) WithNamespace(namespace string) *AdminResetSteamJobTimeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin reset steam job time params
func (o *AdminResetSteamJobTimeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminResetSteamJobTimeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
