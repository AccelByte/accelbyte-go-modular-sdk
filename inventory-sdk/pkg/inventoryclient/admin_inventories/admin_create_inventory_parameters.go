// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

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

	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// NewAdminCreateInventoryParams creates a new AdminCreateInventoryParams object
// with the default values initialized.
func NewAdminCreateInventoryParams() *AdminCreateInventoryParams {
	var ()
	return &AdminCreateInventoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateInventoryParamsWithTimeout creates a new AdminCreateInventoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateInventoryParamsWithTimeout(timeout time.Duration) *AdminCreateInventoryParams {
	var ()
	return &AdminCreateInventoryParams{

		timeout: timeout,
	}
}

// NewAdminCreateInventoryParamsWithContext creates a new AdminCreateInventoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateInventoryParamsWithContext(ctx context.Context) *AdminCreateInventoryParams {
	var ()
	return &AdminCreateInventoryParams{

		Context: ctx,
	}
}

// NewAdminCreateInventoryParamsWithHTTPClient creates a new AdminCreateInventoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateInventoryParamsWithHTTPClient(client *http.Client) *AdminCreateInventoryParams {
	var ()
	return &AdminCreateInventoryParams{
		HTTPClient: client,
	}
}

/*AdminCreateInventoryParams contains all the parameters to send to the API endpoint
for the admin create inventory operation typically these are written to a http.Request
*/
type AdminCreateInventoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsCreateInventoryReq
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create inventory params
func (o *AdminCreateInventoryParams) WithTimeout(timeout time.Duration) *AdminCreateInventoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create inventory params
func (o *AdminCreateInventoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create inventory params
func (o *AdminCreateInventoryParams) WithContext(ctx context.Context) *AdminCreateInventoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create inventory params
func (o *AdminCreateInventoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create inventory params
func (o *AdminCreateInventoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create inventory params
func (o *AdminCreateInventoryParams) WithHTTPClient(client *http.Client) *AdminCreateInventoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create inventory params
func (o *AdminCreateInventoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create inventory params
func (o *AdminCreateInventoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin create inventory params
func (o *AdminCreateInventoryParams) WithBody(body *inventoryclientmodels.ApimodelsCreateInventoryReq) *AdminCreateInventoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create inventory params
func (o *AdminCreateInventoryParams) SetBody(body *inventoryclientmodels.ApimodelsCreateInventoryReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create inventory params
func (o *AdminCreateInventoryParams) WithNamespace(namespace string) *AdminCreateInventoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create inventory params
func (o *AdminCreateInventoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateInventoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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