// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_inventories

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// NewDeleteInventoryParams creates a new DeleteInventoryParams object
// with the default values initialized.
func NewDeleteInventoryParams() *DeleteInventoryParams {
	var ()
	return &DeleteInventoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteInventoryParamsWithTimeout creates a new DeleteInventoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteInventoryParamsWithTimeout(timeout time.Duration) *DeleteInventoryParams {
	var ()
	return &DeleteInventoryParams{

		timeout: timeout,
	}
}

// NewDeleteInventoryParamsWithContext creates a new DeleteInventoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteInventoryParamsWithContext(ctx context.Context) *DeleteInventoryParams {
	var ()
	return &DeleteInventoryParams{

		Context: ctx,
	}
}

// NewDeleteInventoryParamsWithHTTPClient creates a new DeleteInventoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteInventoryParamsWithHTTPClient(client *http.Client) *DeleteInventoryParams {
	var ()
	return &DeleteInventoryParams{
		HTTPClient: client,
	}
}

/*DeleteInventoryParams contains all the parameters to send to the API endpoint
for the delete inventory operation typically these are written to a http.Request
*/
type DeleteInventoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsDeleteInventoryReq
	/*InventoryID
	  InventoryID

	*/
	InventoryID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete inventory params
func (o *DeleteInventoryParams) WithTimeout(timeout time.Duration) *DeleteInventoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete inventory params
func (o *DeleteInventoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete inventory params
func (o *DeleteInventoryParams) WithContext(ctx context.Context) *DeleteInventoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete inventory params
func (o *DeleteInventoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete inventory params
func (o *DeleteInventoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete inventory params
func (o *DeleteInventoryParams) WithHTTPClient(client *http.Client) *DeleteInventoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete inventory params
func (o *DeleteInventoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete inventory params
func (o *DeleteInventoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteInventoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the delete inventory params
func (o *DeleteInventoryParams) WithBody(body *inventoryclientmodels.ApimodelsDeleteInventoryReq) *DeleteInventoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the delete inventory params
func (o *DeleteInventoryParams) SetBody(body *inventoryclientmodels.ApimodelsDeleteInventoryReq) {
	o.Body = body
}

// WithInventoryID adds the inventoryID to the delete inventory params
func (o *DeleteInventoryParams) WithInventoryID(inventoryID string) *DeleteInventoryParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the delete inventory params
func (o *DeleteInventoryParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the delete inventory params
func (o *DeleteInventoryParams) WithNamespace(namespace string) *DeleteInventoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete inventory params
func (o *DeleteInventoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteInventoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param inventoryId
	if err := r.SetPathParam("inventoryId", o.InventoryID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
