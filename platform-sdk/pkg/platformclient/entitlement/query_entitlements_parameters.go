// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

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
	"github.com/go-openapi/swag"
)

// Get the enum in QueryEntitlementsParams
const (
	QueryEntitlementsDEMOConstant     = "DEMO"
	QueryEntitlementsDLCConstant      = "DLC"
	QueryEntitlementsGAMEConstant     = "GAME"
	QueryEntitlementsSOFTWAREConstant = "SOFTWARE"
)

// Get the enum in QueryEntitlementsParams
const (
	QueryEntitlementsAPPConstant          = "APP"
	QueryEntitlementsCODEConstant         = "CODE"
	QueryEntitlementsENTITLEMENTConstant  = "ENTITLEMENT"
	QueryEntitlementsLOOTBOXConstant      = "LOOTBOX"
	QueryEntitlementsMEDIAConstant        = "MEDIA"
	QueryEntitlementsOPTIONBOXConstant    = "OPTIONBOX"
	QueryEntitlementsSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewQueryEntitlementsParams creates a new QueryEntitlementsParams object
// with the default values initialized.
func NewQueryEntitlementsParams() *QueryEntitlementsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlementsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryEntitlementsParamsWithTimeout creates a new QueryEntitlementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryEntitlementsParamsWithTimeout(timeout time.Duration) *QueryEntitlementsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlementsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryEntitlementsParamsWithContext creates a new QueryEntitlementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryEntitlementsParamsWithContext(ctx context.Context) *QueryEntitlementsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlementsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		Context: ctx,
	}
}

// NewQueryEntitlementsParamsWithHTTPClient creates a new QueryEntitlementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryEntitlementsParamsWithHTTPClient(client *http.Client) *QueryEntitlementsParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryEntitlementsParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*
QueryEntitlementsParams contains all the parameters to send to the API endpoint
for the query entitlements operation typically these are written to a http.Request
*/
type QueryEntitlementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*AppType*/
	AppType *string
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*EntitlementName*/
	EntitlementName *string
	/*ItemID*/
	ItemID []string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*UserID*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query entitlements params
func (o *QueryEntitlementsParams) WithTimeout(timeout time.Duration) *QueryEntitlementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query entitlements params
func (o *QueryEntitlementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query entitlements params
func (o *QueryEntitlementsParams) WithContext(ctx context.Context) *QueryEntitlementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query entitlements params
func (o *QueryEntitlementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query entitlements params
func (o *QueryEntitlementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query entitlements params
func (o *QueryEntitlementsParams) WithHTTPClient(client *http.Client) *QueryEntitlementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query entitlements params
func (o *QueryEntitlementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query entitlements params
func (o *QueryEntitlementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the query entitlements params
func (o *QueryEntitlementsParams) WithNamespace(namespace string) *QueryEntitlementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query entitlements params
func (o *QueryEntitlementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the query entitlements params
func (o *QueryEntitlementsParams) WithActiveOnly(activeOnly *bool) *QueryEntitlementsParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query entitlements params
func (o *QueryEntitlementsParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithAppType adds the appType to the query entitlements params
func (o *QueryEntitlementsParams) WithAppType(appType *string) *QueryEntitlementsParams {
	o.SetAppType(appType)
	return o
}

// SetAppType adds the appType to the query entitlements params
func (o *QueryEntitlementsParams) SetAppType(appType *string) {
	o.AppType = appType
}

// WithEntitlementClazz adds the entitlementClazz to the query entitlements params
func (o *QueryEntitlementsParams) WithEntitlementClazz(entitlementClazz *string) *QueryEntitlementsParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the query entitlements params
func (o *QueryEntitlementsParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithEntitlementName adds the entitlementName to the query entitlements params
func (o *QueryEntitlementsParams) WithEntitlementName(entitlementName *string) *QueryEntitlementsParams {
	o.SetEntitlementName(entitlementName)
	return o
}

// SetEntitlementName adds the entitlementName to the query entitlements params
func (o *QueryEntitlementsParams) SetEntitlementName(entitlementName *string) {
	o.EntitlementName = entitlementName
}

// WithItemID adds the itemID to the query entitlements params
func (o *QueryEntitlementsParams) WithItemID(itemID []string) *QueryEntitlementsParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the query entitlements params
func (o *QueryEntitlementsParams) SetItemID(itemID []string) {
	o.ItemID = itemID
}

// WithLimit adds the limit to the query entitlements params
func (o *QueryEntitlementsParams) WithLimit(limit *int32) *QueryEntitlementsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query entitlements params
func (o *QueryEntitlementsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query entitlements params
func (o *QueryEntitlementsParams) WithOffset(offset *int32) *QueryEntitlementsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query entitlements params
func (o *QueryEntitlementsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithUserID adds the userID to the query entitlements params
func (o *QueryEntitlementsParams) WithUserID(userID *string) *QueryEntitlementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query entitlements params
func (o *QueryEntitlementsParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryEntitlementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	if o.AppType != nil {

		// query param appType
		var qrAppType string
		if o.AppType != nil {
			qrAppType = *o.AppType
		}
		qAppType := qrAppType
		if qAppType != "" {
			if err := r.SetQueryParam("appType", qAppType); err != nil {
				return err
			}
		}

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

	if o.EntitlementName != nil {

		// query param entitlementName
		var qrEntitlementName string
		if o.EntitlementName != nil {
			qrEntitlementName = *o.EntitlementName
		}
		qEntitlementName := qrEntitlementName
		if qEntitlementName != "" {
			if err := r.SetQueryParam("entitlementName", qEntitlementName); err != nil {
				return err
			}
		}

	}

	valuesItemID := o.ItemID

	joinedItemID := swag.JoinByFormat(valuesItemID, "multi")
	// query array param itemId
	if err := r.SetQueryParam("itemId", joinedItemID...); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
