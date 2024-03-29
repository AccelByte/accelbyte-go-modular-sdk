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

// NewDeleteAllUserGroupParams creates a new DeleteAllUserGroupParams object
// with the default values initialized.
func NewDeleteAllUserGroupParams() *DeleteAllUserGroupParams {
	var ()
	return &DeleteAllUserGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAllUserGroupParamsWithTimeout creates a new DeleteAllUserGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAllUserGroupParamsWithTimeout(timeout time.Duration) *DeleteAllUserGroupParams {
	var ()
	return &DeleteAllUserGroupParams{

		timeout: timeout,
	}
}

// NewDeleteAllUserGroupParamsWithContext creates a new DeleteAllUserGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAllUserGroupParamsWithContext(ctx context.Context) *DeleteAllUserGroupParams {
	var ()
	return &DeleteAllUserGroupParams{

		Context: ctx,
	}
}

// NewDeleteAllUserGroupParamsWithHTTPClient creates a new DeleteAllUserGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAllUserGroupParamsWithHTTPClient(client *http.Client) *DeleteAllUserGroupParams {
	var ()
	return &DeleteAllUserGroupParams{
		HTTPClient: client,
	}
}

/*DeleteAllUserGroupParams contains all the parameters to send to the API endpoint
for the delete all user group operation typically these are written to a http.Request
*/
type DeleteAllUserGroupParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete all user group params
func (o *DeleteAllUserGroupParams) WithTimeout(timeout time.Duration) *DeleteAllUserGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete all user group params
func (o *DeleteAllUserGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete all user group params
func (o *DeleteAllUserGroupParams) WithContext(ctx context.Context) *DeleteAllUserGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete all user group params
func (o *DeleteAllUserGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete all user group params
func (o *DeleteAllUserGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete all user group params
func (o *DeleteAllUserGroupParams) WithHTTPClient(client *http.Client) *DeleteAllUserGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete all user group params
func (o *DeleteAllUserGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete all user group params
func (o *DeleteAllUserGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAllUserGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete all user group params
func (o *DeleteAllUserGroupParams) WithNamespace(namespace string) *DeleteAllUserGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete all user group params
func (o *DeleteAllUserGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete all user group params
func (o *DeleteAllUserGroupParams) WithUserID(userID string) *DeleteAllUserGroupParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete all user group params
func (o *DeleteAllUserGroupParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAllUserGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
