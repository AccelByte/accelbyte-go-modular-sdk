// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

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

// NewPublicFulfillGoogleIAPItemParams creates a new PublicFulfillGoogleIAPItemParams object
// with the default values initialized.
func NewPublicFulfillGoogleIAPItemParams() *PublicFulfillGoogleIAPItemParams {
	var ()
	return &PublicFulfillGoogleIAPItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicFulfillGoogleIAPItemParamsWithTimeout creates a new PublicFulfillGoogleIAPItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicFulfillGoogleIAPItemParamsWithTimeout(timeout time.Duration) *PublicFulfillGoogleIAPItemParams {
	var ()
	return &PublicFulfillGoogleIAPItemParams{

		timeout: timeout,
	}
}

// NewPublicFulfillGoogleIAPItemParamsWithContext creates a new PublicFulfillGoogleIAPItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicFulfillGoogleIAPItemParamsWithContext(ctx context.Context) *PublicFulfillGoogleIAPItemParams {
	var ()
	return &PublicFulfillGoogleIAPItemParams{

		Context: ctx,
	}
}

// NewPublicFulfillGoogleIAPItemParamsWithHTTPClient creates a new PublicFulfillGoogleIAPItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicFulfillGoogleIAPItemParamsWithHTTPClient(client *http.Client) *PublicFulfillGoogleIAPItemParams {
	var ()
	return &PublicFulfillGoogleIAPItemParams{
		HTTPClient: client,
	}
}

/*PublicFulfillGoogleIAPItemParams contains all the parameters to send to the API endpoint
for the public fulfill google iap item operation typically these are written to a http.Request
*/
type PublicFulfillGoogleIAPItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.GoogleIAPReceipt
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) WithTimeout(timeout time.Duration) *PublicFulfillGoogleIAPItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) WithContext(ctx context.Context) *PublicFulfillGoogleIAPItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) WithHTTPClient(client *http.Client) *PublicFulfillGoogleIAPItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicFulfillGoogleIAPItemParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) WithBody(body *platformclientmodels.GoogleIAPReceipt) *PublicFulfillGoogleIAPItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) SetBody(body *platformclientmodels.GoogleIAPReceipt) {
	o.Body = body
}

// WithNamespace adds the namespace to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) WithNamespace(namespace string) *PublicFulfillGoogleIAPItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) WithUserID(userID string) *PublicFulfillGoogleIAPItemParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public fulfill google iap item params
func (o *PublicFulfillGoogleIAPItemParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicFulfillGoogleIAPItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
