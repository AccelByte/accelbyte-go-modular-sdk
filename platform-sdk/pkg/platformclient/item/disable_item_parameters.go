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

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewDisableItemParams creates a new DisableItemParams object
// with the default values initialized.
func NewDisableItemParams() *DisableItemParams {
	var ()
	return &DisableItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDisableItemParamsWithTimeout creates a new DisableItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDisableItemParamsWithTimeout(timeout time.Duration) *DisableItemParams {
	var ()
	return &DisableItemParams{

		timeout: timeout,
	}
}

// NewDisableItemParamsWithContext creates a new DisableItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewDisableItemParamsWithContext(ctx context.Context) *DisableItemParams {
	var ()
	return &DisableItemParams{

		Context: ctx,
	}
}

// NewDisableItemParamsWithHTTPClient creates a new DisableItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDisableItemParamsWithHTTPClient(client *http.Client) *DisableItemParams {
	var ()
	return &DisableItemParams{
		HTTPClient: client,
	}
}

/*DisableItemParams contains all the parameters to send to the API endpoint
for the disable item operation typically these are written to a http.Request
*/
type DisableItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ChangeStatusItemRequest
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

// WithTimeout adds the timeout to the disable item params
func (o *DisableItemParams) WithTimeout(timeout time.Duration) *DisableItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the disable item params
func (o *DisableItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the disable item params
func (o *DisableItemParams) WithContext(ctx context.Context) *DisableItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the disable item params
func (o *DisableItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the disable item params
func (o *DisableItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the disable item params
func (o *DisableItemParams) WithHTTPClient(client *http.Client) *DisableItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the disable item params
func (o *DisableItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the disable item params
func (o *DisableItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DisableItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the disable item params
func (o *DisableItemParams) WithBody(body *platformclientmodels.ChangeStatusItemRequest) *DisableItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the disable item params
func (o *DisableItemParams) SetBody(body *platformclientmodels.ChangeStatusItemRequest) {
	o.Body = body
}

// WithItemID adds the itemID to the disable item params
func (o *DisableItemParams) WithItemID(itemID string) *DisableItemParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the disable item params
func (o *DisableItemParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the disable item params
func (o *DisableItemParams) WithNamespace(namespace string) *DisableItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the disable item params
func (o *DisableItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the disable item params
func (o *DisableItemParams) WithStoreID(storeID string) *DisableItemParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the disable item params
func (o *DisableItemParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *DisableItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
