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

// NewUpdateTwitchIAPConfigParams creates a new UpdateTwitchIAPConfigParams object
// with the default values initialized.
func NewUpdateTwitchIAPConfigParams() *UpdateTwitchIAPConfigParams {
	var ()
	return &UpdateTwitchIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateTwitchIAPConfigParamsWithTimeout creates a new UpdateTwitchIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateTwitchIAPConfigParamsWithTimeout(timeout time.Duration) *UpdateTwitchIAPConfigParams {
	var ()
	return &UpdateTwitchIAPConfigParams{

		timeout: timeout,
	}
}

// NewUpdateTwitchIAPConfigParamsWithContext creates a new UpdateTwitchIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateTwitchIAPConfigParamsWithContext(ctx context.Context) *UpdateTwitchIAPConfigParams {
	var ()
	return &UpdateTwitchIAPConfigParams{

		Context: ctx,
	}
}

// NewUpdateTwitchIAPConfigParamsWithHTTPClient creates a new UpdateTwitchIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateTwitchIAPConfigParamsWithHTTPClient(client *http.Client) *UpdateTwitchIAPConfigParams {
	var ()
	return &UpdateTwitchIAPConfigParams{
		HTTPClient: client,
	}
}

/*UpdateTwitchIAPConfigParams contains all the parameters to send to the API endpoint
for the update twitch iap config operation typically these are written to a http.Request
*/
type UpdateTwitchIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.TwitchIAPConfigRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) WithTimeout(timeout time.Duration) *UpdateTwitchIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) WithContext(ctx context.Context) *UpdateTwitchIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) WithHTTPClient(client *http.Client) *UpdateTwitchIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateTwitchIAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) WithBody(body *platformclientmodels.TwitchIAPConfigRequest) *UpdateTwitchIAPConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) SetBody(body *platformclientmodels.TwitchIAPConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) WithNamespace(namespace string) *UpdateTwitchIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update twitch iap config params
func (o *UpdateTwitchIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateTwitchIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
