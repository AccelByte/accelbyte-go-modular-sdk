// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot_config

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

// NewDeleteUserSlotConfigParams creates a new DeleteUserSlotConfigParams object
// with the default values initialized.
func NewDeleteUserSlotConfigParams() *DeleteUserSlotConfigParams {
	var ()
	return &DeleteUserSlotConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserSlotConfigParamsWithTimeout creates a new DeleteUserSlotConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserSlotConfigParamsWithTimeout(timeout time.Duration) *DeleteUserSlotConfigParams {
	var ()
	return &DeleteUserSlotConfigParams{

		timeout: timeout,
	}
}

// NewDeleteUserSlotConfigParamsWithContext creates a new DeleteUserSlotConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserSlotConfigParamsWithContext(ctx context.Context) *DeleteUserSlotConfigParams {
	var ()
	return &DeleteUserSlotConfigParams{

		Context: ctx,
	}
}

// NewDeleteUserSlotConfigParamsWithHTTPClient creates a new DeleteUserSlotConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserSlotConfigParamsWithHTTPClient(client *http.Client) *DeleteUserSlotConfigParams {
	var ()
	return &DeleteUserSlotConfigParams{
		HTTPClient: client,
	}
}

/*DeleteUserSlotConfigParams contains all the parameters to send to the API endpoint
for the delete user slot config operation typically these are written to a http.Request
*/
type DeleteUserSlotConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete user slot config params
func (o *DeleteUserSlotConfigParams) WithTimeout(timeout time.Duration) *DeleteUserSlotConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user slot config params
func (o *DeleteUserSlotConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user slot config params
func (o *DeleteUserSlotConfigParams) WithContext(ctx context.Context) *DeleteUserSlotConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user slot config params
func (o *DeleteUserSlotConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user slot config params
func (o *DeleteUserSlotConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user slot config params
func (o *DeleteUserSlotConfigParams) WithHTTPClient(client *http.Client) *DeleteUserSlotConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user slot config params
func (o *DeleteUserSlotConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user slot config params
func (o *DeleteUserSlotConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteUserSlotConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete user slot config params
func (o *DeleteUserSlotConfigParams) WithNamespace(namespace string) *DeleteUserSlotConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user slot config params
func (o *DeleteUserSlotConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user slot config params
func (o *DeleteUserSlotConfigParams) WithUserID(userID string) *DeleteUserSlotConfigParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user slot config params
func (o *DeleteUserSlotConfigParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserSlotConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
