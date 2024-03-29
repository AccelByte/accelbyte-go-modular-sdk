// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package event_v2

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

// NewGetPublicEditHistoryParams creates a new GetPublicEditHistoryParams object
// with the default values initialized.
func NewGetPublicEditHistoryParams() *GetPublicEditHistoryParams {
	var ()
	return &GetPublicEditHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPublicEditHistoryParamsWithTimeout creates a new GetPublicEditHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPublicEditHistoryParamsWithTimeout(timeout time.Duration) *GetPublicEditHistoryParams {
	var ()
	return &GetPublicEditHistoryParams{

		timeout: timeout,
	}
}

// NewGetPublicEditHistoryParamsWithContext creates a new GetPublicEditHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPublicEditHistoryParamsWithContext(ctx context.Context) *GetPublicEditHistoryParams {
	var ()
	return &GetPublicEditHistoryParams{

		Context: ctx,
	}
}

// NewGetPublicEditHistoryParamsWithHTTPClient creates a new GetPublicEditHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPublicEditHistoryParamsWithHTTPClient(client *http.Client) *GetPublicEditHistoryParams {
	var ()
	return &GetPublicEditHistoryParams{
		HTTPClient: client,
	}
}

/*GetPublicEditHistoryParams contains all the parameters to send to the API endpoint
for the get public edit history operation typically these are written to a http.Request
*/
type GetPublicEditHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*EndDate
	  Ending date. e.g. 2015-03-20T12:27:06Z. Default : Current time in UTC

	*/
	EndDate *string
	/*Offset
	  Offset to query. Default : 0

	*/
	Offset *int64
	/*PageSize
	  Number of result in a page. Default : 100. Max : 500

	*/
	PageSize *int64
	/*StartDate
	  Starting date. e.g. 2015-03-20T12:27:06Z. Default : 1970-01-01T00:00:00Z

	*/
	StartDate *string
	/*Type
	  Edit History type to fetch

	*/
	Type *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get public edit history params
func (o *GetPublicEditHistoryParams) WithTimeout(timeout time.Duration) *GetPublicEditHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get public edit history params
func (o *GetPublicEditHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get public edit history params
func (o *GetPublicEditHistoryParams) WithContext(ctx context.Context) *GetPublicEditHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get public edit history params
func (o *GetPublicEditHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get public edit history params
func (o *GetPublicEditHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get public edit history params
func (o *GetPublicEditHistoryParams) WithHTTPClient(client *http.Client) *GetPublicEditHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get public edit history params
func (o *GetPublicEditHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get public edit history params
func (o *GetPublicEditHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPublicEditHistoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get public edit history params
func (o *GetPublicEditHistoryParams) WithNamespace(namespace string) *GetPublicEditHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get public edit history params
func (o *GetPublicEditHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get public edit history params
func (o *GetPublicEditHistoryParams) WithUserID(userID string) *GetPublicEditHistoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get public edit history params
func (o *GetPublicEditHistoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEndDate adds the endDate to the get public edit history params
func (o *GetPublicEditHistoryParams) WithEndDate(endDate *string) *GetPublicEditHistoryParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the get public edit history params
func (o *GetPublicEditHistoryParams) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithOffset adds the offset to the get public edit history params
func (o *GetPublicEditHistoryParams) WithOffset(offset *int64) *GetPublicEditHistoryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get public edit history params
func (o *GetPublicEditHistoryParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPageSize adds the pageSize to the get public edit history params
func (o *GetPublicEditHistoryParams) WithPageSize(pageSize *int64) *GetPublicEditHistoryParams {
	o.SetPageSize(pageSize)
	return o
}

// SetPageSize adds the pageSize to the get public edit history params
func (o *GetPublicEditHistoryParams) SetPageSize(pageSize *int64) {
	o.PageSize = pageSize
}

// WithStartDate adds the startDate to the get public edit history params
func (o *GetPublicEditHistoryParams) WithStartDate(startDate *string) *GetPublicEditHistoryParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the get public edit history params
func (o *GetPublicEditHistoryParams) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WithType adds the typeVar to the get public edit history params
func (o *GetPublicEditHistoryParams) WithType(typeVar *string) *GetPublicEditHistoryParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the get public edit history params
func (o *GetPublicEditHistoryParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *GetPublicEditHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
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

	if o.PageSize != nil {

		// query param pageSize
		var qrPageSize int64
		if o.PageSize != nil {
			qrPageSize = *o.PageSize
		}
		qPageSize := swag.FormatInt64(qrPageSize)
		if qPageSize != "" {
			if err := r.SetQueryParam("pageSize", qPageSize); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
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
