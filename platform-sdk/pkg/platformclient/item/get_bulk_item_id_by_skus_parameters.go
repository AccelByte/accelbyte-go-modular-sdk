// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package item

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
	"github.com/go-openapi/swag"
)

// NewGetBulkItemIDBySkusParams creates a new GetBulkItemIDBySkusParams object
// with the default values initialized.
func NewGetBulkItemIDBySkusParams() *GetBulkItemIDBySkusParams {
	var ()
	return &GetBulkItemIDBySkusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetBulkItemIDBySkusParamsWithTimeout creates a new GetBulkItemIDBySkusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetBulkItemIDBySkusParamsWithTimeout(timeout time.Duration) *GetBulkItemIDBySkusParams {
	var ()
	return &GetBulkItemIDBySkusParams{

		timeout: timeout,
	}
}

// NewGetBulkItemIDBySkusParamsWithContext creates a new GetBulkItemIDBySkusParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetBulkItemIDBySkusParamsWithContext(ctx context.Context) *GetBulkItemIDBySkusParams {
	var ()
	return &GetBulkItemIDBySkusParams{

		Context: ctx,
	}
}

// NewGetBulkItemIDBySkusParamsWithHTTPClient creates a new GetBulkItemIDBySkusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetBulkItemIDBySkusParamsWithHTTPClient(client *http.Client) *GetBulkItemIDBySkusParams {
	var ()
	return &GetBulkItemIDBySkusParams{
		HTTPClient: client,
	}
}

/*
GetBulkItemIDBySkusParams contains all the parameters to send to the API endpoint
for the get bulk item Id by skus operation typically these are written to a http.Request
*/
type GetBulkItemIDBySkusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Sku
	  list of sku

	*/
	Sku []string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) WithTimeout(timeout time.Duration) *GetBulkItemIDBySkusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) WithContext(ctx context.Context) *GetBulkItemIDBySkusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) WithHTTPClient(client *http.Client) *GetBulkItemIDBySkusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) WithNamespace(namespace string) *GetBulkItemIDBySkusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSku adds the sku to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) WithSku(sku []string) *GetBulkItemIDBySkusParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) SetSku(sku []string) {
	o.Sku = sku
}

// WithStoreID adds the storeID to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) WithStoreID(storeID *string) *GetBulkItemIDBySkusParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get bulk item Id by skus params
func (o *GetBulkItemIDBySkusParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetBulkItemIDBySkusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	valuesSku := o.Sku

	joinedSku := swag.JoinByFormat(valuesSku, "multi")
	// query array param sku
	if err := r.SetQueryParam("sku", joinedSku...); err != nil {
		return err
	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
				return err
			}
		}

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
