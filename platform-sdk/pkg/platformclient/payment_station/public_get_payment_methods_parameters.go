// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_station

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

// NewPublicGetPaymentMethodsParams creates a new PublicGetPaymentMethodsParams object
// with the default values initialized.
func NewPublicGetPaymentMethodsParams() *PublicGetPaymentMethodsParams {
	var ()
	return &PublicGetPaymentMethodsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetPaymentMethodsParamsWithTimeout creates a new PublicGetPaymentMethodsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetPaymentMethodsParamsWithTimeout(timeout time.Duration) *PublicGetPaymentMethodsParams {
	var ()
	return &PublicGetPaymentMethodsParams{

		timeout: timeout,
	}
}

// NewPublicGetPaymentMethodsParamsWithContext creates a new PublicGetPaymentMethodsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetPaymentMethodsParamsWithContext(ctx context.Context) *PublicGetPaymentMethodsParams {
	var ()
	return &PublicGetPaymentMethodsParams{

		Context: ctx,
	}
}

// NewPublicGetPaymentMethodsParamsWithHTTPClient creates a new PublicGetPaymentMethodsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetPaymentMethodsParamsWithHTTPClient(client *http.Client) *PublicGetPaymentMethodsParams {
	var ()
	return &PublicGetPaymentMethodsParams{
		HTTPClient: client,
	}
}

/*PublicGetPaymentMethodsParams contains all the parameters to send to the API endpoint
for the public get payment methods operation typically these are written to a http.Request
*/
type PublicGetPaymentMethodsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*PaymentOrderNo*/
	PaymentOrderNo string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) WithTimeout(timeout time.Duration) *PublicGetPaymentMethodsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) WithContext(ctx context.Context) *PublicGetPaymentMethodsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) WithHTTPClient(client *http.Client) *PublicGetPaymentMethodsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) WithNamespace(namespace string) *PublicGetPaymentMethodsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPaymentOrderNo adds the paymentOrderNo to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) WithPaymentOrderNo(paymentOrderNo string) *PublicGetPaymentMethodsParams {
	o.SetPaymentOrderNo(paymentOrderNo)
	return o
}

// SetPaymentOrderNo adds the paymentOrderNo to the public get payment methods params
func (o *PublicGetPaymentMethodsParams) SetPaymentOrderNo(paymentOrderNo string) {
	o.PaymentOrderNo = paymentOrderNo
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetPaymentMethodsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param paymentOrderNo
	qrPaymentOrderNo := o.PaymentOrderNo
	qPaymentOrderNo := qrPaymentOrderNo
	if qPaymentOrderNo != "" {
		if err := r.SetQueryParam("paymentOrderNo", qPaymentOrderNo); err != nil {
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
