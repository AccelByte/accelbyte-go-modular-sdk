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

// NewAcquireItemParams creates a new AcquireItemParams object
// with the default values initialized.
func NewAcquireItemParams() *AcquireItemParams {
	var ()
	return &AcquireItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAcquireItemParamsWithTimeout creates a new AcquireItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAcquireItemParamsWithTimeout(timeout time.Duration) *AcquireItemParams {
	var ()
	return &AcquireItemParams{

		timeout: timeout,
	}
}

// NewAcquireItemParamsWithContext creates a new AcquireItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewAcquireItemParamsWithContext(ctx context.Context) *AcquireItemParams {
	var ()
	return &AcquireItemParams{

		Context: ctx,
	}
}

// NewAcquireItemParamsWithHTTPClient creates a new AcquireItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAcquireItemParamsWithHTTPClient(client *http.Client) *AcquireItemParams {
	var ()
	return &AcquireItemParams{
		HTTPClient: client,
	}
}

/*AcquireItemParams contains all the parameters to send to the API endpoint
for the acquire item operation typically these are written to a http.Request
*/
type AcquireItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ItemAcquireRequest
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

// WithTimeout adds the timeout to the acquire item params
func (o *AcquireItemParams) WithTimeout(timeout time.Duration) *AcquireItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the acquire item params
func (o *AcquireItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the acquire item params
func (o *AcquireItemParams) WithContext(ctx context.Context) *AcquireItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the acquire item params
func (o *AcquireItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the acquire item params
func (o *AcquireItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the acquire item params
func (o *AcquireItemParams) WithHTTPClient(client *http.Client) *AcquireItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the acquire item params
func (o *AcquireItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the acquire item params
func (o *AcquireItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AcquireItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the acquire item params
func (o *AcquireItemParams) WithBody(body *platformclientmodels.ItemAcquireRequest) *AcquireItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the acquire item params
func (o *AcquireItemParams) SetBody(body *platformclientmodels.ItemAcquireRequest) {
	o.Body = body
}

// WithItemID adds the itemID to the acquire item params
func (o *AcquireItemParams) WithItemID(itemID string) *AcquireItemParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the acquire item params
func (o *AcquireItemParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the acquire item params
func (o *AcquireItemParams) WithNamespace(namespace string) *AcquireItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the acquire item params
func (o *AcquireItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AcquireItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
