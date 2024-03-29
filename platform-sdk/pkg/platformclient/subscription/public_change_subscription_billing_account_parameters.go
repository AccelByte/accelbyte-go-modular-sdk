// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package subscription

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

// NewPublicChangeSubscriptionBillingAccountParams creates a new PublicChangeSubscriptionBillingAccountParams object
// with the default values initialized.
func NewPublicChangeSubscriptionBillingAccountParams() *PublicChangeSubscriptionBillingAccountParams {
	var ()
	return &PublicChangeSubscriptionBillingAccountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicChangeSubscriptionBillingAccountParamsWithTimeout creates a new PublicChangeSubscriptionBillingAccountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicChangeSubscriptionBillingAccountParamsWithTimeout(timeout time.Duration) *PublicChangeSubscriptionBillingAccountParams {
	var ()
	return &PublicChangeSubscriptionBillingAccountParams{

		timeout: timeout,
	}
}

// NewPublicChangeSubscriptionBillingAccountParamsWithContext creates a new PublicChangeSubscriptionBillingAccountParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicChangeSubscriptionBillingAccountParamsWithContext(ctx context.Context) *PublicChangeSubscriptionBillingAccountParams {
	var ()
	return &PublicChangeSubscriptionBillingAccountParams{

		Context: ctx,
	}
}

// NewPublicChangeSubscriptionBillingAccountParamsWithHTTPClient creates a new PublicChangeSubscriptionBillingAccountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicChangeSubscriptionBillingAccountParamsWithHTTPClient(client *http.Client) *PublicChangeSubscriptionBillingAccountParams {
	var ()
	return &PublicChangeSubscriptionBillingAccountParams{
		HTTPClient: client,
	}
}

/*PublicChangeSubscriptionBillingAccountParams contains all the parameters to send to the API endpoint
for the public change subscription billing account operation typically these are written to a http.Request
*/
type PublicChangeSubscriptionBillingAccountParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*SubscriptionID*/
	SubscriptionID string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) WithTimeout(timeout time.Duration) *PublicChangeSubscriptionBillingAccountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) WithContext(ctx context.Context) *PublicChangeSubscriptionBillingAccountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) WithHTTPClient(client *http.Client) *PublicChangeSubscriptionBillingAccountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicChangeSubscriptionBillingAccountParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) WithNamespace(namespace string) *PublicChangeSubscriptionBillingAccountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) WithSubscriptionID(subscriptionID string) *PublicChangeSubscriptionBillingAccountParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) WithUserID(userID string) *PublicChangeSubscriptionBillingAccountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public change subscription billing account params
func (o *PublicChangeSubscriptionBillingAccountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicChangeSubscriptionBillingAccountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param subscriptionId
	if err := r.SetPathParam("subscriptionId", o.SubscriptionID); err != nil {
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
