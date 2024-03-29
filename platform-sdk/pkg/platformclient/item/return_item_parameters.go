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

// NewReturnItemParams creates a new ReturnItemParams object
// with the default values initialized.
func NewReturnItemParams() *ReturnItemParams {
	var ()
	return &ReturnItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewReturnItemParamsWithTimeout creates a new ReturnItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewReturnItemParamsWithTimeout(timeout time.Duration) *ReturnItemParams {
	var ()
	return &ReturnItemParams{

		timeout: timeout,
	}
}

// NewReturnItemParamsWithContext creates a new ReturnItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewReturnItemParamsWithContext(ctx context.Context) *ReturnItemParams {
	var ()
	return &ReturnItemParams{

		Context: ctx,
	}
}

// NewReturnItemParamsWithHTTPClient creates a new ReturnItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewReturnItemParamsWithHTTPClient(client *http.Client) *ReturnItemParams {
	var ()
	return &ReturnItemParams{
		HTTPClient: client,
	}
}

/*ReturnItemParams contains all the parameters to send to the API endpoint
for the return item operation typically these are written to a http.Request
*/
type ReturnItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ItemReturnRequest
	/*ItemID*/
	ItemID string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the return item params
func (o *ReturnItemParams) WithTimeout(timeout time.Duration) *ReturnItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the return item params
func (o *ReturnItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the return item params
func (o *ReturnItemParams) WithContext(ctx context.Context) *ReturnItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the return item params
func (o *ReturnItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the return item params
func (o *ReturnItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the return item params
func (o *ReturnItemParams) WithHTTPClient(client *http.Client) *ReturnItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the return item params
func (o *ReturnItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the return item params
func (o *ReturnItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ReturnItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the return item params
func (o *ReturnItemParams) WithBody(body *platformclientmodels.ItemReturnRequest) *ReturnItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the return item params
func (o *ReturnItemParams) SetBody(body *platformclientmodels.ItemReturnRequest) {
	o.Body = body
}

// WithItemID adds the itemID to the return item params
func (o *ReturnItemParams) WithItemID(itemID string) *ReturnItemParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the return item params
func (o *ReturnItemParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the return item params
func (o *ReturnItemParams) WithNamespace(namespace string) *ReturnItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the return item params
func (o *ReturnItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ReturnItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
