// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package catalog_changes

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewUnselectAllRecordsParams creates a new UnselectAllRecordsParams object
// with the default values initialized.
func NewUnselectAllRecordsParams() *UnselectAllRecordsParams {
	var ()
	return &UnselectAllRecordsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUnselectAllRecordsParamsWithTimeout creates a new UnselectAllRecordsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUnselectAllRecordsParamsWithTimeout(timeout time.Duration) *UnselectAllRecordsParams {
	var ()
	return &UnselectAllRecordsParams{

		timeout: timeout,
	}
}

// NewUnselectAllRecordsParamsWithContext creates a new UnselectAllRecordsParams object
// with the default values initialized, and the ability to set a context for a request
func NewUnselectAllRecordsParamsWithContext(ctx context.Context) *UnselectAllRecordsParams {
	var ()
	return &UnselectAllRecordsParams{

		Context: ctx,
	}
}

// NewUnselectAllRecordsParamsWithHTTPClient creates a new UnselectAllRecordsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUnselectAllRecordsParamsWithHTTPClient(client *http.Client) *UnselectAllRecordsParams {
	var ()
	return &UnselectAllRecordsParams{
		HTTPClient: client,
	}
}

/*
UnselectAllRecordsParams contains all the parameters to send to the API endpoint
for the unselect all records operation typically these are written to a http.Request
*/
type UnselectAllRecordsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the unselect all records params
func (o *UnselectAllRecordsParams) WithTimeout(timeout time.Duration) *UnselectAllRecordsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the unselect all records params
func (o *UnselectAllRecordsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the unselect all records params
func (o *UnselectAllRecordsParams) WithContext(ctx context.Context) *UnselectAllRecordsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the unselect all records params
func (o *UnselectAllRecordsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the unselect all records params
func (o *UnselectAllRecordsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the unselect all records params
func (o *UnselectAllRecordsParams) WithHTTPClient(client *http.Client) *UnselectAllRecordsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the unselect all records params
func (o *UnselectAllRecordsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the unselect all records params
func (o *UnselectAllRecordsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the unselect all records params
func (o *UnselectAllRecordsParams) WithNamespace(namespace string) *UnselectAllRecordsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the unselect all records params
func (o *UnselectAllRecordsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the unselect all records params
func (o *UnselectAllRecordsParams) WithStoreID(storeID string) *UnselectAllRecordsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the unselect all records params
func (o *UnselectAllRecordsParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *UnselectAllRecordsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param storeId
	if err := r.SetPathParam("storeId", o.StoreID); err != nil {
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
