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

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewPublicCancelSubscriptionParams creates a new PublicCancelSubscriptionParams object
// with the default values initialized.
func NewPublicCancelSubscriptionParams() *PublicCancelSubscriptionParams {
	var ()
	return &PublicCancelSubscriptionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCancelSubscriptionParamsWithTimeout creates a new PublicCancelSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCancelSubscriptionParamsWithTimeout(timeout time.Duration) *PublicCancelSubscriptionParams {
	var ()
	return &PublicCancelSubscriptionParams{

		timeout: timeout,
	}
}

// NewPublicCancelSubscriptionParamsWithContext creates a new PublicCancelSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCancelSubscriptionParamsWithContext(ctx context.Context) *PublicCancelSubscriptionParams {
	var ()
	return &PublicCancelSubscriptionParams{

		Context: ctx,
	}
}

// NewPublicCancelSubscriptionParamsWithHTTPClient creates a new PublicCancelSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCancelSubscriptionParamsWithHTTPClient(client *http.Client) *PublicCancelSubscriptionParams {
	var ()
	return &PublicCancelSubscriptionParams{
		HTTPClient: client,
	}
}

/*PublicCancelSubscriptionParams contains all the parameters to send to the API endpoint
for the public cancel subscription operation typically these are written to a http.Request
*/
type PublicCancelSubscriptionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CancelRequest
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

// WithTimeout adds the timeout to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) WithTimeout(timeout time.Duration) *PublicCancelSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) WithContext(ctx context.Context) *PublicCancelSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) WithHTTPClient(client *http.Client) *PublicCancelSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicCancelSubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) WithBody(body *platformclientmodels.CancelRequest) *PublicCancelSubscriptionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) SetBody(body *platformclientmodels.CancelRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) WithNamespace(namespace string) *PublicCancelSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) WithSubscriptionID(subscriptionID string) *PublicCancelSubscriptionParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) WithUserID(userID string) *PublicCancelSubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public cancel subscription params
func (o *PublicCancelSubscriptionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCancelSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
