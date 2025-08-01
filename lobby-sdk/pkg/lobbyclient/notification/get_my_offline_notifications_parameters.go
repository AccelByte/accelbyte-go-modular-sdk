// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

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

// NewGetMyOfflineNotificationsParams creates a new GetMyOfflineNotificationsParams object
// with the default values initialized.
func NewGetMyOfflineNotificationsParams() *GetMyOfflineNotificationsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetMyOfflineNotificationsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetMyOfflineNotificationsParamsWithTimeout creates a new GetMyOfflineNotificationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetMyOfflineNotificationsParamsWithTimeout(timeout time.Duration) *GetMyOfflineNotificationsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetMyOfflineNotificationsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetMyOfflineNotificationsParamsWithContext creates a new GetMyOfflineNotificationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetMyOfflineNotificationsParamsWithContext(ctx context.Context) *GetMyOfflineNotificationsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetMyOfflineNotificationsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetMyOfflineNotificationsParamsWithHTTPClient creates a new GetMyOfflineNotificationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetMyOfflineNotificationsParamsWithHTTPClient(client *http.Client) *GetMyOfflineNotificationsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetMyOfflineNotificationsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetMyOfflineNotificationsParams contains all the parameters to send to the API endpoint
for the get my offline notifications operation typically these are written to a http.Request
*/
type GetMyOfflineNotificationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*EndTime
	  filter data until a certain end time value in the notification (in unix millis)

	*/
	EndTime *int64
	/*Limit
	  data size for pagination

	*/
	Limit *int64
	/*Offset
	  data offset for pagination

	*/
	Offset *int64
	/*StartTime
	  filter data starting from a certain start time value in the notification (in unix millis)

	*/
	StartTime *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) WithTimeout(timeout time.Duration) *GetMyOfflineNotificationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) WithContext(ctx context.Context) *GetMyOfflineNotificationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) WithHTTPClient(client *http.Client) *GetMyOfflineNotificationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetMyOfflineNotificationsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) WithNamespace(namespace string) *GetMyOfflineNotificationsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndTime adds the endTime to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) WithEndTime(endTime *int64) *GetMyOfflineNotificationsParams {
	o.SetEndTime(endTime)
	return o
}

// SetEndTime adds the endTime to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetEndTime(endTime *int64) {
	o.EndTime = endTime
}

// WithLimit adds the limit to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) WithLimit(limit *int64) *GetMyOfflineNotificationsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) WithOffset(offset *int64) *GetMyOfflineNotificationsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithStartTime adds the startTime to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) WithStartTime(startTime *int64) *GetMyOfflineNotificationsParams {
	o.SetStartTime(startTime)
	return o
}

// SetStartTime adds the startTime to the get my offline notifications params
func (o *GetMyOfflineNotificationsParams) SetStartTime(startTime *int64) {
	o.StartTime = startTime
}

// WriteToRequest writes these params to a swagger request
func (o *GetMyOfflineNotificationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.EndTime != nil {

		// query param endTime
		var qrEndTime int64
		if o.EndTime != nil {
			qrEndTime = *o.EndTime
		}
		qEndTime := swag.FormatInt64(qrEndTime)
		if qEndTime != "" {
			if err := r.SetQueryParam("endTime", qEndTime); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.StartTime != nil {

		// query param startTime
		var qrStartTime int64
		if o.StartTime != nil {
			qrStartTime = *o.StartTime
		}
		qStartTime := swag.FormatInt64(qrStartTime)
		if qStartTime != "" {
			if err := r.SetQueryParam("startTime", qStartTime); err != nil {
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
