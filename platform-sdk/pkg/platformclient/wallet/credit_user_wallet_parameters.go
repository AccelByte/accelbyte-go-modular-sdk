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

// NewCreditUserWalletParams creates a new CreditUserWalletParams object
// with the default values initialized.
func NewCreditUserWalletParams() *CreditUserWalletParams {
	var ()
	return &CreditUserWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreditUserWalletParamsWithTimeout creates a new CreditUserWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreditUserWalletParamsWithTimeout(timeout time.Duration) *CreditUserWalletParams {
	var ()
	return &CreditUserWalletParams{

		timeout: timeout,
	}
}

// NewCreditUserWalletParamsWithContext creates a new CreditUserWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreditUserWalletParamsWithContext(ctx context.Context) *CreditUserWalletParams {
	var ()
	return &CreditUserWalletParams{

		Context: ctx,
	}
}

// NewCreditUserWalletParamsWithHTTPClient creates a new CreditUserWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreditUserWalletParamsWithHTTPClient(client *http.Client) *CreditUserWalletParams {
	var ()
	return &CreditUserWalletParams{
		HTTPClient: client,
	}
}

/*CreditUserWalletParams contains all the parameters to send to the API endpoint
for the credit user wallet operation typically these are written to a http.Request
*/
type CreditUserWalletParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CreditRequest
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

// WithTimeout adds the timeout to the credit user wallet params
func (o *CreditUserWalletParams) WithTimeout(timeout time.Duration) *CreditUserWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the credit user wallet params
func (o *CreditUserWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the credit user wallet params
func (o *CreditUserWalletParams) WithContext(ctx context.Context) *CreditUserWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the credit user wallet params
func (o *CreditUserWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the credit user wallet params
func (o *CreditUserWalletParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the credit user wallet params
func (o *CreditUserWalletParams) WithHTTPClient(client *http.Client) *CreditUserWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the credit user wallet params
func (o *CreditUserWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the credit user wallet params
func (o *CreditUserWalletParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreditUserWalletParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the credit user wallet params
func (o *CreditUserWalletParams) WithBody(body *platformclientmodels.CreditRequest) *CreditUserWalletParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the credit user wallet params
func (o *CreditUserWalletParams) SetBody(body *platformclientmodels.CreditRequest) {
	o.Body = body
}

// WithCurrencyCode adds the currencyCode to the credit user wallet params
func (o *CreditUserWalletParams) WithCurrencyCode(currencyCode string) *CreditUserWalletParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the credit user wallet params
func (o *CreditUserWalletParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the credit user wallet params
func (o *CreditUserWalletParams) WithNamespace(namespace string) *CreditUserWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the credit user wallet params
func (o *CreditUserWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the credit user wallet params
func (o *CreditUserWalletParams) WithUserID(userID string) *CreditUserWalletParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the credit user wallet params
func (o *CreditUserWalletParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CreditUserWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
