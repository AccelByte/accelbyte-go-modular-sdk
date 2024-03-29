// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package category

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

// NewPublicGetChildCategoriesParams creates a new PublicGetChildCategoriesParams object
// with the default values initialized.
func NewPublicGetChildCategoriesParams() *PublicGetChildCategoriesParams {
	var ()
	return &PublicGetChildCategoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetChildCategoriesParamsWithTimeout creates a new PublicGetChildCategoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetChildCategoriesParamsWithTimeout(timeout time.Duration) *PublicGetChildCategoriesParams {
	var ()
	return &PublicGetChildCategoriesParams{

		timeout: timeout,
	}
}

// NewPublicGetChildCategoriesParamsWithContext creates a new PublicGetChildCategoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetChildCategoriesParamsWithContext(ctx context.Context) *PublicGetChildCategoriesParams {
	var ()
	return &PublicGetChildCategoriesParams{

		Context: ctx,
	}
}

// NewPublicGetChildCategoriesParamsWithHTTPClient creates a new PublicGetChildCategoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetChildCategoriesParamsWithHTTPClient(client *http.Client) *PublicGetChildCategoriesParams {
	var ()
	return &PublicGetChildCategoriesParams{
		HTTPClient: client,
	}
}

/*PublicGetChildCategoriesParams contains all the parameters to send to the API endpoint
for the public get child categories operation typically these are written to a http.Request
*/
type PublicGetChildCategoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CategoryPath*/
	CategoryPath string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Language*/
	Language *string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get child categories params
func (o *PublicGetChildCategoriesParams) WithTimeout(timeout time.Duration) *PublicGetChildCategoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get child categories params
func (o *PublicGetChildCategoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get child categories params
func (o *PublicGetChildCategoriesParams) WithContext(ctx context.Context) *PublicGetChildCategoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get child categories params
func (o *PublicGetChildCategoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get child categories params
func (o *PublicGetChildCategoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get child categories params
func (o *PublicGetChildCategoriesParams) WithHTTPClient(client *http.Client) *PublicGetChildCategoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get child categories params
func (o *PublicGetChildCategoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get child categories params
func (o *PublicGetChildCategoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetChildCategoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCategoryPath adds the categoryPath to the public get child categories params
func (o *PublicGetChildCategoriesParams) WithCategoryPath(categoryPath string) *PublicGetChildCategoriesParams {
	o.SetCategoryPath(categoryPath)
	return o
}

// SetCategoryPath adds the categoryPath to the public get child categories params
func (o *PublicGetChildCategoriesParams) SetCategoryPath(categoryPath string) {
	o.CategoryPath = categoryPath
}

// WithNamespace adds the namespace to the public get child categories params
func (o *PublicGetChildCategoriesParams) WithNamespace(namespace string) *PublicGetChildCategoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get child categories params
func (o *PublicGetChildCategoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLanguage adds the language to the public get child categories params
func (o *PublicGetChildCategoriesParams) WithLanguage(language *string) *PublicGetChildCategoriesParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get child categories params
func (o *PublicGetChildCategoriesParams) SetLanguage(language *string) {
	o.Language = language
}

// WithStoreID adds the storeID to the public get child categories params
func (o *PublicGetChildCategoriesParams) WithStoreID(storeID *string) *PublicGetChildCategoriesParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public get child categories params
func (o *PublicGetChildCategoriesParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetChildCategoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param categoryPath
	if err := r.SetPathParam("categoryPath", o.CategoryPath); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
