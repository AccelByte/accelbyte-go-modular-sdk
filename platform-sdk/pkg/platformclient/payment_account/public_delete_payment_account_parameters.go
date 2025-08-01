// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_account

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

// Deprecated: 2025-07-16 - Use PublicDeletePaymentAccountType<EnumValue>Constant instead.
// Get the enum in PublicDeletePaymentAccountParams
const (
	PublicDeletePaymentAccountCardConstant   = "card"
	PublicDeletePaymentAccountPaypalConstant = "paypal"
)

// Get the enum in PublicDeletePaymentAccountParams
const (
	PublicDeletePaymentAccountTypeCardConstant   = "card"
	PublicDeletePaymentAccountTypePaypalConstant = "paypal"
)

// NewPublicDeletePaymentAccountParams creates a new PublicDeletePaymentAccountParams object
// with the default values initialized.
func NewPublicDeletePaymentAccountParams() *PublicDeletePaymentAccountParams {
	var ()
	return &PublicDeletePaymentAccountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDeletePaymentAccountParamsWithTimeout creates a new PublicDeletePaymentAccountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDeletePaymentAccountParamsWithTimeout(timeout time.Duration) *PublicDeletePaymentAccountParams {
	var ()
	return &PublicDeletePaymentAccountParams{

		timeout: timeout,
	}
}

// NewPublicDeletePaymentAccountParamsWithContext creates a new PublicDeletePaymentAccountParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDeletePaymentAccountParamsWithContext(ctx context.Context) *PublicDeletePaymentAccountParams {
	var ()
	return &PublicDeletePaymentAccountParams{

		Context: ctx,
	}
}

// NewPublicDeletePaymentAccountParamsWithHTTPClient creates a new PublicDeletePaymentAccountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDeletePaymentAccountParamsWithHTTPClient(client *http.Client) *PublicDeletePaymentAccountParams {
	var ()
	return &PublicDeletePaymentAccountParams{
		HTTPClient: client,
	}
}

/*PublicDeletePaymentAccountParams contains all the parameters to send to the API endpoint
for the public delete payment account operation typically these are written to a http.Request
*/
type PublicDeletePaymentAccountParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID
	  payment account id

	*/
	ID string
	/*Namespace*/
	Namespace string
	/*Type
	  payment account type

	*/
	Type string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) WithTimeout(timeout time.Duration) *PublicDeletePaymentAccountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) WithContext(ctx context.Context) *PublicDeletePaymentAccountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) WithHTTPClient(client *http.Client) *PublicDeletePaymentAccountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicDeletePaymentAccountParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) WithID(idVar string) *PublicDeletePaymentAccountParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) WithNamespace(namespace string) *PublicDeletePaymentAccountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithType adds the typeVar to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) WithType(typeVar string) *PublicDeletePaymentAccountParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) SetType(typeVar string) {
	o.Type = typeVar
}

// WithUserID adds the userID to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) WithUserID(userID string) *PublicDeletePaymentAccountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public delete payment account params
func (o *PublicDeletePaymentAccountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDeletePaymentAccountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param type
	if err := r.SetPathParam("type", o.Type); err != nil {
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
