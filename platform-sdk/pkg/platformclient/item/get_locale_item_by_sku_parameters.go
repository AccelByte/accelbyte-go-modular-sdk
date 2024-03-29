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

// NewGetLocaleItemBySkuParams creates a new GetLocaleItemBySkuParams object
// with the default values initialized.
func NewGetLocaleItemBySkuParams() *GetLocaleItemBySkuParams {
	var (
		activeOnlyDefault     = bool(true)
		populateBundleDefault = bool(false)
	)
	return &GetLocaleItemBySkuParams{
		ActiveOnly:     &activeOnlyDefault,
		PopulateBundle: &populateBundleDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLocaleItemBySkuParamsWithTimeout creates a new GetLocaleItemBySkuParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLocaleItemBySkuParamsWithTimeout(timeout time.Duration) *GetLocaleItemBySkuParams {
	var (
		activeOnlyDefault     = bool(true)
		populateBundleDefault = bool(false)
	)
	return &GetLocaleItemBySkuParams{
		ActiveOnly:     &activeOnlyDefault,
		PopulateBundle: &populateBundleDefault,

		timeout: timeout,
	}
}

// NewGetLocaleItemBySkuParamsWithContext creates a new GetLocaleItemBySkuParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetLocaleItemBySkuParamsWithContext(ctx context.Context) *GetLocaleItemBySkuParams {
	var (
		activeOnlyDefault     = bool(true)
		populateBundleDefault = bool(false)
	)
	return &GetLocaleItemBySkuParams{
		ActiveOnly:     &activeOnlyDefault,
		PopulateBundle: &populateBundleDefault,

		Context: ctx,
	}
}

// NewGetLocaleItemBySkuParamsWithHTTPClient creates a new GetLocaleItemBySkuParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLocaleItemBySkuParamsWithHTTPClient(client *http.Client) *GetLocaleItemBySkuParams {
	var (
		activeOnlyDefault     = bool(true)
		populateBundleDefault = bool(false)
	)
	return &GetLocaleItemBySkuParams{
		ActiveOnly:     &activeOnlyDefault,
		PopulateBundle: &populateBundleDefault,
		HTTPClient:     client,
	}
}

/*GetLocaleItemBySkuParams contains all the parameters to send to the API endpoint
for the get locale item by sku operation typically these are written to a http.Request
*/
type GetLocaleItemBySkuParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*Language*/
	Language *string
	/*PopulateBundle
	  whether populate bundled items if it's a bundle

	*/
	PopulateBundle *bool
	/*Region*/
	Region *string
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

// WithTimeout adds the timeout to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithTimeout(timeout time.Duration) *GetLocaleItemBySkuParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithContext(ctx context.Context) *GetLocaleItemBySkuParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithHTTPClient(client *http.Client) *GetLocaleItemBySkuParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetLocaleItemBySkuParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithNamespace(namespace string) *GetLocaleItemBySkuParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithActiveOnly(activeOnly *bool) *GetLocaleItemBySkuParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithLanguage adds the language to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithLanguage(language *string) *GetLocaleItemBySkuParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetLanguage(language *string) {
	o.Language = language
}

// WithPopulateBundle adds the populateBundle to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithPopulateBundle(populateBundle *bool) *GetLocaleItemBySkuParams {
	o.SetPopulateBundle(populateBundle)
	return o
}

// SetPopulateBundle adds the populateBundle to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetPopulateBundle(populateBundle *bool) {
	o.PopulateBundle = populateBundle
}

// WithRegion adds the region to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithRegion(region *string) *GetLocaleItemBySkuParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithStoreID(storeID *string) *GetLocaleItemBySkuParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithSku adds the sku to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) WithSku(sku string) *GetLocaleItemBySkuParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the get locale item by sku params
func (o *GetLocaleItemBySkuParams) SetSku(sku string) {
	o.Sku = sku
}

// WriteToRequest writes these params to a swagger request
func (o *GetLocaleItemBySkuParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Language != nil {

		// query param language
		var qrLanguage string
		if o.Language != nil {
			qrLanguage = *o.Language
		}
		qLanguage := qrLanguage
		if qLanguage != "" {
			if err := r.SetQueryParam("language", qLanguage); err != nil {
				return err
			}
		}

	}

	if o.PopulateBundle != nil {

		// query param populateBundle
		var qrPopulateBundle bool
		if o.PopulateBundle != nil {
			qrPopulateBundle = *o.PopulateBundle
		}
		qPopulateBundle := swag.FormatBool(qrPopulateBundle)
		if qPopulateBundle != "" {
			if err := r.SetQueryParam("populateBundle", qPopulateBundle); err != nil {
				return err
			}
		}

	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
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
