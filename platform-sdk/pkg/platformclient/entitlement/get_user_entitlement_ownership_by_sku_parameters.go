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

// Deprecated: 2025-07-16 - Use GetUserEntitlementOwnershipBySkuEntitlementClazz<EnumValue>Constant instead.
// Get the enum in GetUserEntitlementOwnershipBySkuParams
const (
	GetUserEntitlementOwnershipBySkuAPPConstant          = "APP"
	GetUserEntitlementOwnershipBySkuCODEConstant         = "CODE"
	GetUserEntitlementOwnershipBySkuENTITLEMENTConstant  = "ENTITLEMENT"
	GetUserEntitlementOwnershipBySkuLOOTBOXConstant      = "LOOTBOX"
	GetUserEntitlementOwnershipBySkuMEDIAConstant        = "MEDIA"
	GetUserEntitlementOwnershipBySkuOPTIONBOXConstant    = "OPTIONBOX"
	GetUserEntitlementOwnershipBySkuSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in GetUserEntitlementOwnershipBySkuParams
const (
	GetUserEntitlementOwnershipBySkuEntitlementClazzAPPConstant          = "APP"
	GetUserEntitlementOwnershipBySkuEntitlementClazzCODEConstant         = "CODE"
	GetUserEntitlementOwnershipBySkuEntitlementClazzENTITLEMENTConstant  = "ENTITLEMENT"
	GetUserEntitlementOwnershipBySkuEntitlementClazzLOOTBOXConstant      = "LOOTBOX"
	GetUserEntitlementOwnershipBySkuEntitlementClazzMEDIAConstant        = "MEDIA"
	GetUserEntitlementOwnershipBySkuEntitlementClazzOPTIONBOXConstant    = "OPTIONBOX"
	GetUserEntitlementOwnershipBySkuEntitlementClazzSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewGetUserEntitlementOwnershipBySkuParams creates a new GetUserEntitlementOwnershipBySkuParams object
// with the default values initialized.
func NewGetUserEntitlementOwnershipBySkuParams() *GetUserEntitlementOwnershipBySkuParams {
	var ()
	return &GetUserEntitlementOwnershipBySkuParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserEntitlementOwnershipBySkuParamsWithTimeout creates a new GetUserEntitlementOwnershipBySkuParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserEntitlementOwnershipBySkuParamsWithTimeout(timeout time.Duration) *GetUserEntitlementOwnershipBySkuParams {
	var ()
	return &GetUserEntitlementOwnershipBySkuParams{

		timeout: timeout,
	}
}

// NewGetUserEntitlementOwnershipBySkuParamsWithContext creates a new GetUserEntitlementOwnershipBySkuParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserEntitlementOwnershipBySkuParamsWithContext(ctx context.Context) *GetUserEntitlementOwnershipBySkuParams {
	var ()
	return &GetUserEntitlementOwnershipBySkuParams{

		Context: ctx,
	}
}

// NewGetUserEntitlementOwnershipBySkuParamsWithHTTPClient creates a new GetUserEntitlementOwnershipBySkuParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserEntitlementOwnershipBySkuParamsWithHTTPClient(client *http.Client) *GetUserEntitlementOwnershipBySkuParams {
	var ()
	return &GetUserEntitlementOwnershipBySkuParams{
		HTTPClient: client,
	}
}

/*GetUserEntitlementOwnershipBySkuParams contains all the parameters to send to the API endpoint
for the get user entitlement ownership by sku operation typically these are written to a http.Request
*/
type GetUserEntitlementOwnershipBySkuParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*Platform*/
	Platform *string
	/*Sku*/
	Sku string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) WithTimeout(timeout time.Duration) *GetUserEntitlementOwnershipBySkuParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) WithContext(ctx context.Context) *GetUserEntitlementOwnershipBySkuParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) WithHTTPClient(client *http.Client) *GetUserEntitlementOwnershipBySkuParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserEntitlementOwnershipBySkuParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) WithNamespace(namespace string) *GetUserEntitlementOwnershipBySkuParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) WithUserID(userID string) *GetUserEntitlementOwnershipBySkuParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEntitlementClazz adds the entitlementClazz to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) WithEntitlementClazz(entitlementClazz *string) *GetUserEntitlementOwnershipBySkuParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithPlatform adds the platform to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) WithPlatform(platform *string) *GetUserEntitlementOwnershipBySkuParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithSku adds the sku to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) WithSku(sku string) *GetUserEntitlementOwnershipBySkuParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the get user entitlement ownership by sku params
func (o *GetUserEntitlementOwnershipBySkuParams) SetSku(sku string) {
	o.Sku = sku
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserEntitlementOwnershipBySkuParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.EntitlementClazz != nil {

		// query param entitlementClazz
		var qrEntitlementClazz string
		if o.EntitlementClazz != nil {
			qrEntitlementClazz = *o.EntitlementClazz
		}
		qEntitlementClazz := qrEntitlementClazz
		if qEntitlementClazz != "" {
			if err := r.SetQueryParam("entitlementClazz", qEntitlementClazz); err != nil {
				return err
			}
		}

	}

	if o.Platform != nil {

		// query param platform
		var qrPlatform string
		if o.Platform != nil {
			qrPlatform = *o.Platform
		}
		qPlatform := qrPlatform
		if qPlatform != "" {
			if err := r.SetQueryParam("platform", qPlatform); err != nil {
				return err
			}
		}

	}

	// query param sku
	qrSku := o.Sku
	qSku := qrSku
	if qSku != "" {
		if err := r.SetQueryParam("sku", qSku); err != nil {
			return err
		}
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
