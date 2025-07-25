// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

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

// Deprecated: 2025-07-16 - Use QueryUserIAPConsumeHistoryStatus<EnumValue>Constant instead.
// Get the enum in QueryUserIAPConsumeHistoryParams
const (
	QueryUserIAPConsumeHistoryFAILConstant    = "FAIL"
	QueryUserIAPConsumeHistoryPENDINGConstant = "PENDING"
	QueryUserIAPConsumeHistorySUCCESSConstant = "SUCCESS"
)

// Deprecated: 2025-07-16 - Use QueryUserIAPConsumeHistoryType<EnumValue>Constant instead.
// Get the enum in QueryUserIAPConsumeHistoryParams
const (
	QueryUserIAPConsumeHistoryAPPLEConstant       = "APPLE"
	QueryUserIAPConsumeHistoryEPICGAMESConstant   = "EPICGAMES"
	QueryUserIAPConsumeHistoryGOOGLEConstant      = "GOOGLE"
	QueryUserIAPConsumeHistoryOCULUSConstant      = "OCULUS"
	QueryUserIAPConsumeHistoryPLAYSTATIONConstant = "PLAYSTATION"
	QueryUserIAPConsumeHistorySTADIAConstant      = "STADIA"
	QueryUserIAPConsumeHistorySTEAMConstant       = "STEAM"
	QueryUserIAPConsumeHistoryTWITCHConstant      = "TWITCH"
	QueryUserIAPConsumeHistoryXBOXConstant        = "XBOX"
)

// Get the enum in QueryUserIAPConsumeHistoryParams
const (
	QueryUserIAPConsumeHistoryStatusFAILConstant    = "FAIL"
	QueryUserIAPConsumeHistoryStatusPENDINGConstant = "PENDING"
	QueryUserIAPConsumeHistoryStatusSUCCESSConstant = "SUCCESS"
)

// Get the enum in QueryUserIAPConsumeHistoryParams
const (
	QueryUserIAPConsumeHistoryTypeAPPLEConstant       = "APPLE"
	QueryUserIAPConsumeHistoryTypeEPICGAMESConstant   = "EPICGAMES"
	QueryUserIAPConsumeHistoryTypeGOOGLEConstant      = "GOOGLE"
	QueryUserIAPConsumeHistoryTypeOCULUSConstant      = "OCULUS"
	QueryUserIAPConsumeHistoryTypePLAYSTATIONConstant = "PLAYSTATION"
	QueryUserIAPConsumeHistoryTypeSTADIAConstant      = "STADIA"
	QueryUserIAPConsumeHistoryTypeSTEAMConstant       = "STEAM"
	QueryUserIAPConsumeHistoryTypeTWITCHConstant      = "TWITCH"
	QueryUserIAPConsumeHistoryTypeXBOXConstant        = "XBOX"
)

// NewQueryUserIAPConsumeHistoryParams creates a new QueryUserIAPConsumeHistoryParams object
// with the default values initialized.
func NewQueryUserIAPConsumeHistoryParams() *QueryUserIAPConsumeHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserIAPConsumeHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryUserIAPConsumeHistoryParamsWithTimeout creates a new QueryUserIAPConsumeHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryUserIAPConsumeHistoryParamsWithTimeout(timeout time.Duration) *QueryUserIAPConsumeHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserIAPConsumeHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryUserIAPConsumeHistoryParamsWithContext creates a new QueryUserIAPConsumeHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryUserIAPConsumeHistoryParamsWithContext(ctx context.Context) *QueryUserIAPConsumeHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserIAPConsumeHistoryParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryUserIAPConsumeHistoryParamsWithHTTPClient creates a new QueryUserIAPConsumeHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryUserIAPConsumeHistoryParamsWithHTTPClient(client *http.Client) *QueryUserIAPConsumeHistoryParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserIAPConsumeHistoryParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryUserIAPConsumeHistoryParams contains all the parameters to send to the API endpoint
for the query user iap consume history operation typically these are written to a http.Request
*/
type QueryUserIAPConsumeHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*EndTime
	  end time is exclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	EndTime *string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*StartTime
	  start time is inclusive, using ISO 8601 format e.g. yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	StartTime *string
	/*Status*/
	Status *string
	/*Type*/
	Type *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithTimeout(timeout time.Duration) *QueryUserIAPConsumeHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithContext(ctx context.Context) *QueryUserIAPConsumeHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithHTTPClient(client *http.Client) *QueryUserIAPConsumeHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryUserIAPConsumeHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithNamespace(namespace string) *QueryUserIAPConsumeHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithUserID(userID string) *QueryUserIAPConsumeHistoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEndTime adds the endTime to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithEndTime(endTime *string) *QueryUserIAPConsumeHistoryParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetEndTime(endTime *string) {
	o.EndTime = endTime
}

// WithLimit adds the limit to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithLimit(limit *int32) *QueryUserIAPConsumeHistoryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithOffset(offset *int32) *QueryUserIAPConsumeHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStartTime adds the startTime to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithStartTime(startTime *string) *QueryUserIAPConsumeHistoryParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetStartTime(startTime *string) {
	o.StartTime = startTime
}

// WithStatus adds the status to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithStatus(status *string) *QueryUserIAPConsumeHistoryParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetStatus(status *string) {
	o.Status = status
}

// WithType adds the typeVar to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) WithType(typeVar *string) *QueryUserIAPConsumeHistoryParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the query user iap consume history params
func (o *QueryUserIAPConsumeHistoryParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *QueryUserIAPConsumeHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.EndTime != nil {

		// query param endTime
		var qrEndTime string
		if o.EndTime != nil {
			qrEndTime = *o.EndTime
		}
		qEndTime := qrEndTime
		if qEndTime != "" {
			if err := r.SetQueryParam("endTime", qEndTime); err != nil {
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

	if o.StartTime != nil {

		// query param startTime
		var qrStartTime string
		if o.StartTime != nil {
			qrStartTime = *o.StartTime
		}
		qStartTime := qrStartTime
		if qStartTime != "" {
			if err := r.SetQueryParam("startTime", qStartTime); err != nil {
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

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
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
