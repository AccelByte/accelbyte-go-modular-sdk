// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

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

// NewUpdateDLCItemConfigParams creates a new UpdateDLCItemConfigParams object
// with the default values initialized.
func NewUpdateDLCItemConfigParams() *UpdateDLCItemConfigParams {
	var ()
	return &UpdateDLCItemConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateDLCItemConfigParamsWithTimeout creates a new UpdateDLCItemConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateDLCItemConfigParamsWithTimeout(timeout time.Duration) *UpdateDLCItemConfigParams {
	var ()
	return &UpdateDLCItemConfigParams{

		timeout: timeout,
	}
}

// NewUpdateDLCItemConfigParamsWithContext creates a new UpdateDLCItemConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateDLCItemConfigParamsWithContext(ctx context.Context) *UpdateDLCItemConfigParams {
	var ()
	return &UpdateDLCItemConfigParams{

		Context: ctx,
	}
}

// NewUpdateDLCItemConfigParamsWithHTTPClient creates a new UpdateDLCItemConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateDLCItemConfigParamsWithHTTPClient(client *http.Client) *UpdateDLCItemConfigParams {
	var ()
	return &UpdateDLCItemConfigParams{
		HTTPClient: client,
	}
}

/*
UpdateDLCItemConfigParams contains all the parameters to send to the API endpoint
for the update dlc item config operation typically these are written to a http.Request
*/
type UpdateDLCItemConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.DLCItemConfigUpdate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update dlc item config params
func (o *UpdateDLCItemConfigParams) WithTimeout(timeout time.Duration) *UpdateDLCItemConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update dlc item config params
func (o *UpdateDLCItemConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update dlc item config params
func (o *UpdateDLCItemConfigParams) WithContext(ctx context.Context) *UpdateDLCItemConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update dlc item config params
func (o *UpdateDLCItemConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update dlc item config params
func (o *UpdateDLCItemConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update dlc item config params
func (o *UpdateDLCItemConfigParams) WithHTTPClient(client *http.Client) *UpdateDLCItemConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update dlc item config params
func (o *UpdateDLCItemConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update dlc item config params
func (o *UpdateDLCItemConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateDLCItemConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update dlc item config params
func (o *UpdateDLCItemConfigParams) WithBody(body *platformclientmodels.DLCItemConfigUpdate) *UpdateDLCItemConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update dlc item config params
func (o *UpdateDLCItemConfigParams) SetBody(body *platformclientmodels.DLCItemConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update dlc item config params
func (o *UpdateDLCItemConfigParams) WithNamespace(namespace string) *UpdateDLCItemConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update dlc item config params
func (o *UpdateDLCItemConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateDLCItemConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
