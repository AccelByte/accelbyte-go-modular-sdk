// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chat

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminChatHistoryParams creates a new AdminChatHistoryParams object
// with the default values initialized.
func NewAdminChatHistoryParams() *AdminChatHistoryParams {
	var ()
	return &AdminChatHistoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminChatHistoryParamsWithTimeout creates a new AdminChatHistoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminChatHistoryParamsWithTimeout(timeout time.Duration) *AdminChatHistoryParams {
	var ()
	return &AdminChatHistoryParams{

		timeout: timeout,
	}
}

// NewAdminChatHistoryParamsWithContext creates a new AdminChatHistoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminChatHistoryParamsWithContext(ctx context.Context) *AdminChatHistoryParams {
	var ()
	return &AdminChatHistoryParams{

		Context: ctx,
	}
}

// NewAdminChatHistoryParamsWithHTTPClient creates a new AdminChatHistoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminChatHistoryParamsWithHTTPClient(client *http.Client) *AdminChatHistoryParams {
	var ()
	return &AdminChatHistoryParams{
		HTTPClient: client,
	}
}

/*AdminChatHistoryParams contains all the parameters to send to the API endpoint
for the admin chat history operation typically these are written to a http.Request
*/
type AdminChatHistoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*FriendID
	  user ID that receive the chat

	*/
	FriendID string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin chat history params
func (o *AdminChatHistoryParams) WithTimeout(timeout time.Duration) *AdminChatHistoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin chat history params
func (o *AdminChatHistoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin chat history params
func (o *AdminChatHistoryParams) WithContext(ctx context.Context) *AdminChatHistoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin chat history params
func (o *AdminChatHistoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin chat history params
func (o *AdminChatHistoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin chat history params
func (o *AdminChatHistoryParams) WithHTTPClient(client *http.Client) *AdminChatHistoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin chat history params
func (o *AdminChatHistoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin chat history params
func (o *AdminChatHistoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFriendID adds the friendID to the admin chat history params
func (o *AdminChatHistoryParams) WithFriendID(friendID string) *AdminChatHistoryParams {
	o.SetFriendID(friendID)
	return o
}

// SetFriendID adds the friendId to the admin chat history params
func (o *AdminChatHistoryParams) SetFriendID(friendID string) {
	o.FriendID = friendID
}

// WithNamespace adds the namespace to the admin chat history params
func (o *AdminChatHistoryParams) WithNamespace(namespace string) *AdminChatHistoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin chat history params
func (o *AdminChatHistoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin chat history params
func (o *AdminChatHistoryParams) WithUserID(userID string) *AdminChatHistoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin chat history params
func (o *AdminChatHistoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminChatHistoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param friendId
	if err := r.SetPathParam("friendId", o.FriendID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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
