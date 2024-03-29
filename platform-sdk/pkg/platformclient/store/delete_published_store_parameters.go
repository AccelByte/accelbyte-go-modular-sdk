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
)

// NewDeletePublishedStoreParams creates a new DeletePublishedStoreParams object
// with the default values initialized.
func NewDeletePublishedStoreParams() *DeletePublishedStoreParams {
	var ()
	return &DeletePublishedStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePublishedStoreParamsWithTimeout creates a new DeletePublishedStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePublishedStoreParamsWithTimeout(timeout time.Duration) *DeletePublishedStoreParams {
	var ()
	return &DeletePublishedStoreParams{

		timeout: timeout,
	}
}

// NewDeletePublishedStoreParamsWithContext creates a new DeletePublishedStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePublishedStoreParamsWithContext(ctx context.Context) *DeletePublishedStoreParams {
	var ()
	return &DeletePublishedStoreParams{

		Context: ctx,
	}
}

// NewDeletePublishedStoreParamsWithHTTPClient creates a new DeletePublishedStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePublishedStoreParamsWithHTTPClient(client *http.Client) *DeletePublishedStoreParams {
	var ()
	return &DeletePublishedStoreParams{
		HTTPClient: client,
	}
}

/*DeletePublishedStoreParams contains all the parameters to send to the API endpoint
for the delete published store operation typically these are written to a http.Request
*/
type DeletePublishedStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the delete published store params
func (o *DeletePublishedStoreParams) WithTimeout(timeout time.Duration) *DeletePublishedStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete published store params
func (o *DeletePublishedStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete published store params
func (o *DeletePublishedStoreParams) WithContext(ctx context.Context) *DeletePublishedStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete published store params
func (o *DeletePublishedStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete published store params
func (o *DeletePublishedStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete published store params
func (o *DeletePublishedStoreParams) WithHTTPClient(client *http.Client) *DeletePublishedStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete published store params
func (o *DeletePublishedStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete published store params
func (o *DeletePublishedStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeletePublishedStoreParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete published store params
func (o *DeletePublishedStoreParams) WithNamespace(namespace string) *DeletePublishedStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete published store params
func (o *DeletePublishedStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePublishedStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
