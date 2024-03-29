// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package currency

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

// NewDeleteCurrencyParams creates a new DeleteCurrencyParams object
// with the default values initialized.
func NewDeleteCurrencyParams() *DeleteCurrencyParams {
	var ()
	return &DeleteCurrencyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteCurrencyParamsWithTimeout creates a new DeleteCurrencyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteCurrencyParamsWithTimeout(timeout time.Duration) *DeleteCurrencyParams {
	var ()
	return &DeleteCurrencyParams{

		timeout: timeout,
	}
}

// NewDeleteCurrencyParamsWithContext creates a new DeleteCurrencyParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteCurrencyParamsWithContext(ctx context.Context) *DeleteCurrencyParams {
	var ()
	return &DeleteCurrencyParams{

		Context: ctx,
	}
}

// NewDeleteCurrencyParamsWithHTTPClient creates a new DeleteCurrencyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteCurrencyParamsWithHTTPClient(client *http.Client) *DeleteCurrencyParams {
	var ()
	return &DeleteCurrencyParams{
		HTTPClient: client,
	}
}

/*DeleteCurrencyParams contains all the parameters to send to the API endpoint
for the delete currency operation typically these are written to a http.Request
*/
type DeleteCurrencyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CurrencyCode
	  currencyCode

	*/
	CurrencyCode string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete currency params
func (o *DeleteCurrencyParams) WithTimeout(timeout time.Duration) *DeleteCurrencyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete currency params
func (o *DeleteCurrencyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete currency params
func (o *DeleteCurrencyParams) WithContext(ctx context.Context) *DeleteCurrencyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete currency params
func (o *DeleteCurrencyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete currency params
func (o *DeleteCurrencyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete currency params
func (o *DeleteCurrencyParams) WithHTTPClient(client *http.Client) *DeleteCurrencyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete currency params
func (o *DeleteCurrencyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete currency params
func (o *DeleteCurrencyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteCurrencyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCurrencyCode adds the currencyCode to the delete currency params
func (o *DeleteCurrencyParams) WithCurrencyCode(currencyCode string) *DeleteCurrencyParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the delete currency params
func (o *DeleteCurrencyParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the delete currency params
func (o *DeleteCurrencyParams) WithNamespace(namespace string) *DeleteCurrencyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete currency params
func (o *DeleteCurrencyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteCurrencyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param currencyCode
	if err := r.SetPathParam("currencyCode", o.CurrencyCode); err != nil {
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
