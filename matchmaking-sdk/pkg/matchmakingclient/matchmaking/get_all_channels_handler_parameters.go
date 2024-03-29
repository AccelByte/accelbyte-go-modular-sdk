// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

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

// NewGetAllChannelsHandlerParams creates a new GetAllChannelsHandlerParams object
// with the default values initialized.
func NewGetAllChannelsHandlerParams() *GetAllChannelsHandlerParams {
	var ()
	return &GetAllChannelsHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllChannelsHandlerParamsWithTimeout creates a new GetAllChannelsHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllChannelsHandlerParamsWithTimeout(timeout time.Duration) *GetAllChannelsHandlerParams {
	var ()
	return &GetAllChannelsHandlerParams{

		timeout: timeout,
	}
}

// NewGetAllChannelsHandlerParamsWithContext creates a new GetAllChannelsHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllChannelsHandlerParamsWithContext(ctx context.Context) *GetAllChannelsHandlerParams {
	var ()
	return &GetAllChannelsHandlerParams{

		Context: ctx,
	}
}

// NewGetAllChannelsHandlerParamsWithHTTPClient creates a new GetAllChannelsHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllChannelsHandlerParamsWithHTTPClient(client *http.Client) *GetAllChannelsHandlerParams {
	var ()
	return &GetAllChannelsHandlerParams{
		HTTPClient: client,
	}
}

/*GetAllChannelsHandlerParams contains all the parameters to send to the API endpoint
for the get all channels handler operation typically these are written to a http.Request
*/
type GetAllChannelsHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  number of object per page

	*/
	Limit *int64
	/*Offset
	  offset index

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get all channels handler params
func (o *GetAllChannelsHandlerParams) WithTimeout(timeout time.Duration) *GetAllChannelsHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all channels handler params
func (o *GetAllChannelsHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all channels handler params
func (o *GetAllChannelsHandlerParams) WithContext(ctx context.Context) *GetAllChannelsHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all channels handler params
func (o *GetAllChannelsHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all channels handler params
func (o *GetAllChannelsHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all channels handler params
func (o *GetAllChannelsHandlerParams) WithHTTPClient(client *http.Client) *GetAllChannelsHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all channels handler params
func (o *GetAllChannelsHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all channels handler params
func (o *GetAllChannelsHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAllChannelsHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get all channels handler params
func (o *GetAllChannelsHandlerParams) WithNamespace(namespace string) *GetAllChannelsHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all channels handler params
func (o *GetAllChannelsHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get all channels handler params
func (o *GetAllChannelsHandlerParams) WithLimit(limit *int64) *GetAllChannelsHandlerParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get all channels handler params
func (o *GetAllChannelsHandlerParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get all channels handler params
func (o *GetAllChannelsHandlerParams) WithOffset(offset *int64) *GetAllChannelsHandlerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get all channels handler params
func (o *GetAllChannelsHandlerParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllChannelsHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
