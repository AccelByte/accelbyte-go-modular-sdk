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

// NewGetOtherPlayerPublicRecordKeyHandlerV1Params creates a new GetOtherPlayerPublicRecordKeyHandlerV1Params object
// with the default values initialized.
func NewGetOtherPlayerPublicRecordKeyHandlerV1Params() *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetOtherPlayerPublicRecordKeyHandlerV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetOtherPlayerPublicRecordKeyHandlerV1ParamsWithTimeout creates a new GetOtherPlayerPublicRecordKeyHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetOtherPlayerPublicRecordKeyHandlerV1ParamsWithTimeout(timeout time.Duration) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetOtherPlayerPublicRecordKeyHandlerV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetOtherPlayerPublicRecordKeyHandlerV1ParamsWithContext creates a new GetOtherPlayerPublicRecordKeyHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetOtherPlayerPublicRecordKeyHandlerV1ParamsWithContext(ctx context.Context) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetOtherPlayerPublicRecordKeyHandlerV1Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetOtherPlayerPublicRecordKeyHandlerV1ParamsWithHTTPClient creates a new GetOtherPlayerPublicRecordKeyHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetOtherPlayerPublicRecordKeyHandlerV1ParamsWithHTTPClient(client *http.Client) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetOtherPlayerPublicRecordKeyHandlerV1Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetOtherPlayerPublicRecordKeyHandlerV1Params contains all the parameters to send to the API endpoint
for the get other player public record key handler v1 operation typically these are written to a http.Request
*/
type GetOtherPlayerPublicRecordKeyHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user ID who own the record, should follow UUID version 4 without hyphen format

	*/
	UserID string
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

// WithTimeout adds the timeout to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) WithTimeout(timeout time.Duration) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) WithContext(ctx context.Context) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) WithHTTPClient(client *http.Client) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) WithNamespace(namespace string) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) WithUserID(userID string) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) WithLimit(limit *int64) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) WithOffset(offset *int64) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTags adds the tags to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) WithTags(tags []string) *GetOtherPlayerPublicRecordKeyHandlerV1Params {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the get other player public record key handler v1 params
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
