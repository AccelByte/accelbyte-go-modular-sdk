// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_player_record

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

// NewRetrievePlayerRecordsParams creates a new RetrievePlayerRecordsParams object
// with the default values initialized.
func NewRetrievePlayerRecordsParams() *RetrievePlayerRecordsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &RetrievePlayerRecordsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrievePlayerRecordsParamsWithTimeout creates a new RetrievePlayerRecordsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrievePlayerRecordsParamsWithTimeout(timeout time.Duration) *RetrievePlayerRecordsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &RetrievePlayerRecordsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewRetrievePlayerRecordsParamsWithContext creates a new RetrievePlayerRecordsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrievePlayerRecordsParamsWithContext(ctx context.Context) *RetrievePlayerRecordsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &RetrievePlayerRecordsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewRetrievePlayerRecordsParamsWithHTTPClient creates a new RetrievePlayerRecordsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrievePlayerRecordsParamsWithHTTPClient(client *http.Client) *RetrievePlayerRecordsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &RetrievePlayerRecordsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*RetrievePlayerRecordsParams contains all the parameters to send to the API endpoint
for the retrieve player records operation typically these are written to a http.Request
*/
type RetrievePlayerRecordsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*Limit
	  the number of data retrieved in a page, default 25

	*/
	Limit *int64
	/*Offset
	  the number of offset, default 0

	*/
	Offset *int64
	/*Tags
	  filter list by tags, max 5 tags per request

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithTimeout(timeout time.Duration) *RetrievePlayerRecordsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithContext(ctx context.Context) *RetrievePlayerRecordsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithHTTPClient(client *http.Client) *RetrievePlayerRecordsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrievePlayerRecordsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithNamespace(namespace string) *RetrievePlayerRecordsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithLimit(limit *int64) *RetrievePlayerRecordsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithOffset(offset *int64) *RetrievePlayerRecordsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTags adds the tags to the retrieve player records params
func (o *RetrievePlayerRecordsParams) WithTags(tags []string) *RetrievePlayerRecordsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the retrieve player records params
func (o *RetrievePlayerRecordsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *RetrievePlayerRecordsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
