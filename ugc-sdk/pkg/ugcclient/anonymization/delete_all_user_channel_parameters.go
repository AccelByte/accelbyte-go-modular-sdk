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

// NewDeleteAllUserChannelParams creates a new DeleteAllUserChannelParams object
// with the default values initialized.
func NewDeleteAllUserChannelParams() *DeleteAllUserChannelParams {
	var ()
	return &DeleteAllUserChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAllUserChannelParamsWithTimeout creates a new DeleteAllUserChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAllUserChannelParamsWithTimeout(timeout time.Duration) *DeleteAllUserChannelParams {
	var ()
	return &DeleteAllUserChannelParams{

		timeout: timeout,
	}
}

// NewDeleteAllUserChannelParamsWithContext creates a new DeleteAllUserChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAllUserChannelParamsWithContext(ctx context.Context) *DeleteAllUserChannelParams {
	var ()
	return &DeleteAllUserChannelParams{

		Context: ctx,
	}
}

// NewDeleteAllUserChannelParamsWithHTTPClient creates a new DeleteAllUserChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAllUserChannelParamsWithHTTPClient(client *http.Client) *DeleteAllUserChannelParams {
	var ()
	return &DeleteAllUserChannelParams{
		HTTPClient: client,
	}
}

/*DeleteAllUserChannelParams contains all the parameters to send to the API endpoint
for the delete all user channel operation typically these are written to a http.Request
*/
type DeleteAllUserChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete all user channel params
func (o *DeleteAllUserChannelParams) WithTimeout(timeout time.Duration) *DeleteAllUserChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete all user channel params
func (o *DeleteAllUserChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete all user channel params
func (o *DeleteAllUserChannelParams) WithContext(ctx context.Context) *DeleteAllUserChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete all user channel params
func (o *DeleteAllUserChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete all user channel params
func (o *DeleteAllUserChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete all user channel params
func (o *DeleteAllUserChannelParams) WithHTTPClient(client *http.Client) *DeleteAllUserChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete all user channel params
func (o *DeleteAllUserChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete all user channel params
func (o *DeleteAllUserChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAllUserChannelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete all user channel params
func (o *DeleteAllUserChannelParams) WithNamespace(namespace string) *DeleteAllUserChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete all user channel params
func (o *DeleteAllUserChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete all user channel params
func (o *DeleteAllUserChannelParams) WithUserID(userID string) *DeleteAllUserChannelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete all user channel params
func (o *DeleteAllUserChannelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAllUserChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
