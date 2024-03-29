// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package friends

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

// NewGetListOfFriendsParams creates a new GetListOfFriendsParams object
// with the default values initialized.
func NewGetListOfFriendsParams() *GetListOfFriendsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetListOfFriendsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetListOfFriendsParamsWithTimeout creates a new GetListOfFriendsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetListOfFriendsParamsWithTimeout(timeout time.Duration) *GetListOfFriendsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetListOfFriendsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetListOfFriendsParamsWithContext creates a new GetListOfFriendsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetListOfFriendsParamsWithContext(ctx context.Context) *GetListOfFriendsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetListOfFriendsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetListOfFriendsParamsWithHTTPClient creates a new GetListOfFriendsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetListOfFriendsParamsWithHTTPClient(client *http.Client) *GetListOfFriendsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetListOfFriendsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetListOfFriendsParams contains all the parameters to send to the API endpoint
for the get list of friends operation typically these are written to a http.Request
*/
type GetListOfFriendsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*FriendID
	  friend userId

	*/
	FriendID *string
	/*FriendIds
	  friend userIds

	*/
	FriendIds []string
	/*Limit
	  maximum number of data

	*/
	Limit *int64
	/*Offset
	  numbers of row to skip within the result

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get list of friends params
func (o *GetListOfFriendsParams) WithTimeout(timeout time.Duration) *GetListOfFriendsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get list of friends params
func (o *GetListOfFriendsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get list of friends params
func (o *GetListOfFriendsParams) WithContext(ctx context.Context) *GetListOfFriendsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get list of friends params
func (o *GetListOfFriendsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get list of friends params
func (o *GetListOfFriendsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get list of friends params
func (o *GetListOfFriendsParams) WithHTTPClient(client *http.Client) *GetListOfFriendsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get list of friends params
func (o *GetListOfFriendsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get list of friends params
func (o *GetListOfFriendsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetListOfFriendsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get list of friends params
func (o *GetListOfFriendsParams) WithNamespace(namespace string) *GetListOfFriendsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get list of friends params
func (o *GetListOfFriendsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get list of friends params
func (o *GetListOfFriendsParams) WithUserID(userID string) *GetListOfFriendsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get list of friends params
func (o *GetListOfFriendsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithFriendID adds the friendID to the get list of friends params
func (o *GetListOfFriendsParams) WithFriendID(friendID *string) *GetListOfFriendsParams {
	o.SetFriendID(friendID)
	return o
}

// SetFriendID adds the friendId to the get list of friends params
func (o *GetListOfFriendsParams) SetFriendID(friendID *string) {
	o.FriendID = friendID
}

// WithFriendIds adds the friendIds to the get list of friends params
func (o *GetListOfFriendsParams) WithFriendIds(friendIds []string) *GetListOfFriendsParams {
	o.SetFriendIds(friendIds)
	return o
}

// SetFriendIds adds the friendIds to the get list of friends params
func (o *GetListOfFriendsParams) SetFriendIds(friendIds []string) {
	o.FriendIds = friendIds
}

// WithLimit adds the limit to the get list of friends params
func (o *GetListOfFriendsParams) WithLimit(limit *int64) *GetListOfFriendsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get list of friends params
func (o *GetListOfFriendsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get list of friends params
func (o *GetListOfFriendsParams) WithOffset(offset *int64) *GetListOfFriendsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get list of friends params
func (o *GetListOfFriendsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetListOfFriendsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.FriendID != nil {

		// query param friendId
		var qrFriendID string
		if o.FriendID != nil {
			qrFriendID = *o.FriendID
		}
		qFriendID := qrFriendID
		if qFriendID != "" {
			if err := r.SetQueryParam("friendId", qFriendID); err != nil {
				return err
			}
		}

	}

	valuesFriendIds := o.FriendIds

	joinedFriendIds := swag.JoinByFormat(valuesFriendIds, "csv")
	// query array param friendIds
	if err := r.SetQueryParam("friendIds", joinedFriendIds...); err != nil {
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
