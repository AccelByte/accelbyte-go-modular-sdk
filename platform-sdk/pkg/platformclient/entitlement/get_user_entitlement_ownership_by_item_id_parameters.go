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

// Deprecated: 2025-07-16 - Use GetUserEntitlementOwnershipByItemIDEntitlementClazz<EnumValue>Constant instead.
// Get the enum in GetUserEntitlementOwnershipByItemIDParams
const (
	GetUserEntitlementOwnershipByItemIDAPPConstant          = "APP"
	GetUserEntitlementOwnershipByItemIDCODEConstant         = "CODE"
	GetUserEntitlementOwnershipByItemIDENTITLEMENTConstant  = "ENTITLEMENT"
	GetUserEntitlementOwnershipByItemIDLOOTBOXConstant      = "LOOTBOX"
	GetUserEntitlementOwnershipByItemIDMEDIAConstant        = "MEDIA"
	GetUserEntitlementOwnershipByItemIDOPTIONBOXConstant    = "OPTIONBOX"
	GetUserEntitlementOwnershipByItemIDSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in GetUserEntitlementOwnershipByItemIDParams
const (
	GetUserEntitlementOwnershipByItemIDEntitlementClazzAPPConstant          = "APP"
	GetUserEntitlementOwnershipByItemIDEntitlementClazzCODEConstant         = "CODE"
	GetUserEntitlementOwnershipByItemIDEntitlementClazzENTITLEMENTConstant  = "ENTITLEMENT"
	GetUserEntitlementOwnershipByItemIDEntitlementClazzLOOTBOXConstant      = "LOOTBOX"
	GetUserEntitlementOwnershipByItemIDEntitlementClazzMEDIAConstant        = "MEDIA"
	GetUserEntitlementOwnershipByItemIDEntitlementClazzOPTIONBOXConstant    = "OPTIONBOX"
	GetUserEntitlementOwnershipByItemIDEntitlementClazzSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewGetUserEntitlementOwnershipByItemIDParams creates a new GetUserEntitlementOwnershipByItemIDParams object
// with the default values initialized.
func NewGetUserEntitlementOwnershipByItemIDParams() *GetUserEntitlementOwnershipByItemIDParams {
	var ()
	return &GetUserEntitlementOwnershipByItemIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserEntitlementOwnershipByItemIDParamsWithTimeout creates a new GetUserEntitlementOwnershipByItemIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserEntitlementOwnershipByItemIDParamsWithTimeout(timeout time.Duration) *GetUserEntitlementOwnershipByItemIDParams {
	var ()
	return &GetUserEntitlementOwnershipByItemIDParams{

		timeout: timeout,
	}
}

// NewGetUserEntitlementOwnershipByItemIDParamsWithContext creates a new GetUserEntitlementOwnershipByItemIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserEntitlementOwnershipByItemIDParamsWithContext(ctx context.Context) *GetUserEntitlementOwnershipByItemIDParams {
	var ()
	return &GetUserEntitlementOwnershipByItemIDParams{

		Context: ctx,
	}
}

// NewGetUserEntitlementOwnershipByItemIDParamsWithHTTPClient creates a new GetUserEntitlementOwnershipByItemIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserEntitlementOwnershipByItemIDParamsWithHTTPClient(client *http.Client) *GetUserEntitlementOwnershipByItemIDParams {
	var ()
	return &GetUserEntitlementOwnershipByItemIDParams{
		HTTPClient: client,
	}
}

/*GetUserEntitlementOwnershipByItemIDParams contains all the parameters to send to the API endpoint
for the get user entitlement ownership by item id operation typically these are written to a http.Request
*/
type GetUserEntitlementOwnershipByItemIDParams struct {

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
	/*ItemID*/
	ItemID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) WithTimeout(timeout time.Duration) *GetUserEntitlementOwnershipByItemIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) WithContext(ctx context.Context) *GetUserEntitlementOwnershipByItemIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) WithHTTPClient(client *http.Client) *GetUserEntitlementOwnershipByItemIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserEntitlementOwnershipByItemIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) WithNamespace(namespace string) *GetUserEntitlementOwnershipByItemIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) WithUserID(userID string) *GetUserEntitlementOwnershipByItemIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEntitlementClazz adds the entitlementClazz to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) WithEntitlementClazz(entitlementClazz *string) *GetUserEntitlementOwnershipByItemIDParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithPlatform adds the platform to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) WithPlatform(platform *string) *GetUserEntitlementOwnershipByItemIDParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithItemID adds the itemID to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) WithItemID(itemID string) *GetUserEntitlementOwnershipByItemIDParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the get user entitlement ownership by item id params
func (o *GetUserEntitlementOwnershipByItemIDParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserEntitlementOwnershipByItemIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param itemId
	qrItemID := o.ItemID
	qItemID := qrItemID
	if qItemID != "" {
		if err := r.SetQueryParam("itemId", qItemID); err != nil {
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
