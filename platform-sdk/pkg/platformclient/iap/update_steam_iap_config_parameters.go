// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

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

// NewUpdateSteamIAPConfigParams creates a new UpdateSteamIAPConfigParams object
// with the default values initialized.
func NewUpdateSteamIAPConfigParams() *UpdateSteamIAPConfigParams {
	var ()
	return &UpdateSteamIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateSteamIAPConfigParamsWithTimeout creates a new UpdateSteamIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateSteamIAPConfigParamsWithTimeout(timeout time.Duration) *UpdateSteamIAPConfigParams {
	var ()
	return &UpdateSteamIAPConfigParams{

		timeout: timeout,
	}
}

// NewUpdateSteamIAPConfigParamsWithContext creates a new UpdateSteamIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateSteamIAPConfigParamsWithContext(ctx context.Context) *UpdateSteamIAPConfigParams {
	var ()
	return &UpdateSteamIAPConfigParams{

		Context: ctx,
	}
}

// NewUpdateSteamIAPConfigParamsWithHTTPClient creates a new UpdateSteamIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateSteamIAPConfigParamsWithHTTPClient(client *http.Client) *UpdateSteamIAPConfigParams {
	var ()
	return &UpdateSteamIAPConfigParams{
		HTTPClient: client,
	}
}

/*UpdateSteamIAPConfigParams contains all the parameters to send to the API endpoint
for the update steam iap config operation typically these are written to a http.Request
*/
type UpdateSteamIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.SteamIAPConfigRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) WithTimeout(timeout time.Duration) *UpdateSteamIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) WithContext(ctx context.Context) *UpdateSteamIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) WithHTTPClient(client *http.Client) *UpdateSteamIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) WithBody(body *platformclientmodels.SteamIAPConfigRequest) *UpdateSteamIAPConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) SetBody(body *platformclientmodels.SteamIAPConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) WithNamespace(namespace string) *UpdateSteamIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update steam iap config params
func (o *UpdateSteamIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateSteamIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
