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
)

// NewDefeatureItemParams creates a new DefeatureItemParams object
// with the default values initialized.
func NewDefeatureItemParams() *DefeatureItemParams {
	var ()
	return &DefeatureItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDefeatureItemParamsWithTimeout creates a new DefeatureItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDefeatureItemParamsWithTimeout(timeout time.Duration) *DefeatureItemParams {
	var ()
	return &DefeatureItemParams{

		timeout: timeout,
	}
}

// NewDefeatureItemParamsWithContext creates a new DefeatureItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewDefeatureItemParamsWithContext(ctx context.Context) *DefeatureItemParams {
	var ()
	return &DefeatureItemParams{

		Context: ctx,
	}
}

// NewDefeatureItemParamsWithHTTPClient creates a new DefeatureItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDefeatureItemParamsWithHTTPClient(client *http.Client) *DefeatureItemParams {
	var ()
	return &DefeatureItemParams{
		HTTPClient: client,
	}
}

/*DefeatureItemParams contains all the parameters to send to the API endpoint
for the defeature item operation typically these are written to a http.Request
*/
type DefeatureItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Feature*/
	Feature string
	/*ItemID*/
	ItemID string
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the defeature item params
func (o *DefeatureItemParams) WithTimeout(timeout time.Duration) *DefeatureItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the defeature item params
func (o *DefeatureItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the defeature item params
func (o *DefeatureItemParams) WithContext(ctx context.Context) *DefeatureItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the defeature item params
func (o *DefeatureItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the defeature item params
func (o *DefeatureItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the defeature item params
func (o *DefeatureItemParams) WithHTTPClient(client *http.Client) *DefeatureItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the defeature item params
func (o *DefeatureItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the defeature item params
func (o *DefeatureItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DefeatureItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFeature adds the feature to the defeature item params
func (o *DefeatureItemParams) WithFeature(feature string) *DefeatureItemParams {
	o.SetFeature(feature)
	return o
}

// SetFeature adds the feature to the defeature item params
func (o *DefeatureItemParams) SetFeature(feature string) {
	o.Feature = feature
}

// WithItemID adds the itemID to the defeature item params
func (o *DefeatureItemParams) WithItemID(itemID string) *DefeatureItemParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the defeature item params
func (o *DefeatureItemParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the defeature item params
func (o *DefeatureItemParams) WithNamespace(namespace string) *DefeatureItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the defeature item params
func (o *DefeatureItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the defeature item params
func (o *DefeatureItemParams) WithStoreID(storeID string) *DefeatureItemParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the defeature item params
func (o *DefeatureItemParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *DefeatureItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param feature
	if err := r.SetPathParam("feature", o.Feature); err != nil {
		return err
	}

	// path param itemId
	if err := r.SetPathParam("itemId", o.ItemID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
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
