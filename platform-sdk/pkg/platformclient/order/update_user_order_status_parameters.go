// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package order

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateUserOrderStatusParams creates a new UpdateUserOrderStatusParams object
// with the default values initialized.
func NewUpdateUserOrderStatusParams() *UpdateUserOrderStatusParams {
	var ()
	return &UpdateUserOrderStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateUserOrderStatusParamsWithTimeout creates a new UpdateUserOrderStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateUserOrderStatusParamsWithTimeout(timeout time.Duration) *UpdateUserOrderStatusParams {
	var ()
	return &UpdateUserOrderStatusParams{

		timeout: timeout,
	}
}

// NewUpdateUserOrderStatusParamsWithContext creates a new UpdateUserOrderStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateUserOrderStatusParamsWithContext(ctx context.Context) *UpdateUserOrderStatusParams {
	var ()
	return &UpdateUserOrderStatusParams{

		Context: ctx,
	}
}

// NewUpdateUserOrderStatusParamsWithHTTPClient creates a new UpdateUserOrderStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateUserOrderStatusParamsWithHTTPClient(client *http.Client) *UpdateUserOrderStatusParams {
	var ()
	return &UpdateUserOrderStatusParams{
		HTTPClient: client,
	}
}

/*UpdateUserOrderStatusParams contains all the parameters to send to the API endpoint
for the update user order status operation typically these are written to a http.Request
*/
type UpdateUserOrderStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.OrderUpdate
	/*Namespace*/
	Namespace string
	/*OrderNo*/
	OrderNo string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update user order status params
func (o *UpdateUserOrderStatusParams) WithTimeout(timeout time.Duration) *UpdateUserOrderStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update user order status params
func (o *UpdateUserOrderStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update user order status params
func (o *UpdateUserOrderStatusParams) WithContext(ctx context.Context) *UpdateUserOrderStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update user order status params
func (o *UpdateUserOrderStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update user order status params
func (o *UpdateUserOrderStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update user order status params
func (o *UpdateUserOrderStatusParams) WithHTTPClient(client *http.Client) *UpdateUserOrderStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update user order status params
func (o *UpdateUserOrderStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update user order status params
func (o *UpdateUserOrderStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateUserOrderStatusParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update user order status params
func (o *UpdateUserOrderStatusParams) WithBody(body *platformclientmodels.OrderUpdate) *UpdateUserOrderStatusParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update user order status params
func (o *UpdateUserOrderStatusParams) SetBody(body *platformclientmodels.OrderUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update user order status params
func (o *UpdateUserOrderStatusParams) WithNamespace(namespace string) *UpdateUserOrderStatusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update user order status params
func (o *UpdateUserOrderStatusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrderNo adds the orderNo to the update user order status params
func (o *UpdateUserOrderStatusParams) WithOrderNo(orderNo string) *UpdateUserOrderStatusParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the update user order status params
func (o *UpdateUserOrderStatusParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WithUserID adds the userID to the update user order status params
func (o *UpdateUserOrderStatusParams) WithUserID(userID string) *UpdateUserOrderStatusParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update user order status params
func (o *UpdateUserOrderStatusParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateUserOrderStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param orderNo
	if err := r.SetPathParam("orderNo", o.OrderNo); err != nil {
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
