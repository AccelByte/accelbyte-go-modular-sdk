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
	"github.com/go-openapi/swag"
)

// NewGetUserSubscriptionActivitiesParams creates a new GetUserSubscriptionActivitiesParams object
// with the default values initialized.
func NewGetUserSubscriptionActivitiesParams() *GetUserSubscriptionActivitiesParams {
	var (
		excludeSystemDefault = bool(false)
		limitDefault         = int32(20)
		offsetDefault        = int32(0)
	)
	return &GetUserSubscriptionActivitiesParams{
		ExcludeSystem: &excludeSystemDefault,
		Limit:         &limitDefault,
		Offset:        &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserSubscriptionActivitiesParamsWithTimeout creates a new GetUserSubscriptionActivitiesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserSubscriptionActivitiesParamsWithTimeout(timeout time.Duration) *GetUserSubscriptionActivitiesParams {
	var (
		excludeSystemDefault = bool(false)
		limitDefault         = int32(20)
		offsetDefault        = int32(0)
	)
	return &GetUserSubscriptionActivitiesParams{
		ExcludeSystem: &excludeSystemDefault,
		Limit:         &limitDefault,
		Offset:        &offsetDefault,

		timeout: timeout,
	}
}

// NewGetUserSubscriptionActivitiesParamsWithContext creates a new GetUserSubscriptionActivitiesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserSubscriptionActivitiesParamsWithContext(ctx context.Context) *GetUserSubscriptionActivitiesParams {
	var (
		excludeSystemDefault = bool(false)
		limitDefault         = int32(20)
		offsetDefault        = int32(0)
	)
	return &GetUserSubscriptionActivitiesParams{
		ExcludeSystem: &excludeSystemDefault,
		Limit:         &limitDefault,
		Offset:        &offsetDefault,

		Context: ctx,
	}
}

// NewGetUserSubscriptionActivitiesParamsWithHTTPClient creates a new GetUserSubscriptionActivitiesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserSubscriptionActivitiesParamsWithHTTPClient(client *http.Client) *GetUserSubscriptionActivitiesParams {
	var (
		excludeSystemDefault = bool(false)
		limitDefault         = int32(20)
		offsetDefault        = int32(0)
	)
	return &GetUserSubscriptionActivitiesParams{
		ExcludeSystem: &excludeSystemDefault,
		Limit:         &limitDefault,
		Offset:        &offsetDefault,
		HTTPClient:    client,
	}
}

/*GetUserSubscriptionActivitiesParams contains all the parameters to send to the API endpoint
for the get user subscription activities operation typically these are written to a http.Request
*/
type GetUserSubscriptionActivitiesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*ExcludeSystem*/
	ExcludeSystem *bool
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*SubscriptionID*/
	SubscriptionID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) WithTimeout(timeout time.Duration) *GetUserSubscriptionActivitiesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) WithContext(ctx context.Context) *GetUserSubscriptionActivitiesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) WithHTTPClient(client *http.Client) *GetUserSubscriptionActivitiesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserSubscriptionActivitiesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) WithNamespace(namespace string) *GetUserSubscriptionActivitiesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) WithUserID(userID string) *GetUserSubscriptionActivitiesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithExcludeSystem adds the excludeSystem to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) WithExcludeSystem(excludeSystem *bool) *GetUserSubscriptionActivitiesParams {
	o.SetExcludeSystem(excludeSystem)
	return o
}

// SetExcludeSystem adds the excludeSystem to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetExcludeSystem(excludeSystem *bool) {
	o.ExcludeSystem = excludeSystem
}

// WithLimit adds the limit to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) WithLimit(limit *int32) *GetUserSubscriptionActivitiesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) WithOffset(offset *int32) *GetUserSubscriptionActivitiesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithSubscriptionID adds the subscriptionID to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) WithSubscriptionID(subscriptionID *string) *GetUserSubscriptionActivitiesParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the get user subscription activities params
func (o *GetUserSubscriptionActivitiesParams) SetSubscriptionID(subscriptionID *string) {
	o.SubscriptionID = subscriptionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserSubscriptionActivitiesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.ExcludeSystem != nil {

		// query param excludeSystem
		var qrExcludeSystem bool
		if o.ExcludeSystem != nil {
			qrExcludeSystem = *o.ExcludeSystem
		}
		qExcludeSystem := swag.FormatBool(qrExcludeSystem)
		if qExcludeSystem != "" {
			if err := r.SetQueryParam("excludeSystem", qExcludeSystem); err != nil {
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

	if o.SubscriptionID != nil {

		// query param subscriptionId
		var qrSubscriptionID string
		if o.SubscriptionID != nil {
			qrSubscriptionID = *o.SubscriptionID
		}
		qSubscriptionID := qrSubscriptionID
		if qSubscriptionID != "" {
			if err := r.SetQueryParam("subscriptionId", qSubscriptionID); err != nil {
				return err
			}
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
