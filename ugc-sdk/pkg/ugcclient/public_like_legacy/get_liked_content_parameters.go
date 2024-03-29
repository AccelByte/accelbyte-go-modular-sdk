// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public_like_legacy

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

// NewGetLikedContentParams creates a new GetLikedContentParams object
// with the default values initialized.
func NewGetLikedContentParams() *GetLikedContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetLikedContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLikedContentParamsWithTimeout creates a new GetLikedContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLikedContentParamsWithTimeout(timeout time.Duration) *GetLikedContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetLikedContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetLikedContentParamsWithContext creates a new GetLikedContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetLikedContentParamsWithContext(ctx context.Context) *GetLikedContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetLikedContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetLikedContentParamsWithHTTPClient creates a new GetLikedContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLikedContentParamsWithHTTPClient(client *http.Client) *GetLikedContentParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &GetLikedContentParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetLikedContentParams contains all the parameters to send to the API endpoint
for the get liked content operation typically these are written to a http.Request
*/
type GetLikedContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Isofficial
	  filter content by official or community

	*/
	Isofficial *bool
	/*Limit
	  number of content per page

	*/
	Limit *int64
	/*Name
	  content name

	*/
	Name *string
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64
	/*Orderby
	  sorting order: asc, desc. default=desc

	*/
	Orderby *string
	/*Sortby
	  sorting criteria: name,download,like,date. default=date

	*/
	Sortby *string
	/*Subtype
	  subtype

	*/
	Subtype *string
	/*Tags
	  tags

	*/
	Tags []string
	/*Type
	  type

	*/
	Type *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get liked content params
func (o *GetLikedContentParams) WithTimeout(timeout time.Duration) *GetLikedContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get liked content params
func (o *GetLikedContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get liked content params
func (o *GetLikedContentParams) WithContext(ctx context.Context) *GetLikedContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get liked content params
func (o *GetLikedContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get liked content params
func (o *GetLikedContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get liked content params
func (o *GetLikedContentParams) WithHTTPClient(client *http.Client) *GetLikedContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get liked content params
func (o *GetLikedContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get liked content params
func (o *GetLikedContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetLikedContentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get liked content params
func (o *GetLikedContentParams) WithNamespace(namespace string) *GetLikedContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get liked content params
func (o *GetLikedContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIsofficial adds the isofficial to the get liked content params
func (o *GetLikedContentParams) WithIsofficial(isofficial *bool) *GetLikedContentParams {
	o.SetIsofficial(isofficial)
	return o
}

// SetIsofficial adds the isofficial to the get liked content params
func (o *GetLikedContentParams) SetIsofficial(isofficial *bool) {
	o.Isofficial = isofficial
}

// WithLimit adds the limit to the get liked content params
func (o *GetLikedContentParams) WithLimit(limit *int64) *GetLikedContentParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get liked content params
func (o *GetLikedContentParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the get liked content params
func (o *GetLikedContentParams) WithName(name *string) *GetLikedContentParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the get liked content params
func (o *GetLikedContentParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the get liked content params
func (o *GetLikedContentParams) WithOffset(offset *int64) *GetLikedContentParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get liked content params
func (o *GetLikedContentParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrderby adds the orderby to the get liked content params
func (o *GetLikedContentParams) WithOrderby(orderby *string) *GetLikedContentParams {
	o.SetOrderby(orderby)
	return o
}

// SetOrderby adds the orderby to the get liked content params
func (o *GetLikedContentParams) SetOrderby(orderby *string) {
	o.Orderby = orderby
}

// WithSortby adds the sortby to the get liked content params
func (o *GetLikedContentParams) WithSortby(sortby *string) *GetLikedContentParams {
	o.SetSortby(sortby)
	return o
}

// SetSortby adds the sortby to the get liked content params
func (o *GetLikedContentParams) SetSortby(sortby *string) {
	o.Sortby = sortby
}

// WithSubtype adds the subtype to the get liked content params
func (o *GetLikedContentParams) WithSubtype(subtype *string) *GetLikedContentParams {
	o.SetSubtype(subtype)
	return o
}

// SetSubtype adds the subtype to the get liked content params
func (o *GetLikedContentParams) SetSubtype(subtype *string) {
	o.Subtype = subtype
}

// WithTags adds the tags to the get liked content params
func (o *GetLikedContentParams) WithTags(tags []string) *GetLikedContentParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the get liked content params
func (o *GetLikedContentParams) SetTags(tags []string) {
	o.Tags = tags
}

// WithType adds the typeVar to the get liked content params
func (o *GetLikedContentParams) WithType(typeVar *string) *GetLikedContentParams {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the get liked content params
func (o *GetLikedContentParams) SetType(typeVar *string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *GetLikedContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Isofficial != nil {

		// query param isofficial
		var qrIsofficial bool
		if o.Isofficial != nil {
			qrIsofficial = *o.Isofficial
		}
		qIsofficial := swag.FormatBool(qrIsofficial)
		if qIsofficial != "" {
			if err := r.SetQueryParam("isofficial", qIsofficial); err != nil {
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

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
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

	if o.Orderby != nil {

		// query param orderby
		var qrOrderby string
		if o.Orderby != nil {
			qrOrderby = *o.Orderby
		}
		qOrderby := qrOrderby
		if qOrderby != "" {
			if err := r.SetQueryParam("orderby", qOrderby); err != nil {
				return err
			}
		}

	}

	if o.Sortby != nil {

		// query param sortby
		var qrSortby string
		if o.Sortby != nil {
			qrSortby = *o.Sortby
		}
		qSortby := qrSortby
		if qSortby != "" {
			if err := r.SetQueryParam("sortby", qSortby); err != nil {
				return err
			}
		}

	}

	if o.Subtype != nil {

		// query param subtype
		var qrSubtype string
		if o.Subtype != nil {
			qrSubtype = *o.Subtype
		}
		qSubtype := qrSubtype
		if qSubtype != "" {
			if err := r.SetQueryParam("subtype", qSubtype); err != nil {
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
