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

// NewCreateStoreParams creates a new CreateStoreParams object
// with the default values initialized.
func NewCreateStoreParams() *CreateStoreParams {
	var ()
	return &CreateStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateStoreParamsWithTimeout creates a new CreateStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateStoreParamsWithTimeout(timeout time.Duration) *CreateStoreParams {
	var ()
	return &CreateStoreParams{

		timeout: timeout,
	}
}

// NewCreateStoreParamsWithContext creates a new CreateStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateStoreParamsWithContext(ctx context.Context) *CreateStoreParams {
	var ()
	return &CreateStoreParams{

		Context: ctx,
	}
}

// NewCreateStoreParamsWithHTTPClient creates a new CreateStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateStoreParamsWithHTTPClient(client *http.Client) *CreateStoreParams {
	var ()
	return &CreateStoreParams{
		HTTPClient: client,
	}
}

/*CreateStoreParams contains all the parameters to send to the API endpoint
for the create store operation typically these are written to a http.Request
*/
type CreateStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.StoreCreate
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create store params
func (o *CreateStoreParams) WithTimeout(timeout time.Duration) *CreateStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create store params
func (o *CreateStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create store params
func (o *CreateStoreParams) WithContext(ctx context.Context) *CreateStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create store params
func (o *CreateStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create store params
func (o *CreateStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create store params
func (o *CreateStoreParams) WithHTTPClient(client *http.Client) *CreateStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create store params
func (o *CreateStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create store params
func (o *CreateStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateStoreParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create store params
func (o *CreateStoreParams) WithBody(body *platformclientmodels.StoreCreate) *CreateStoreParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create store params
func (o *CreateStoreParams) SetBody(body *platformclientmodels.StoreCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create store params
func (o *CreateStoreParams) WithNamespace(namespace string) *CreateStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create store params
func (o *CreateStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
