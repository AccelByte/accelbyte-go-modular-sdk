// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_type

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminUpdateTypeParams creates a new AdminUpdateTypeParams object
// with the default values initialized.
func NewAdminUpdateTypeParams() *AdminUpdateTypeParams {
	var ()
	return &AdminUpdateTypeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateTypeParamsWithTimeout creates a new AdminUpdateTypeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateTypeParamsWithTimeout(timeout time.Duration) *AdminUpdateTypeParams {
	var ()
	return &AdminUpdateTypeParams{

		timeout: timeout,
	}
}

// NewAdminUpdateTypeParamsWithContext creates a new AdminUpdateTypeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateTypeParamsWithContext(ctx context.Context) *AdminUpdateTypeParams {
	var ()
	return &AdminUpdateTypeParams{

		Context: ctx,
	}
}

// NewAdminUpdateTypeParamsWithHTTPClient creates a new AdminUpdateTypeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateTypeParamsWithHTTPClient(client *http.Client) *AdminUpdateTypeParams {
	var ()
	return &AdminUpdateTypeParams{
		HTTPClient: client,
	}
}

/*AdminUpdateTypeParams contains all the parameters to send to the API endpoint
for the admin update type operation typically these are written to a http.Request
*/
type AdminUpdateTypeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateTypeRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*TypeID
	  type ID

	*/
	TypeID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update type params
func (o *AdminUpdateTypeParams) WithTimeout(timeout time.Duration) *AdminUpdateTypeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update type params
func (o *AdminUpdateTypeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update type params
func (o *AdminUpdateTypeParams) WithContext(ctx context.Context) *AdminUpdateTypeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update type params
func (o *AdminUpdateTypeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update type params
func (o *AdminUpdateTypeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update type params
func (o *AdminUpdateTypeParams) WithHTTPClient(client *http.Client) *AdminUpdateTypeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update type params
func (o *AdminUpdateTypeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update type params
func (o *AdminUpdateTypeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update type params
func (o *AdminUpdateTypeParams) WithBody(body *ugcclientmodels.ModelsCreateTypeRequest) *AdminUpdateTypeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update type params
func (o *AdminUpdateTypeParams) SetBody(body *ugcclientmodels.ModelsCreateTypeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update type params
func (o *AdminUpdateTypeParams) WithNamespace(namespace string) *AdminUpdateTypeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update type params
func (o *AdminUpdateTypeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTypeID adds the typeID to the admin update type params
func (o *AdminUpdateTypeParams) WithTypeID(typeID string) *AdminUpdateTypeParams {
	o.SetTypeID(typeID)
	return o
}

// SetTypeID adds the typeId to the admin update type params
func (o *AdminUpdateTypeParams) SetTypeID(typeID string) {
	o.TypeID = typeID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateTypeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param typeId
	if err := r.SetPathParam("typeId", o.TypeID); err != nil {
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
