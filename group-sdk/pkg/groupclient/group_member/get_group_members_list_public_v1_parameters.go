// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group_member

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

// NewGetGroupMembersListPublicV1Params creates a new GetGroupMembersListPublicV1Params object
// with the default values initialized.
func NewGetGroupMembersListPublicV1Params() *GetGroupMembersListPublicV1Params {
	var ()
	return &GetGroupMembersListPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGroupMembersListPublicV1ParamsWithTimeout creates a new GetGroupMembersListPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGroupMembersListPublicV1ParamsWithTimeout(timeout time.Duration) *GetGroupMembersListPublicV1Params {
	var ()
	return &GetGroupMembersListPublicV1Params{

		timeout: timeout,
	}
}

// NewGetGroupMembersListPublicV1ParamsWithContext creates a new GetGroupMembersListPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetGroupMembersListPublicV1ParamsWithContext(ctx context.Context) *GetGroupMembersListPublicV1Params {
	var ()
	return &GetGroupMembersListPublicV1Params{

		Context: ctx,
	}
}

// NewGetGroupMembersListPublicV1ParamsWithHTTPClient creates a new GetGroupMembersListPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGroupMembersListPublicV1ParamsWithHTTPClient(client *http.Client) *GetGroupMembersListPublicV1Params {
	var ()
	return &GetGroupMembersListPublicV1Params{
		HTTPClient: client,
	}
}

/*GetGroupMembersListPublicV1Params contains all the parameters to send to the API endpoint
for the get group members list public v1 operation typically these are written to a http.Request
*/
type GetGroupMembersListPublicV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64
	/*Order
	  Sort group members list by User ID with ascending as default order. Set it 'desc' for descending order

	*/
	Order *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) WithTimeout(timeout time.Duration) *GetGroupMembersListPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) WithContext(ctx context.Context) *GetGroupMembersListPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) WithHTTPClient(client *http.Client) *GetGroupMembersListPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) WithGroupID(groupID string) *GetGroupMembersListPublicV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) WithNamespace(namespace string) *GetGroupMembersListPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) WithLimit(limit *int64) *GetGroupMembersListPublicV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) WithOffset(offset *int64) *GetGroupMembersListPublicV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) WithOrder(order *string) *GetGroupMembersListPublicV1Params {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the get group members list public v1 params
func (o *GetGroupMembersListPublicV1Params) SetOrder(order *string) {
	o.Order = order
}

// WriteToRequest writes these params to a swagger request
func (o *GetGroupMembersListPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

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

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
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
