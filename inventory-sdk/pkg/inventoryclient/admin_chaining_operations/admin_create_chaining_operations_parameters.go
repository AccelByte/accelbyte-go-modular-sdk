// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_chaining_operations

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

// NewAdminCreateChainingOperationsParams creates a new AdminCreateChainingOperationsParams object
// with the default values initialized.
func NewAdminCreateChainingOperationsParams() *AdminCreateChainingOperationsParams {
	var ()
	return &AdminCreateChainingOperationsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateChainingOperationsParamsWithTimeout creates a new AdminCreateChainingOperationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateChainingOperationsParamsWithTimeout(timeout time.Duration) *AdminCreateChainingOperationsParams {
	var ()
	return &AdminCreateChainingOperationsParams{

		timeout: timeout,
	}
}

// NewAdminCreateChainingOperationsParamsWithContext creates a new AdminCreateChainingOperationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateChainingOperationsParamsWithContext(ctx context.Context) *AdminCreateChainingOperationsParams {
	var ()
	return &AdminCreateChainingOperationsParams{

		Context: ctx,
	}
}

// NewAdminCreateChainingOperationsParamsWithHTTPClient creates a new AdminCreateChainingOperationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateChainingOperationsParamsWithHTTPClient(client *http.Client) *AdminCreateChainingOperationsParams {
	var ()
	return &AdminCreateChainingOperationsParams{
		HTTPClient: client,
	}
}

/*AdminCreateChainingOperationsParams contains all the parameters to send to the API endpoint
for the admin create chaining operations operation typically these are written to a http.Request
*/
type AdminCreateChainingOperationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsChainingOperationReq
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) WithTimeout(timeout time.Duration) *AdminCreateChainingOperationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) WithContext(ctx context.Context) *AdminCreateChainingOperationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) WithHTTPClient(client *http.Client) *AdminCreateChainingOperationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) WithBody(body *inventoryclientmodels.ApimodelsChainingOperationReq) *AdminCreateChainingOperationsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) SetBody(body *inventoryclientmodels.ApimodelsChainingOperationReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) WithNamespace(namespace string) *AdminCreateChainingOperationsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create chaining operations params
func (o *AdminCreateChainingOperationsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateChainingOperationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
