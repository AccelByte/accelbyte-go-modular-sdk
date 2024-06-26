// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package store

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

// NewUpdateCatalogConfigParams creates a new UpdateCatalogConfigParams object
// with the default values initialized.
func NewUpdateCatalogConfigParams() *UpdateCatalogConfigParams {
	var ()
	return &UpdateCatalogConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateCatalogConfigParamsWithTimeout creates a new UpdateCatalogConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateCatalogConfigParamsWithTimeout(timeout time.Duration) *UpdateCatalogConfigParams {
	var ()
	return &UpdateCatalogConfigParams{

		timeout: timeout,
	}
}

// NewUpdateCatalogConfigParamsWithContext creates a new UpdateCatalogConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateCatalogConfigParamsWithContext(ctx context.Context) *UpdateCatalogConfigParams {
	var ()
	return &UpdateCatalogConfigParams{

		Context: ctx,
	}
}

// NewUpdateCatalogConfigParamsWithHTTPClient creates a new UpdateCatalogConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateCatalogConfigParamsWithHTTPClient(client *http.Client) *UpdateCatalogConfigParams {
	var ()
	return &UpdateCatalogConfigParams{
		HTTPClient: client,
	}
}

/*UpdateCatalogConfigParams contains all the parameters to send to the API endpoint
for the update catalog config operation typically these are written to a http.Request
*/
type UpdateCatalogConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CatalogConfigUpdate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update catalog config params
func (o *UpdateCatalogConfigParams) WithTimeout(timeout time.Duration) *UpdateCatalogConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update catalog config params
func (o *UpdateCatalogConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update catalog config params
func (o *UpdateCatalogConfigParams) WithContext(ctx context.Context) *UpdateCatalogConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update catalog config params
func (o *UpdateCatalogConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update catalog config params
func (o *UpdateCatalogConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update catalog config params
func (o *UpdateCatalogConfigParams) WithHTTPClient(client *http.Client) *UpdateCatalogConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update catalog config params
func (o *UpdateCatalogConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update catalog config params
func (o *UpdateCatalogConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateCatalogConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update catalog config params
func (o *UpdateCatalogConfigParams) WithBody(body *platformclientmodels.CatalogConfigUpdate) *UpdateCatalogConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update catalog config params
func (o *UpdateCatalogConfigParams) SetBody(body *platformclientmodels.CatalogConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update catalog config params
func (o *UpdateCatalogConfigParams) WithNamespace(namespace string) *UpdateCatalogConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update catalog config params
func (o *UpdateCatalogConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateCatalogConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
