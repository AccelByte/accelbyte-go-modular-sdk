// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_items

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

// NewAdminGetInventoryItemParams creates a new AdminGetInventoryItemParams object
// with the default values initialized.
func NewAdminGetInventoryItemParams() *AdminGetInventoryItemParams {
	var ()
	return &AdminGetInventoryItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetInventoryItemParamsWithTimeout creates a new AdminGetInventoryItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetInventoryItemParamsWithTimeout(timeout time.Duration) *AdminGetInventoryItemParams {
	var ()
	return &AdminGetInventoryItemParams{

		timeout: timeout,
	}
}

// NewAdminGetInventoryItemParamsWithContext creates a new AdminGetInventoryItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetInventoryItemParamsWithContext(ctx context.Context) *AdminGetInventoryItemParams {
	var ()
	return &AdminGetInventoryItemParams{

		Context: ctx,
	}
}

// NewAdminGetInventoryItemParamsWithHTTPClient creates a new AdminGetInventoryItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetInventoryItemParamsWithHTTPClient(client *http.Client) *AdminGetInventoryItemParams {
	var ()
	return &AdminGetInventoryItemParams{
		HTTPClient: client,
	}
}

/*AdminGetInventoryItemParams contains all the parameters to send to the API endpoint
for the admin get inventory item operation typically these are written to a http.Request
*/
type AdminGetInventoryItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*InventoryID
	  InventoryID

	*/
	InventoryID string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SlotID
	  slotID

	*/
	SlotID string
	/*SourceItemID
	  sourceItemID

	*/
	SourceItemID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get inventory item params
func (o *AdminGetInventoryItemParams) WithTimeout(timeout time.Duration) *AdminGetInventoryItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get inventory item params
func (o *AdminGetInventoryItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get inventory item params
func (o *AdminGetInventoryItemParams) WithContext(ctx context.Context) *AdminGetInventoryItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get inventory item params
func (o *AdminGetInventoryItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get inventory item params
func (o *AdminGetInventoryItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get inventory item params
func (o *AdminGetInventoryItemParams) WithHTTPClient(client *http.Client) *AdminGetInventoryItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get inventory item params
func (o *AdminGetInventoryItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get inventory item params
func (o *AdminGetInventoryItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetInventoryItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithInventoryID adds the inventoryID to the admin get inventory item params
func (o *AdminGetInventoryItemParams) WithInventoryID(inventoryID string) *AdminGetInventoryItemParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the admin get inventory item params
func (o *AdminGetInventoryItemParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the admin get inventory item params
func (o *AdminGetInventoryItemParams) WithNamespace(namespace string) *AdminGetInventoryItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get inventory item params
func (o *AdminGetInventoryItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSlotID adds the slotID to the admin get inventory item params
func (o *AdminGetInventoryItemParams) WithSlotID(slotID string) *AdminGetInventoryItemParams {
	o.SetSlotID(slotID)
	return o
}

// SetSlotID adds the slotId to the admin get inventory item params
func (o *AdminGetInventoryItemParams) SetSlotID(slotID string) {
	o.SlotID = slotID
}

// WithSourceItemID adds the sourceItemID to the admin get inventory item params
func (o *AdminGetInventoryItemParams) WithSourceItemID(sourceItemID string) *AdminGetInventoryItemParams {
	o.SetSourceItemID(sourceItemID)
	return o
}

// SetSourceItemID adds the sourceItemId to the admin get inventory item params
func (o *AdminGetInventoryItemParams) SetSourceItemID(sourceItemID string) {
	o.SourceItemID = sourceItemID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetInventoryItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param inventoryId
	if err := r.SetPathParam("inventoryId", o.InventoryID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param slotId
	if err := r.SetPathParam("slotId", o.SlotID); err != nil {
		return err
	}

	// path param sourceItemId
	if err := r.SetPathParam("sourceItemId", o.SourceItemID); err != nil {
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
