// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package global_statistic

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

// NewGetGlobalStatItemsParams creates a new GetGlobalStatItemsParams object
// with the default values initialized.
func NewGetGlobalStatItemsParams() *GetGlobalStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetGlobalStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGlobalStatItemsParamsWithTimeout creates a new GetGlobalStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGlobalStatItemsParamsWithTimeout(timeout time.Duration) *GetGlobalStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetGlobalStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetGlobalStatItemsParamsWithContext creates a new GetGlobalStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGlobalStatItemsParamsWithContext(ctx context.Context) *GetGlobalStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetGlobalStatItemsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetGlobalStatItemsParamsWithHTTPClient creates a new GetGlobalStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGlobalStatItemsParamsWithHTTPClient(client *http.Client) *GetGlobalStatItemsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetGlobalStatItemsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetGlobalStatItemsParams contains all the parameters to send to the API endpoint
for the get global stat items operation typically these are written to a http.Request
*/
type GetGlobalStatItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*StatCodes
	  comma separated stat codes

	*/
	StatCodes *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get global stat items params
func (o *GetGlobalStatItemsParams) WithTimeout(timeout time.Duration) *GetGlobalStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get global stat items params
func (o *GetGlobalStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get global stat items params
func (o *GetGlobalStatItemsParams) WithContext(ctx context.Context) *GetGlobalStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get global stat items params
func (o *GetGlobalStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get global stat items params
func (o *GetGlobalStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get global stat items params
func (o *GetGlobalStatItemsParams) WithHTTPClient(client *http.Client) *GetGlobalStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get global stat items params
func (o *GetGlobalStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get global stat items params
func (o *GetGlobalStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGlobalStatItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get global stat items params
func (o *GetGlobalStatItemsParams) WithNamespace(namespace string) *GetGlobalStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get global stat items params
func (o *GetGlobalStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get global stat items params
func (o *GetGlobalStatItemsParams) WithLimit(limit *int32) *GetGlobalStatItemsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get global stat items params
func (o *GetGlobalStatItemsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get global stat items params
func (o *GetGlobalStatItemsParams) WithOffset(offset *int32) *GetGlobalStatItemsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get global stat items params
func (o *GetGlobalStatItemsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStatCodes adds the statCodes to the get global stat items params
func (o *GetGlobalStatItemsParams) WithStatCodes(statCodes *string) *GetGlobalStatItemsParams {
	o.SetStatCodes(statCodes)
	return o
}

// SetStatCodes adds the statCodes to the get global stat items params
func (o *GetGlobalStatItemsParams) SetStatCodes(statCodes *string) {
	o.StatCodes = statCodes
}

// WriteToRequest writes these params to a swagger request
func (o *GetGlobalStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.StatCodes != nil {

		// query param statCodes
		var qrStatCodes string
		if o.StatCodes != nil {
			qrStatCodes = *o.StatCodes
		}
		qStatCodes := qrStatCodes
		if qStatCodes != "" {
			if err := r.SetQueryParam("statCodes", qStatCodes); err != nil {
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
