// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

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

// NewAnonymizeEntitlementParams creates a new AnonymizeEntitlementParams object
// with the default values initialized.
func NewAnonymizeEntitlementParams() *AnonymizeEntitlementParams {
	var ()
	return &AnonymizeEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAnonymizeEntitlementParamsWithTimeout creates a new AnonymizeEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAnonymizeEntitlementParamsWithTimeout(timeout time.Duration) *AnonymizeEntitlementParams {
	var ()
	return &AnonymizeEntitlementParams{

		timeout: timeout,
	}
}

// NewAnonymizeEntitlementParamsWithContext creates a new AnonymizeEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewAnonymizeEntitlementParamsWithContext(ctx context.Context) *AnonymizeEntitlementParams {
	var ()
	return &AnonymizeEntitlementParams{

		Context: ctx,
	}
}

// NewAnonymizeEntitlementParamsWithHTTPClient creates a new AnonymizeEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAnonymizeEntitlementParamsWithHTTPClient(client *http.Client) *AnonymizeEntitlementParams {
	var ()
	return &AnonymizeEntitlementParams{
		HTTPClient: client,
	}
}

/*AnonymizeEntitlementParams contains all the parameters to send to the API endpoint
for the anonymize entitlement operation typically these are written to a http.Request
*/
type AnonymizeEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) WithTimeout(timeout time.Duration) *AnonymizeEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) WithContext(ctx context.Context) *AnonymizeEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) WithHTTPClient(client *http.Client) *AnonymizeEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AnonymizeEntitlementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) WithNamespace(namespace string) *AnonymizeEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) WithUserID(userID string) *AnonymizeEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the anonymize entitlement params
func (o *AnonymizeEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AnonymizeEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
