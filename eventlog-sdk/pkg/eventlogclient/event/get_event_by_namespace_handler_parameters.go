// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package event

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewGetEventByNamespaceHandlerParams creates a new GetEventByNamespaceHandlerParams object
// with the default values initialized.
func NewGetEventByNamespaceHandlerParams() *GetEventByNamespaceHandlerParams {
	var ()
	return &GetEventByNamespaceHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEventByNamespaceHandlerParamsWithTimeout creates a new GetEventByNamespaceHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEventByNamespaceHandlerParamsWithTimeout(timeout time.Duration) *GetEventByNamespaceHandlerParams {
	var ()
	return &GetEventByNamespaceHandlerParams{

		timeout: timeout,
	}
}

// NewGetEventByNamespaceHandlerParamsWithContext creates a new GetEventByNamespaceHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEventByNamespaceHandlerParamsWithContext(ctx context.Context) *GetEventByNamespaceHandlerParams {
	var ()
	return &GetEventByNamespaceHandlerParams{

		Context: ctx,
	}
}

// NewGetEventByNamespaceHandlerParamsWithHTTPClient creates a new GetEventByNamespaceHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEventByNamespaceHandlerParamsWithHTTPClient(client *http.Client) *GetEventByNamespaceHandlerParams {
	var ()
	return &GetEventByNamespaceHandlerParams{
		HTTPClient: client,
	}
}

/*
GetEventByNamespaceHandlerParams contains all the parameters to send to the API endpoint
for the get event by namespace handler operation typically these are written to a http.Request
*/
type GetEventByNamespaceHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*EndDate
	  Ending date. e.g. 2015-03-20T12:27:06Z

	*/
	EndDate string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Offset
	  Offset to query

	*/
	Offset *int64
	/*PageSize
	  Number of result in a page

	*/
	PageSize int64
	/*StartDate
	  Starting date. e.g. 2015-03-20T12:27:06Z

	*/
	StartDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) WithTimeout(timeout time.Duration) *GetEventByNamespaceHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) WithContext(ctx context.Context) *GetEventByNamespaceHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) WithHTTPClient(client *http.Client) *GetEventByNamespaceHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithEndDate adds the endDate to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) WithEndDate(endDate string) *GetEventByNamespaceHandlerParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithNamespace adds the namespace to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) WithNamespace(namespace string) *GetEventByNamespaceHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) WithOffset(offset *int64) *GetEventByNamespaceHandlerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPageSize adds the pageSize to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) WithPageSize(pageSize int64) *GetEventByNamespaceHandlerParams {
	o.SetPageSize(pageSize)
	return o
}

// SetPageSize adds the pageSize to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetPageSize(pageSize int64) {
	o.PageSize = pageSize
}

// WithStartDate adds the startDate to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) WithStartDate(startDate string) *GetEventByNamespaceHandlerParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the get event by namespace handler params
func (o *GetEventByNamespaceHandlerParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *GetEventByNamespaceHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// query param endDate
	qrEndDate := o.EndDate
	qEndDate := qrEndDate
	if qEndDate != "" {
		if err := r.SetQueryParam("endDate", qEndDate); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	// query param pageSize
	qrPageSize := o.PageSize
	qPageSize := swag.FormatInt64(qrPageSize)
	if qPageSize != "" {
		if err := r.SetQueryParam("pageSize", qPageSize); err != nil {
			return err
		}
	}

	// query param startDate
	qrStartDate := o.StartDate
	qStartDate := qrStartDate
	if qStartDate != "" {
		if err := r.SetQueryParam("startDate", qStartDate); err != nil {
			return err
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
