// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_inventories

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

// NewAdminGetInventoryParams creates a new AdminGetInventoryParams object
// with the default values initialized.
func NewAdminGetInventoryParams() *AdminGetInventoryParams {
	var ()
	return &AdminGetInventoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetInventoryParamsWithTimeout creates a new AdminGetInventoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetInventoryParamsWithTimeout(timeout time.Duration) *AdminGetInventoryParams {
	var ()
	return &AdminGetInventoryParams{

		timeout: timeout,
	}
}

// NewAdminGetInventoryParamsWithContext creates a new AdminGetInventoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetInventoryParamsWithContext(ctx context.Context) *AdminGetInventoryParams {
	var ()
	return &AdminGetInventoryParams{

		Context: ctx,
	}
}

// NewAdminGetInventoryParamsWithHTTPClient creates a new AdminGetInventoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetInventoryParamsWithHTTPClient(client *http.Client) *AdminGetInventoryParams {
	var ()
	return &AdminGetInventoryParams{
		HTTPClient: client,
	}
}

/*AdminGetInventoryParams contains all the parameters to send to the API endpoint
for the admin get inventory operation typically these are written to a http.Request
*/
type AdminGetInventoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*InventoryID
	  InventoryID

	*/
	InventoryID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get inventory params
func (o *AdminGetInventoryParams) WithTimeout(timeout time.Duration) *AdminGetInventoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get inventory params
func (o *AdminGetInventoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get inventory params
func (o *AdminGetInventoryParams) WithContext(ctx context.Context) *AdminGetInventoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get inventory params
func (o *AdminGetInventoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get inventory params
func (o *AdminGetInventoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get inventory params
func (o *AdminGetInventoryParams) WithHTTPClient(client *http.Client) *AdminGetInventoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get inventory params
func (o *AdminGetInventoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get inventory params
func (o *AdminGetInventoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithInventoryID adds the inventoryID to the admin get inventory params
func (o *AdminGetInventoryParams) WithInventoryID(inventoryID string) *AdminGetInventoryParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the admin get inventory params
func (o *AdminGetInventoryParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the admin get inventory params
func (o *AdminGetInventoryParams) WithNamespace(namespace string) *AdminGetInventoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get inventory params
func (o *AdminGetInventoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetInventoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param inventoryId
	if err := r.SetPathParam("inventoryId", o.InventoryID); err != nil {
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
