// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

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

// NewUpdateItemParams creates a new UpdateItemParams object
// with the default values initialized.
func NewUpdateItemParams() *UpdateItemParams {
	var ()
	return &UpdateItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateItemParamsWithTimeout creates a new UpdateItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateItemParamsWithTimeout(timeout time.Duration) *UpdateItemParams {
	var ()
	return &UpdateItemParams{

		timeout: timeout,
	}
}

// NewUpdateItemParamsWithContext creates a new UpdateItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateItemParamsWithContext(ctx context.Context) *UpdateItemParams {
	var ()
	return &UpdateItemParams{

		Context: ctx,
	}
}

// NewUpdateItemParamsWithHTTPClient creates a new UpdateItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateItemParamsWithHTTPClient(client *http.Client) *UpdateItemParams {
	var ()
	return &UpdateItemParams{
		HTTPClient: client,
	}
}

/*UpdateItemParams contains all the parameters to send to the API endpoint
for the update item operation typically these are written to a http.Request
*/
type UpdateItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ItemUpdate
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
}

// WithTimeout adds the timeout to the update item params
func (o *UpdateItemParams) WithTimeout(timeout time.Duration) *UpdateItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update item params
func (o *UpdateItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update item params
func (o *UpdateItemParams) WithContext(ctx context.Context) *UpdateItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update item params
func (o *UpdateItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update item params
func (o *UpdateItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update item params
func (o *UpdateItemParams) WithHTTPClient(client *http.Client) *UpdateItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update item params
func (o *UpdateItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update item params
func (o *UpdateItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update item params
func (o *UpdateItemParams) WithBody(body *platformclientmodels.ItemUpdate) *UpdateItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update item params
func (o *UpdateItemParams) SetBody(body *platformclientmodels.ItemUpdate) {
	o.Body = body
}

// WithItemID adds the itemID to the update item params
func (o *UpdateItemParams) WithItemID(itemID string) *UpdateItemParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the update item params
func (o *UpdateItemParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the update item params
func (o *UpdateItemParams) WithNamespace(namespace string) *UpdateItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update item params
func (o *UpdateItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the update item params
func (o *UpdateItemParams) WithStoreID(storeID string) *UpdateItemParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the update item params
func (o *UpdateItemParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
