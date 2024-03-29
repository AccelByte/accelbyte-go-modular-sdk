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

// NewUpdateAppParams creates a new UpdateAppParams object
// with the default values initialized.
func NewUpdateAppParams() *UpdateAppParams {
	var ()
	return &UpdateAppParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateAppParamsWithTimeout creates a new UpdateAppParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateAppParamsWithTimeout(timeout time.Duration) *UpdateAppParams {
	var ()
	return &UpdateAppParams{

		timeout: timeout,
	}
}

// NewUpdateAppParamsWithContext creates a new UpdateAppParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateAppParamsWithContext(ctx context.Context) *UpdateAppParams {
	var ()
	return &UpdateAppParams{

		Context: ctx,
	}
}

// NewUpdateAppParamsWithHTTPClient creates a new UpdateAppParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateAppParamsWithHTTPClient(client *http.Client) *UpdateAppParams {
	var ()
	return &UpdateAppParams{
		HTTPClient: client,
	}
}

/*UpdateAppParams contains all the parameters to send to the API endpoint
for the update app operation typically these are written to a http.Request
*/
type UpdateAppParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.AppUpdate
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

// WithTimeout adds the timeout to the update app params
func (o *UpdateAppParams) WithTimeout(timeout time.Duration) *UpdateAppParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update app params
func (o *UpdateAppParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update app params
func (o *UpdateAppParams) WithContext(ctx context.Context) *UpdateAppParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update app params
func (o *UpdateAppParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update app params
func (o *UpdateAppParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update app params
func (o *UpdateAppParams) WithHTTPClient(client *http.Client) *UpdateAppParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update app params
func (o *UpdateAppParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update app params
func (o *UpdateAppParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateAppParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update app params
func (o *UpdateAppParams) WithBody(body *platformclientmodels.AppUpdate) *UpdateAppParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update app params
func (o *UpdateAppParams) SetBody(body *platformclientmodels.AppUpdate) {
	o.Body = body
}

// WithItemID adds the itemID to the update app params
func (o *UpdateAppParams) WithItemID(itemID string) *UpdateAppParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the update app params
func (o *UpdateAppParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the update app params
func (o *UpdateAppParams) WithNamespace(namespace string) *UpdateAppParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update app params
func (o *UpdateAppParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the update app params
func (o *UpdateAppParams) WithStoreID(storeID string) *UpdateAppParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the update app params
func (o *UpdateAppParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateAppParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
