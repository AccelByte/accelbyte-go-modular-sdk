// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package entitlement

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

// NewPublicGetUserEntitlementParams creates a new PublicGetUserEntitlementParams object
// with the default values initialized.
func NewPublicGetUserEntitlementParams() *PublicGetUserEntitlementParams {
	var ()
	return &PublicGetUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserEntitlementParamsWithTimeout creates a new PublicGetUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserEntitlementParamsWithTimeout(timeout time.Duration) *PublicGetUserEntitlementParams {
	var ()
	return &PublicGetUserEntitlementParams{

		timeout: timeout,
	}
}

// NewPublicGetUserEntitlementParamsWithContext creates a new PublicGetUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserEntitlementParamsWithContext(ctx context.Context) *PublicGetUserEntitlementParams {
	var ()
	return &PublicGetUserEntitlementParams{

		Context: ctx,
	}
}

// NewPublicGetUserEntitlementParamsWithHTTPClient creates a new PublicGetUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserEntitlementParamsWithHTTPClient(client *http.Client) *PublicGetUserEntitlementParams {
	var ()
	return &PublicGetUserEntitlementParams{
		HTTPClient: client,
	}
}

/*PublicGetUserEntitlementParams contains all the parameters to send to the API endpoint
for the public get user entitlement operation typically these are written to a http.Request
*/
type PublicGetUserEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EntitlementID*/
	EntitlementID string
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

// WithTimeout adds the timeout to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) WithTimeout(timeout time.Duration) *PublicGetUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) WithContext(ctx context.Context) *PublicGetUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) WithHTTPClient(client *http.Client) *PublicGetUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserEntitlementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEntitlementID adds the entitlementID to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) WithEntitlementID(entitlementID string) *PublicGetUserEntitlementParams {
	o.SetEntitlementID(entitlementID)
	return o
}

// SetEntitlementID adds the entitlementId to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) SetEntitlementID(entitlementID string) {
	o.EntitlementID = entitlementID
}

// WithNamespace adds the namespace to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) WithNamespace(namespace string) *PublicGetUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) WithUserID(userID string) *PublicGetUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user entitlement params
func (o *PublicGetUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param entitlementId
	if err := r.SetPathParam("entitlementId", o.EntitlementID); err != nil {
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
