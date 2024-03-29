// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

// NewDeleteUserInformationParams creates a new DeleteUserInformationParams object
// with the default values initialized.
func NewDeleteUserInformationParams() *DeleteUserInformationParams {
	var ()
	return &DeleteUserInformationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserInformationParamsWithTimeout creates a new DeleteUserInformationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserInformationParamsWithTimeout(timeout time.Duration) *DeleteUserInformationParams {
	var ()
	return &DeleteUserInformationParams{

		timeout: timeout,
	}
}

// NewDeleteUserInformationParamsWithContext creates a new DeleteUserInformationParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserInformationParamsWithContext(ctx context.Context) *DeleteUserInformationParams {
	var ()
	return &DeleteUserInformationParams{

		Context: ctx,
	}
}

// NewDeleteUserInformationParamsWithHTTPClient creates a new DeleteUserInformationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserInformationParamsWithHTTPClient(client *http.Client) *DeleteUserInformationParams {
	var ()
	return &DeleteUserInformationParams{
		HTTPClient: client,
	}
}

/*DeleteUserInformationParams contains all the parameters to send to the API endpoint
for the delete user information operation typically these are written to a http.Request
*/
type DeleteUserInformationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

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

// WithTimeout adds the timeout to the delete user information params
func (o *DeleteUserInformationParams) WithTimeout(timeout time.Duration) *DeleteUserInformationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user information params
func (o *DeleteUserInformationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user information params
func (o *DeleteUserInformationParams) WithContext(ctx context.Context) *DeleteUserInformationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user information params
func (o *DeleteUserInformationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user information params
func (o *DeleteUserInformationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user information params
func (o *DeleteUserInformationParams) WithHTTPClient(client *http.Client) *DeleteUserInformationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user information params
func (o *DeleteUserInformationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user information params
func (o *DeleteUserInformationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteUserInformationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete user information params
func (o *DeleteUserInformationParams) WithNamespace(namespace string) *DeleteUserInformationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user information params
func (o *DeleteUserInformationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user information params
func (o *DeleteUserInformationParams) WithUserID(userID string) *DeleteUserInformationParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user information params
func (o *DeleteUserInformationParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserInformationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
