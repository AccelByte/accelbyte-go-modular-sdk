// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package fulfillment_script

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewCreateFulfillmentScriptParams creates a new CreateFulfillmentScriptParams object
// with the default values initialized.
func NewCreateFulfillmentScriptParams() *CreateFulfillmentScriptParams {
	var ()
	return &CreateFulfillmentScriptParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateFulfillmentScriptParamsWithTimeout creates a new CreateFulfillmentScriptParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateFulfillmentScriptParamsWithTimeout(timeout time.Duration) *CreateFulfillmentScriptParams {
	var ()
	return &CreateFulfillmentScriptParams{

		timeout: timeout,
	}
}

// NewCreateFulfillmentScriptParamsWithContext creates a new CreateFulfillmentScriptParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateFulfillmentScriptParamsWithContext(ctx context.Context) *CreateFulfillmentScriptParams {
	var ()
	return &CreateFulfillmentScriptParams{

		Context: ctx,
	}
}

// NewCreateFulfillmentScriptParamsWithHTTPClient creates a new CreateFulfillmentScriptParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateFulfillmentScriptParamsWithHTTPClient(client *http.Client) *CreateFulfillmentScriptParams {
	var ()
	return &CreateFulfillmentScriptParams{
		HTTPClient: client,
	}
}

/*
CreateFulfillmentScriptParams contains all the parameters to send to the API endpoint
for the create fulfillment script operation typically these are written to a http.Request
*/
type CreateFulfillmentScriptParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.FulfillmentScriptCreate
	/*ID*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) WithTimeout(timeout time.Duration) *CreateFulfillmentScriptParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) WithContext(ctx context.Context) *CreateFulfillmentScriptParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) WithHTTPClient(client *http.Client) *CreateFulfillmentScriptParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) WithBody(body *platformclientmodels.FulfillmentScriptCreate) *CreateFulfillmentScriptParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) SetBody(body *platformclientmodels.FulfillmentScriptCreate) {
	o.Body = body
}

// WithID adds the id to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) WithID(id string) *CreateFulfillmentScriptParams {
	o.SetID(id)
	return o
}

// SetID adds the id to the create fulfillment script params
func (o *CreateFulfillmentScriptParams) SetID(id string) {
	o.ID = id
}

// WriteToRequest writes these params to a swagger request
func (o *CreateFulfillmentScriptParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
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
