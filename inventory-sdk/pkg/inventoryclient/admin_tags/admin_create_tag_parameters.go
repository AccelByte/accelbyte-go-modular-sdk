// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_tags

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

// NewAdminCreateTagParams creates a new AdminCreateTagParams object
// with the default values initialized.
func NewAdminCreateTagParams() *AdminCreateTagParams {
	var ()
	return &AdminCreateTagParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateTagParamsWithTimeout creates a new AdminCreateTagParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateTagParamsWithTimeout(timeout time.Duration) *AdminCreateTagParams {
	var ()
	return &AdminCreateTagParams{

		timeout: timeout,
	}
}

// NewAdminCreateTagParamsWithContext creates a new AdminCreateTagParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateTagParamsWithContext(ctx context.Context) *AdminCreateTagParams {
	var ()
	return &AdminCreateTagParams{

		Context: ctx,
	}
}

// NewAdminCreateTagParamsWithHTTPClient creates a new AdminCreateTagParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateTagParamsWithHTTPClient(client *http.Client) *AdminCreateTagParams {
	var ()
	return &AdminCreateTagParams{
		HTTPClient: client,
	}
}

/*AdminCreateTagParams contains all the parameters to send to the API endpoint
for the admin create tag operation typically these are written to a http.Request
*/
type AdminCreateTagParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsCreateTagReq
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create tag params
func (o *AdminCreateTagParams) WithTimeout(timeout time.Duration) *AdminCreateTagParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create tag params
func (o *AdminCreateTagParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create tag params
func (o *AdminCreateTagParams) WithContext(ctx context.Context) *AdminCreateTagParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create tag params
func (o *AdminCreateTagParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create tag params
func (o *AdminCreateTagParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create tag params
func (o *AdminCreateTagParams) WithHTTPClient(client *http.Client) *AdminCreateTagParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create tag params
func (o *AdminCreateTagParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create tag params
func (o *AdminCreateTagParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin create tag params
func (o *AdminCreateTagParams) WithBody(body *inventoryclientmodels.ApimodelsCreateTagReq) *AdminCreateTagParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create tag params
func (o *AdminCreateTagParams) SetBody(body *inventoryclientmodels.ApimodelsCreateTagReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create tag params
func (o *AdminCreateTagParams) WithNamespace(namespace string) *AdminCreateTagParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create tag params
func (o *AdminCreateTagParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateTagParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
