// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package section

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

// NewPublicListActiveSectionsParams creates a new PublicListActiveSectionsParams object
// with the default values initialized.
func NewPublicListActiveSectionsParams() *PublicListActiveSectionsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicListActiveSectionsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListActiveSectionsParamsWithTimeout creates a new PublicListActiveSectionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListActiveSectionsParamsWithTimeout(timeout time.Duration) *PublicListActiveSectionsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicListActiveSectionsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,

		timeout: timeout,
	}
}

// NewPublicListActiveSectionsParamsWithContext creates a new PublicListActiveSectionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListActiveSectionsParamsWithContext(ctx context.Context) *PublicListActiveSectionsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicListActiveSectionsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,

		Context: ctx,
	}
}

// NewPublicListActiveSectionsParamsWithHTTPClient creates a new PublicListActiveSectionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListActiveSectionsParamsWithHTTPClient(client *http.Client) *PublicListActiveSectionsParams {
	var (
		autoCalcEstimatedPriceDefault = bool(false)
	)
	return &PublicListActiveSectionsParams{
		AutoCalcEstimatedPrice: &autoCalcEstimatedPriceDefault,
		HTTPClient:             client,
	}
}

/*PublicListActiveSectionsParams contains all the parameters to send to the API endpoint
for the public list active sections operation typically these are written to a http.Request
*/
type PublicListActiveSectionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*AutoCalcEstimatedPrice*/
	AutoCalcEstimatedPrice *bool
	/*Language*/
	Language *string
	/*Region*/
	Region *string
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*ViewID*/
	ViewID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list active sections params
func (o *PublicListActiveSectionsParams) WithTimeout(timeout time.Duration) *PublicListActiveSectionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list active sections params
func (o *PublicListActiveSectionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list active sections params
func (o *PublicListActiveSectionsParams) WithContext(ctx context.Context) *PublicListActiveSectionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list active sections params
func (o *PublicListActiveSectionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list active sections params
func (o *PublicListActiveSectionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list active sections params
func (o *PublicListActiveSectionsParams) WithHTTPClient(client *http.Client) *PublicListActiveSectionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list active sections params
func (o *PublicListActiveSectionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list active sections params
func (o *PublicListActiveSectionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListActiveSectionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list active sections params
func (o *PublicListActiveSectionsParams) WithNamespace(namespace string) *PublicListActiveSectionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list active sections params
func (o *PublicListActiveSectionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public list active sections params
func (o *PublicListActiveSectionsParams) WithUserID(userID string) *PublicListActiveSectionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public list active sections params
func (o *PublicListActiveSectionsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public list active sections params
func (o *PublicListActiveSectionsParams) WithAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) *PublicListActiveSectionsParams {
	o.SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice)
	return o
}

// SetAutoCalcEstimatedPrice adds the autoCalcEstimatedPrice to the public list active sections params
func (o *PublicListActiveSectionsParams) SetAutoCalcEstimatedPrice(autoCalcEstimatedPrice *bool) {
	o.AutoCalcEstimatedPrice = autoCalcEstimatedPrice
}

// WithLanguage adds the language to the public list active sections params
func (o *PublicListActiveSectionsParams) WithLanguage(language *string) *PublicListActiveSectionsParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public list active sections params
func (o *PublicListActiveSectionsParams) SetLanguage(language *string) {
	o.Language = language
}

// WithRegion adds the region to the public list active sections params
func (o *PublicListActiveSectionsParams) WithRegion(region *string) *PublicListActiveSectionsParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public list active sections params
func (o *PublicListActiveSectionsParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the public list active sections params
func (o *PublicListActiveSectionsParams) WithStoreID(storeID *string) *PublicListActiveSectionsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public list active sections params
func (o *PublicListActiveSectionsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithViewID adds the viewID to the public list active sections params
func (o *PublicListActiveSectionsParams) WithViewID(viewID *string) *PublicListActiveSectionsParams {
	o.SetViewID(viewID)
	return o
}

// SetViewID adds the viewId to the public list active sections params
func (o *PublicListActiveSectionsParams) SetViewID(viewID *string) {
	o.ViewID = viewID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListActiveSectionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.AutoCalcEstimatedPrice != nil {

		// query param autoCalcEstimatedPrice
		var qrAutoCalcEstimatedPrice bool
		if o.AutoCalcEstimatedPrice != nil {
			qrAutoCalcEstimatedPrice = *o.AutoCalcEstimatedPrice
		}
		qAutoCalcEstimatedPrice := swag.FormatBool(qrAutoCalcEstimatedPrice)
		if qAutoCalcEstimatedPrice != "" {
			if err := r.SetQueryParam("autoCalcEstimatedPrice", qAutoCalcEstimatedPrice); err != nil {
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

	if o.ViewID != nil {

		// query param viewId
		var qrViewID string
		if o.ViewID != nil {
			qrViewID = *o.ViewID
		}
		qViewID := qrViewID
		if qViewID != "" {
			if err := r.SetQueryParam("viewId", qViewID); err != nil {
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
