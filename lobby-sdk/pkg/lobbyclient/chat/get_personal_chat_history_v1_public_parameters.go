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

// NewGetPersonalChatHistoryV1PublicParams creates a new GetPersonalChatHistoryV1PublicParams object
// with the default values initialized.
func NewGetPersonalChatHistoryV1PublicParams() *GetPersonalChatHistoryV1PublicParams {
	var ()
	return &GetPersonalChatHistoryV1PublicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPersonalChatHistoryV1PublicParamsWithTimeout creates a new GetPersonalChatHistoryV1PublicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPersonalChatHistoryV1PublicParamsWithTimeout(timeout time.Duration) *GetPersonalChatHistoryV1PublicParams {
	var ()
	return &GetPersonalChatHistoryV1PublicParams{

		timeout: timeout,
	}
}

// NewGetPersonalChatHistoryV1PublicParamsWithContext creates a new GetPersonalChatHistoryV1PublicParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPersonalChatHistoryV1PublicParamsWithContext(ctx context.Context) *GetPersonalChatHistoryV1PublicParams {
	var ()
	return &GetPersonalChatHistoryV1PublicParams{

		Context: ctx,
	}
}

// NewGetPersonalChatHistoryV1PublicParamsWithHTTPClient creates a new GetPersonalChatHistoryV1PublicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPersonalChatHistoryV1PublicParamsWithHTTPClient(client *http.Client) *GetPersonalChatHistoryV1PublicParams {
	var ()
	return &GetPersonalChatHistoryV1PublicParams{
		HTTPClient: client,
	}
}

/*GetPersonalChatHistoryV1PublicParams contains all the parameters to send to the API endpoint
for the get personal chat history v1 public operation typically these are written to a http.Request
*/
type GetPersonalChatHistoryV1PublicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*FriendID
	  Friend User ID, should follow UUID version 4 without hyphen

	*/
	FriendID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) WithTimeout(timeout time.Duration) *GetPersonalChatHistoryV1PublicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) WithContext(ctx context.Context) *GetPersonalChatHistoryV1PublicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) WithHTTPClient(client *http.Client) *GetPersonalChatHistoryV1PublicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFriendID adds the friendID to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) WithFriendID(friendID string) *GetPersonalChatHistoryV1PublicParams {
	o.SetFriendID(friendID)
	return o
}

// SetFriendID adds the friendId to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) SetFriendID(friendID string) {
	o.FriendID = friendID
}

// WithNamespace adds the namespace to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) WithNamespace(namespace string) *GetPersonalChatHistoryV1PublicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get personal chat history v1 public params
func (o *GetPersonalChatHistoryV1PublicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetPersonalChatHistoryV1PublicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
