// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventory_configurations

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

// NewAdminDeleteInventoryConfigurationParams creates a new AdminDeleteInventoryConfigurationParams object
// with the default values initialized.
func NewAdminDeleteInventoryConfigurationParams() *AdminDeleteInventoryConfigurationParams {
	var ()
	return &AdminDeleteInventoryConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteInventoryConfigurationParamsWithTimeout creates a new AdminDeleteInventoryConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteInventoryConfigurationParamsWithTimeout(timeout time.Duration) *AdminDeleteInventoryConfigurationParams {
	var ()
	return &AdminDeleteInventoryConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminDeleteInventoryConfigurationParamsWithContext creates a new AdminDeleteInventoryConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteInventoryConfigurationParamsWithContext(ctx context.Context) *AdminDeleteInventoryConfigurationParams {
	var ()
	return &AdminDeleteInventoryConfigurationParams{

		Context: ctx,
	}
}

// NewAdminDeleteInventoryConfigurationParamsWithHTTPClient creates a new AdminDeleteInventoryConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteInventoryConfigurationParamsWithHTTPClient(client *http.Client) *AdminDeleteInventoryConfigurationParams {
	var ()
	return &AdminDeleteInventoryConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminDeleteInventoryConfigurationParams contains all the parameters to send to the API endpoint
for the admin delete inventory configuration operation typically these are written to a http.Request
*/
type AdminDeleteInventoryConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*InventoryConfigurationID
	  InventoryConfigurationID

	*/
	InventoryConfigurationID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) WithTimeout(timeout time.Duration) *AdminDeleteInventoryConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) WithContext(ctx context.Context) *AdminDeleteInventoryConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) WithHTTPClient(client *http.Client) *AdminDeleteInventoryConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithInventoryConfigurationID adds the inventoryConfigurationID to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) WithInventoryConfigurationID(inventoryConfigurationID string) *AdminDeleteInventoryConfigurationParams {
	o.SetInventoryConfigurationID(inventoryConfigurationID)
	return o
}

// SetInventoryConfigurationID adds the inventoryConfigurationId to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) SetInventoryConfigurationID(inventoryConfigurationID string) {
	o.InventoryConfigurationID = inventoryConfigurationID
}

// WithNamespace adds the namespace to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) WithNamespace(namespace string) *AdminDeleteInventoryConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete inventory configuration params
func (o *AdminDeleteInventoryConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteInventoryConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param inventoryConfigurationId
	if err := r.SetPathParam("inventoryConfigurationId", o.InventoryConfigurationID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
