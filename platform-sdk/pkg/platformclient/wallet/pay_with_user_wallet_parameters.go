// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

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

// NewPayWithUserWalletParams creates a new PayWithUserWalletParams object
// with the default values initialized.
func NewPayWithUserWalletParams() *PayWithUserWalletParams {
	var ()
	return &PayWithUserWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPayWithUserWalletParamsWithTimeout creates a new PayWithUserWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPayWithUserWalletParamsWithTimeout(timeout time.Duration) *PayWithUserWalletParams {
	var ()
	return &PayWithUserWalletParams{

		timeout: timeout,
	}
}

// NewPayWithUserWalletParamsWithContext creates a new PayWithUserWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewPayWithUserWalletParamsWithContext(ctx context.Context) *PayWithUserWalletParams {
	var ()
	return &PayWithUserWalletParams{

		Context: ctx,
	}
}

// NewPayWithUserWalletParamsWithHTTPClient creates a new PayWithUserWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPayWithUserWalletParamsWithHTTPClient(client *http.Client) *PayWithUserWalletParams {
	var ()
	return &PayWithUserWalletParams{
		HTTPClient: client,
	}
}

/*PayWithUserWalletParams contains all the parameters to send to the API endpoint
for the pay with user wallet operation typically these are written to a http.Request
*/
type PayWithUserWalletParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PaymentRequest
	/*CurrencyCode*/
	CurrencyCode string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  userId

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the pay with user wallet params
func (o *PayWithUserWalletParams) WithTimeout(timeout time.Duration) *PayWithUserWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the pay with user wallet params
func (o *PayWithUserWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the pay with user wallet params
func (o *PayWithUserWalletParams) WithContext(ctx context.Context) *PayWithUserWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the pay with user wallet params
func (o *PayWithUserWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the pay with user wallet params
func (o *PayWithUserWalletParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the pay with user wallet params
func (o *PayWithUserWalletParams) WithHTTPClient(client *http.Client) *PayWithUserWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the pay with user wallet params
func (o *PayWithUserWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the pay with user wallet params
func (o *PayWithUserWalletParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PayWithUserWalletParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the pay with user wallet params
func (o *PayWithUserWalletParams) WithBody(body *platformclientmodels.PaymentRequest) *PayWithUserWalletParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the pay with user wallet params
func (o *PayWithUserWalletParams) SetBody(body *platformclientmodels.PaymentRequest) {
	o.Body = body
}

// WithCurrencyCode adds the currencyCode to the pay with user wallet params
func (o *PayWithUserWalletParams) WithCurrencyCode(currencyCode string) *PayWithUserWalletParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the pay with user wallet params
func (o *PayWithUserWalletParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the pay with user wallet params
func (o *PayWithUserWalletParams) WithNamespace(namespace string) *PayWithUserWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the pay with user wallet params
func (o *PayWithUserWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the pay with user wallet params
func (o *PayWithUserWalletParams) WithUserID(userID string) *PayWithUserWalletParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the pay with user wallet params
func (o *PayWithUserWalletParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PayWithUserWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param currencyCode
	if err := r.SetPathParam("currencyCode", o.CurrencyCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
