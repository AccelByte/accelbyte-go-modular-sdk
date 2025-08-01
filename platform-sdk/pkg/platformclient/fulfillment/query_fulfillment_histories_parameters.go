// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

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

// Deprecated: 2025-07-16 - Use QueryFulfillmentHistoriesStatus<EnumValue>Constant instead.
// Get the enum in QueryFulfillmentHistoriesParams
const (
	QueryFulfillmentHistoriesFAILConstant    = "FAIL"
	QueryFulfillmentHistoriesSUCCESSConstant = "SUCCESS"
)

// Get the enum in QueryFulfillmentHistoriesParams
const (
	QueryFulfillmentHistoriesStatusFAILConstant    = "FAIL"
	QueryFulfillmentHistoriesStatusSUCCESSConstant = "SUCCESS"
)

// NewQueryFulfillmentHistoriesParams creates a new QueryFulfillmentHistoriesParams object
// with the default values initialized.
func NewQueryFulfillmentHistoriesParams() *QueryFulfillmentHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryFulfillmentHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryFulfillmentHistoriesParamsWithTimeout creates a new QueryFulfillmentHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryFulfillmentHistoriesParamsWithTimeout(timeout time.Duration) *QueryFulfillmentHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryFulfillmentHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryFulfillmentHistoriesParamsWithContext creates a new QueryFulfillmentHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryFulfillmentHistoriesParamsWithContext(ctx context.Context) *QueryFulfillmentHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryFulfillmentHistoriesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryFulfillmentHistoriesParamsWithHTTPClient creates a new QueryFulfillmentHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryFulfillmentHistoriesParamsWithHTTPClient(client *http.Client) *QueryFulfillmentHistoriesParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryFulfillmentHistoriesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryFulfillmentHistoriesParams contains all the parameters to send to the API endpoint
for the query fulfillment histories operation typically these are written to a http.Request
*/
type QueryFulfillmentHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Status*/
	Status *string
	/*UserID*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) WithTimeout(timeout time.Duration) *QueryFulfillmentHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) WithContext(ctx context.Context) *QueryFulfillmentHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) WithHTTPClient(client *http.Client) *QueryFulfillmentHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryFulfillmentHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) WithNamespace(namespace string) *QueryFulfillmentHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) WithLimit(limit *int32) *QueryFulfillmentHistoriesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) WithOffset(offset *int32) *QueryFulfillmentHistoriesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStatus adds the status to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) WithStatus(status *string) *QueryFulfillmentHistoriesParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetStatus(status *string) {
	o.Status = status
}

// WithUserID adds the userID to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) WithUserID(userID *string) *QueryFulfillmentHistoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query fulfillment histories params
func (o *QueryFulfillmentHistoriesParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryFulfillmentHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
