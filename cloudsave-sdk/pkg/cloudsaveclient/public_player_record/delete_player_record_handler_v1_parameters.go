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
)

// NewDeletePlayerRecordHandlerV1Params creates a new DeletePlayerRecordHandlerV1Params object
// with the default values initialized.
func NewDeletePlayerRecordHandlerV1Params() *DeletePlayerRecordHandlerV1Params {
	var ()
	return &DeletePlayerRecordHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePlayerRecordHandlerV1ParamsWithTimeout creates a new DeletePlayerRecordHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePlayerRecordHandlerV1ParamsWithTimeout(timeout time.Duration) *DeletePlayerRecordHandlerV1Params {
	var ()
	return &DeletePlayerRecordHandlerV1Params{

		timeout: timeout,
	}
}

// NewDeletePlayerRecordHandlerV1ParamsWithContext creates a new DeletePlayerRecordHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePlayerRecordHandlerV1ParamsWithContext(ctx context.Context) *DeletePlayerRecordHandlerV1Params {
	var ()
	return &DeletePlayerRecordHandlerV1Params{

		Context: ctx,
	}
}

// NewDeletePlayerRecordHandlerV1ParamsWithHTTPClient creates a new DeletePlayerRecordHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePlayerRecordHandlerV1ParamsWithHTTPClient(client *http.Client) *DeletePlayerRecordHandlerV1Params {
	var ()
	return &DeletePlayerRecordHandlerV1Params{
		HTTPClient: client,
	}
}

/*DeletePlayerRecordHandlerV1Params contains all the parameters to send to the API endpoint
for the delete player record handler v1 operation typically these are written to a http.Request
*/
type DeletePlayerRecordHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user ID who own the record, should follow UUID version 4 without hyphen format

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) WithTimeout(timeout time.Duration) *DeletePlayerRecordHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) WithContext(ctx context.Context) *DeletePlayerRecordHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) WithHTTPClient(client *http.Client) *DeletePlayerRecordHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithKey adds the key to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) WithKey(key string) *DeletePlayerRecordHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) WithNamespace(namespace string) *DeletePlayerRecordHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) WithUserID(userID string) *DeletePlayerRecordHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete player record handler v1 params
func (o *DeletePlayerRecordHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePlayerRecordHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
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
