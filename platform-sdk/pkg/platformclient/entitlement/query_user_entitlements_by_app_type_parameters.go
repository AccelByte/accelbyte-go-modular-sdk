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
	"github.com/go-openapi/swag"
)

// Deprecated: 2025-07-16 - Use QueryUserEntitlementsByAppTypeAppType<EnumValue>Constant instead.
// Get the enum in QueryUserEntitlementsByAppTypeParams
const (
	QueryUserEntitlementsByAppTypeDEMOConstant     = "DEMO"
	QueryUserEntitlementsByAppTypeDLCConstant      = "DLC"
	QueryUserEntitlementsByAppTypeGAMEConstant     = "GAME"
	QueryUserEntitlementsByAppTypeSOFTWAREConstant = "SOFTWARE"
)

// Get the enum in QueryUserEntitlementsByAppTypeParams
const (
	QueryUserEntitlementsByAppTypeAppTypeDEMOConstant     = "DEMO"
	QueryUserEntitlementsByAppTypeAppTypeDLCConstant      = "DLC"
	QueryUserEntitlementsByAppTypeAppTypeGAMEConstant     = "GAME"
	QueryUserEntitlementsByAppTypeAppTypeSOFTWAREConstant = "SOFTWARE"
)

// NewQueryUserEntitlementsByAppTypeParams creates a new QueryUserEntitlementsByAppTypeParams object
// with the default values initialized.
func NewQueryUserEntitlementsByAppTypeParams() *QueryUserEntitlementsByAppTypeParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryUserEntitlementsByAppTypeParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryUserEntitlementsByAppTypeParamsWithTimeout creates a new QueryUserEntitlementsByAppTypeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryUserEntitlementsByAppTypeParamsWithTimeout(timeout time.Duration) *QueryUserEntitlementsByAppTypeParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryUserEntitlementsByAppTypeParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryUserEntitlementsByAppTypeParamsWithContext creates a new QueryUserEntitlementsByAppTypeParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryUserEntitlementsByAppTypeParamsWithContext(ctx context.Context) *QueryUserEntitlementsByAppTypeParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryUserEntitlementsByAppTypeParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		Context: ctx,
	}
}

// NewQueryUserEntitlementsByAppTypeParamsWithHTTPClient creates a new QueryUserEntitlementsByAppTypeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryUserEntitlementsByAppTypeParamsWithHTTPClient(client *http.Client) *QueryUserEntitlementsByAppTypeParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryUserEntitlementsByAppTypeParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryUserEntitlementsByAppTypeParams contains all the parameters to send to the API endpoint
for the query user entitlements by app type operation typically these are written to a http.Request
*/
type QueryUserEntitlementsByAppTypeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*AppType*/
	AppType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) WithTimeout(timeout time.Duration) *QueryUserEntitlementsByAppTypeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) WithContext(ctx context.Context) *QueryUserEntitlementsByAppTypeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) WithHTTPClient(client *http.Client) *QueryUserEntitlementsByAppTypeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryUserEntitlementsByAppTypeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) WithNamespace(namespace string) *QueryUserEntitlementsByAppTypeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) WithUserID(userID string) *QueryUserEntitlementsByAppTypeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithActiveOnly adds the activeOnly to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) WithActiveOnly(activeOnly *bool) *QueryUserEntitlementsByAppTypeParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithLimit adds the limit to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) WithLimit(limit *int32) *QueryUserEntitlementsByAppTypeParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) WithOffset(offset *int32) *QueryUserEntitlementsByAppTypeParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithAppType adds the appType to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) WithAppType(appType string) *QueryUserEntitlementsByAppTypeParams {
	o.SetAppType(appType)
	return o
}

// SetAppType adds the appType to the query user entitlements by app type params
func (o *QueryUserEntitlementsByAppTypeParams) SetAppType(appType string) {
	o.AppType = appType
}

// WriteToRequest writes these params to a swagger request
func (o *QueryUserEntitlementsByAppTypeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param appType
	qrAppType := o.AppType
	qAppType := qrAppType
	if qAppType != "" {
		if err := r.SetQueryParam("appType", qAppType); err != nil {
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
