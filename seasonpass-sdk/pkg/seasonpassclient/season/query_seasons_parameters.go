// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

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

// Deprecated: 2025-07-16 - Use QuerySeasonsStatus<EnumValue>Constant instead.
// Get the enum in QuerySeasonsParams
const (
	QuerySeasonsDRAFTConstant     = "DRAFT"
	QuerySeasonsPUBLISHEDConstant = "PUBLISHED"
	QuerySeasonsRETIREDConstant   = "RETIRED"
)

// Get the enum in QuerySeasonsParams
const (
	QuerySeasonsStatusDRAFTConstant     = "DRAFT"
	QuerySeasonsStatusPUBLISHEDConstant = "PUBLISHED"
	QuerySeasonsStatusRETIREDConstant   = "RETIRED"
)

// NewQuerySeasonsParams creates a new QuerySeasonsParams object
// with the default values initialized.
func NewQuerySeasonsParams() *QuerySeasonsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySeasonsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQuerySeasonsParamsWithTimeout creates a new QuerySeasonsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQuerySeasonsParamsWithTimeout(timeout time.Duration) *QuerySeasonsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySeasonsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQuerySeasonsParamsWithContext creates a new QuerySeasonsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQuerySeasonsParamsWithContext(ctx context.Context) *QuerySeasonsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySeasonsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQuerySeasonsParamsWithHTTPClient creates a new QuerySeasonsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQuerySeasonsParamsWithHTTPClient(client *http.Client) *QuerySeasonsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QuerySeasonsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QuerySeasonsParams contains all the parameters to send to the API endpoint
for the query seasons operation typically these are written to a http.Request
*/
type QuerySeasonsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Limit
	  limit

	*/
	Limit *int32
	/*Offset
	  offset

	*/
	Offset *int32
	/*Status*/
	Status []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query seasons params
func (o *QuerySeasonsParams) WithTimeout(timeout time.Duration) *QuerySeasonsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query seasons params
func (o *QuerySeasonsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query seasons params
func (o *QuerySeasonsParams) WithContext(ctx context.Context) *QuerySeasonsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query seasons params
func (o *QuerySeasonsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query seasons params
func (o *QuerySeasonsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query seasons params
func (o *QuerySeasonsParams) WithHTTPClient(client *http.Client) *QuerySeasonsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query seasons params
func (o *QuerySeasonsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query seasons params
func (o *QuerySeasonsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QuerySeasonsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query seasons params
func (o *QuerySeasonsParams) WithNamespace(namespace string) *QuerySeasonsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query seasons params
func (o *QuerySeasonsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the query seasons params
func (o *QuerySeasonsParams) WithLimit(limit *int32) *QuerySeasonsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query seasons params
func (o *QuerySeasonsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query seasons params
func (o *QuerySeasonsParams) WithOffset(offset *int32) *QuerySeasonsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query seasons params
func (o *QuerySeasonsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithStatus adds the status to the query seasons params
func (o *QuerySeasonsParams) WithStatus(status []string) *QuerySeasonsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the query seasons params
func (o *QuerySeasonsParams) SetStatus(status []string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *QuerySeasonsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	valuesStatus := o.Status

	joinedStatus := swag.JoinByFormat(valuesStatus, "multi")
	// query array param status
	if err := r.SetQueryParam("status", joinedStatus...); err != nil {
		return err
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
