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

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewGrantUserEntitlementParams creates a new GrantUserEntitlementParams object
// with the default values initialized.
func NewGrantUserEntitlementParams() *GrantUserEntitlementParams {
	var ()
	return &GrantUserEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGrantUserEntitlementParamsWithTimeout creates a new GrantUserEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGrantUserEntitlementParamsWithTimeout(timeout time.Duration) *GrantUserEntitlementParams {
	var ()
	return &GrantUserEntitlementParams{

		timeout: timeout,
	}
}

// NewGrantUserEntitlementParamsWithContext creates a new GrantUserEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewGrantUserEntitlementParamsWithContext(ctx context.Context) *GrantUserEntitlementParams {
	var ()
	return &GrantUserEntitlementParams{

		Context: ctx,
	}
}

// NewGrantUserEntitlementParamsWithHTTPClient creates a new GrantUserEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGrantUserEntitlementParamsWithHTTPClient(client *http.Client) *GrantUserEntitlementParams {
	var ()
	return &GrantUserEntitlementParams{
		HTTPClient: client,
	}
}

/*GrantUserEntitlementParams contains all the parameters to send to the API endpoint
for the grant user entitlement operation typically these are written to a http.Request
*/
type GrantUserEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*platformclientmodels.EntitlementGrant
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

// WithTimeout adds the timeout to the grant user entitlement params
func (o *GrantUserEntitlementParams) WithTimeout(timeout time.Duration) *GrantUserEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the grant user entitlement params
func (o *GrantUserEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the grant user entitlement params
func (o *GrantUserEntitlementParams) WithContext(ctx context.Context) *GrantUserEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the grant user entitlement params
func (o *GrantUserEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the grant user entitlement params
func (o *GrantUserEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the grant user entitlement params
func (o *GrantUserEntitlementParams) WithHTTPClient(client *http.Client) *GrantUserEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the grant user entitlement params
func (o *GrantUserEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the grant user entitlement params
func (o *GrantUserEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GrantUserEntitlementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the grant user entitlement params
func (o *GrantUserEntitlementParams) WithBody(body []*platformclientmodels.EntitlementGrant) *GrantUserEntitlementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the grant user entitlement params
func (o *GrantUserEntitlementParams) SetBody(body []*platformclientmodels.EntitlementGrant) {
	o.Body = body
}

// WithNamespace adds the namespace to the grant user entitlement params
func (o *GrantUserEntitlementParams) WithNamespace(namespace string) *GrantUserEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the grant user entitlement params
func (o *GrantUserEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the grant user entitlement params
func (o *GrantUserEntitlementParams) WithUserID(userID string) *GrantUserEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the grant user entitlement params
func (o *GrantUserEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GrantUserEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
