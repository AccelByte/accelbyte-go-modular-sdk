// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package item

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

// NewGetItemBySkuParams creates a new GetItemBySkuParams object
// with the default values initialized.
func NewGetItemBySkuParams() *GetItemBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemBySkuParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetItemBySkuParamsWithTimeout creates a new GetItemBySkuParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetItemBySkuParamsWithTimeout(timeout time.Duration) *GetItemBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemBySkuParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetItemBySkuParamsWithContext creates a new GetItemBySkuParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetItemBySkuParamsWithContext(ctx context.Context) *GetItemBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemBySkuParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetItemBySkuParamsWithHTTPClient creates a new GetItemBySkuParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetItemBySkuParamsWithHTTPClient(client *http.Client) *GetItemBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemBySkuParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetItemBySkuParams contains all the parameters to send to the API endpoint
for the get item by sku operation typically these are written to a http.Request
*/
type GetItemBySkuParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*Sku*/
	Sku string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get item by sku params
func (o *GetItemBySkuParams) WithTimeout(timeout time.Duration) *GetItemBySkuParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get item by sku params
func (o *GetItemBySkuParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get item by sku params
func (o *GetItemBySkuParams) WithContext(ctx context.Context) *GetItemBySkuParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get item by sku params
func (o *GetItemBySkuParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get item by sku params
func (o *GetItemBySkuParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get item by sku params
func (o *GetItemBySkuParams) WithHTTPClient(client *http.Client) *GetItemBySkuParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get item by sku params
func (o *GetItemBySkuParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get item by sku params
func (o *GetItemBySkuParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetItemBySkuParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get item by sku params
func (o *GetItemBySkuParams) WithNamespace(namespace string) *GetItemBySkuParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get item by sku params
func (o *GetItemBySkuParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the get item by sku params
func (o *GetItemBySkuParams) WithActiveOnly(activeOnly *bool) *GetItemBySkuParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get item by sku params
func (o *GetItemBySkuParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithStoreID adds the storeID to the get item by sku params
func (o *GetItemBySkuParams) WithStoreID(storeID *string) *GetItemBySkuParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get item by sku params
func (o *GetItemBySkuParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithSku adds the sku to the get item by sku params
func (o *GetItemBySkuParams) WithSku(sku string) *GetItemBySkuParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the get item by sku params
func (o *GetItemBySkuParams) SetSku(sku string) {
	o.Sku = sku
}

// WriteToRequest writes these params to a swagger request
func (o *GetItemBySkuParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

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

	// query param sku
	qrSku := o.Sku
	qSku := qrSku
	if qSku != "" {
		if err := r.SetQueryParam("sku", qSku); err != nil {
			return err
		}
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
