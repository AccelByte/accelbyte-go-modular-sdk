// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

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

// NewDeleteAllUserContentsParams creates a new DeleteAllUserContentsParams object
// with the default values initialized.
func NewDeleteAllUserContentsParams() *DeleteAllUserContentsParams {
	var ()
	return &DeleteAllUserContentsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAllUserContentsParamsWithTimeout creates a new DeleteAllUserContentsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAllUserContentsParamsWithTimeout(timeout time.Duration) *DeleteAllUserContentsParams {
	var ()
	return &DeleteAllUserContentsParams{

		timeout: timeout,
	}
}

// NewDeleteAllUserContentsParamsWithContext creates a new DeleteAllUserContentsParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAllUserContentsParamsWithContext(ctx context.Context) *DeleteAllUserContentsParams {
	var ()
	return &DeleteAllUserContentsParams{

		Context: ctx,
	}
}

// NewDeleteAllUserContentsParamsWithHTTPClient creates a new DeleteAllUserContentsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAllUserContentsParamsWithHTTPClient(client *http.Client) *DeleteAllUserContentsParams {
	var ()
	return &DeleteAllUserContentsParams{
		HTTPClient: client,
	}
}

/*DeleteAllUserContentsParams contains all the parameters to send to the API endpoint
for the delete all user contents operation typically these are written to a http.Request
*/
type DeleteAllUserContentsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

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

// WithTimeout adds the timeout to the delete all user contents params
func (o *DeleteAllUserContentsParams) WithTimeout(timeout time.Duration) *DeleteAllUserContentsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete all user contents params
func (o *DeleteAllUserContentsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete all user contents params
func (o *DeleteAllUserContentsParams) WithContext(ctx context.Context) *DeleteAllUserContentsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete all user contents params
func (o *DeleteAllUserContentsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete all user contents params
func (o *DeleteAllUserContentsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete all user contents params
func (o *DeleteAllUserContentsParams) WithHTTPClient(client *http.Client) *DeleteAllUserContentsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete all user contents params
func (o *DeleteAllUserContentsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete all user contents params
func (o *DeleteAllUserContentsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete all user contents params
func (o *DeleteAllUserContentsParams) WithNamespace(namespace string) *DeleteAllUserContentsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete all user contents params
func (o *DeleteAllUserContentsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete all user contents params
func (o *DeleteAllUserContentsParams) WithUserID(userID string) *DeleteAllUserContentsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete all user contents params
func (o *DeleteAllUserContentsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAllUserContentsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
