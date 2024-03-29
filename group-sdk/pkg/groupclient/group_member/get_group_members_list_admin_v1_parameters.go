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

// NewGetGroupMembersListAdminV1Params creates a new GetGroupMembersListAdminV1Params object
// with the default values initialized.
func NewGetGroupMembersListAdminV1Params() *GetGroupMembersListAdminV1Params {
	var ()
	return &GetGroupMembersListAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGroupMembersListAdminV1ParamsWithTimeout creates a new GetGroupMembersListAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGroupMembersListAdminV1ParamsWithTimeout(timeout time.Duration) *GetGroupMembersListAdminV1Params {
	var ()
	return &GetGroupMembersListAdminV1Params{

		timeout: timeout,
	}
}

// NewGetGroupMembersListAdminV1ParamsWithContext creates a new GetGroupMembersListAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetGroupMembersListAdminV1ParamsWithContext(ctx context.Context) *GetGroupMembersListAdminV1Params {
	var ()
	return &GetGroupMembersListAdminV1Params{

		Context: ctx,
	}
}

// NewGetGroupMembersListAdminV1ParamsWithHTTPClient creates a new GetGroupMembersListAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGroupMembersListAdminV1ParamsWithHTTPClient(client *http.Client) *GetGroupMembersListAdminV1Params {
	var ()
	return &GetGroupMembersListAdminV1Params{
		HTTPClient: client,
	}
}

/*GetGroupMembersListAdminV1Params contains all the parameters to send to the API endpoint
for the get group members list admin v1 operation typically these are written to a http.Request
*/
type GetGroupMembersListAdminV1Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) WithTimeout(timeout time.Duration) *GetGroupMembersListAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) WithContext(ctx context.Context) *GetGroupMembersListAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) WithHTTPClient(client *http.Client) *GetGroupMembersListAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGroupMembersListAdminV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) WithGroupID(groupID string) *GetGroupMembersListAdminV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) WithNamespace(namespace string) *GetGroupMembersListAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) WithLimit(limit *int64) *GetGroupMembersListAdminV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) WithOffset(offset *int64) *GetGroupMembersListAdminV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrder adds the order to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) WithOrder(order *string) *GetGroupMembersListAdminV1Params {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the get group members list admin v1 params
func (o *GetGroupMembersListAdminV1Params) SetOrder(order *string) {
	o.Order = order
}

// WriteToRequest writes these params to a swagger request
func (o *GetGroupMembersListAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
