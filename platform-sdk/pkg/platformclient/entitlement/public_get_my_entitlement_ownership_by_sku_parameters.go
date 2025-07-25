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

// Deprecated: 2025-07-16 - Use PublicGetMyEntitlementOwnershipBySkuEntitlementClazz<EnumValue>Constant instead.
// Get the enum in PublicGetMyEntitlementOwnershipBySkuParams
const (
	PublicGetMyEntitlementOwnershipBySkuAPPConstant          = "APP"
	PublicGetMyEntitlementOwnershipBySkuCODEConstant         = "CODE"
	PublicGetMyEntitlementOwnershipBySkuENTITLEMENTConstant  = "ENTITLEMENT"
	PublicGetMyEntitlementOwnershipBySkuLOOTBOXConstant      = "LOOTBOX"
	PublicGetMyEntitlementOwnershipBySkuMEDIAConstant        = "MEDIA"
	PublicGetMyEntitlementOwnershipBySkuOPTIONBOXConstant    = "OPTIONBOX"
	PublicGetMyEntitlementOwnershipBySkuSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in PublicGetMyEntitlementOwnershipBySkuParams
const (
	PublicGetMyEntitlementOwnershipBySkuEntitlementClazzAPPConstant          = "APP"
	PublicGetMyEntitlementOwnershipBySkuEntitlementClazzCODEConstant         = "CODE"
	PublicGetMyEntitlementOwnershipBySkuEntitlementClazzENTITLEMENTConstant  = "ENTITLEMENT"
	PublicGetMyEntitlementOwnershipBySkuEntitlementClazzLOOTBOXConstant      = "LOOTBOX"
	PublicGetMyEntitlementOwnershipBySkuEntitlementClazzMEDIAConstant        = "MEDIA"
	PublicGetMyEntitlementOwnershipBySkuEntitlementClazzOPTIONBOXConstant    = "OPTIONBOX"
	PublicGetMyEntitlementOwnershipBySkuEntitlementClazzSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewPublicGetMyEntitlementOwnershipBySkuParams creates a new PublicGetMyEntitlementOwnershipBySkuParams object
// with the default values initialized.
func NewPublicGetMyEntitlementOwnershipBySkuParams() *PublicGetMyEntitlementOwnershipBySkuParams {
	var ()
	return &PublicGetMyEntitlementOwnershipBySkuParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMyEntitlementOwnershipBySkuParamsWithTimeout creates a new PublicGetMyEntitlementOwnershipBySkuParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMyEntitlementOwnershipBySkuParamsWithTimeout(timeout time.Duration) *PublicGetMyEntitlementOwnershipBySkuParams {
	var ()
	return &PublicGetMyEntitlementOwnershipBySkuParams{

		timeout: timeout,
	}
}

// NewPublicGetMyEntitlementOwnershipBySkuParamsWithContext creates a new PublicGetMyEntitlementOwnershipBySkuParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMyEntitlementOwnershipBySkuParamsWithContext(ctx context.Context) *PublicGetMyEntitlementOwnershipBySkuParams {
	var ()
	return &PublicGetMyEntitlementOwnershipBySkuParams{

		Context: ctx,
	}
}

// NewPublicGetMyEntitlementOwnershipBySkuParamsWithHTTPClient creates a new PublicGetMyEntitlementOwnershipBySkuParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMyEntitlementOwnershipBySkuParamsWithHTTPClient(client *http.Client) *PublicGetMyEntitlementOwnershipBySkuParams {
	var ()
	return &PublicGetMyEntitlementOwnershipBySkuParams{
		HTTPClient: client,
	}
}

/*PublicGetMyEntitlementOwnershipBySkuParams contains all the parameters to send to the API endpoint
for the public get my entitlement ownership by sku operation typically these are written to a http.Request
*/
type PublicGetMyEntitlementOwnershipBySkuParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*Sku*/
	Sku string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) WithTimeout(timeout time.Duration) *PublicGetMyEntitlementOwnershipBySkuParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) WithContext(ctx context.Context) *PublicGetMyEntitlementOwnershipBySkuParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) WithHTTPClient(client *http.Client) *PublicGetMyEntitlementOwnershipBySkuParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetMyEntitlementOwnershipBySkuParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) WithNamespace(namespace string) *PublicGetMyEntitlementOwnershipBySkuParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEntitlementClazz adds the entitlementClazz to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) WithEntitlementClazz(entitlementClazz *string) *PublicGetMyEntitlementOwnershipBySkuParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithSku adds the sku to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) WithSku(sku string) *PublicGetMyEntitlementOwnershipBySkuParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the public get my entitlement ownership by sku params
func (o *PublicGetMyEntitlementOwnershipBySkuParams) SetSku(sku string) {
	o.Sku = sku
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMyEntitlementOwnershipBySkuParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
