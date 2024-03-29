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

// NewProcessUserOrderNotificationParams creates a new ProcessUserOrderNotificationParams object
// with the default values initialized.
func NewProcessUserOrderNotificationParams() *ProcessUserOrderNotificationParams {
	var ()
	return &ProcessUserOrderNotificationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewProcessUserOrderNotificationParamsWithTimeout creates a new ProcessUserOrderNotificationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewProcessUserOrderNotificationParamsWithTimeout(timeout time.Duration) *ProcessUserOrderNotificationParams {
	var ()
	return &ProcessUserOrderNotificationParams{

		timeout: timeout,
	}
}

// NewProcessUserOrderNotificationParamsWithContext creates a new ProcessUserOrderNotificationParams object
// with the default values initialized, and the ability to set a context for a request
func NewProcessUserOrderNotificationParamsWithContext(ctx context.Context) *ProcessUserOrderNotificationParams {
	var ()
	return &ProcessUserOrderNotificationParams{

		Context: ctx,
	}
}

// NewProcessUserOrderNotificationParamsWithHTTPClient creates a new ProcessUserOrderNotificationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewProcessUserOrderNotificationParamsWithHTTPClient(client *http.Client) *ProcessUserOrderNotificationParams {
	var ()
	return &ProcessUserOrderNotificationParams{
		HTTPClient: client,
	}
}

/*ProcessUserOrderNotificationParams contains all the parameters to send to the API endpoint
for the process user order notification operation typically these are written to a http.Request
*/
type ProcessUserOrderNotificationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.TradeNotification
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

// WithTimeout adds the timeout to the process user order notification params
func (o *ProcessUserOrderNotificationParams) WithTimeout(timeout time.Duration) *ProcessUserOrderNotificationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the process user order notification params
func (o *ProcessUserOrderNotificationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the process user order notification params
func (o *ProcessUserOrderNotificationParams) WithContext(ctx context.Context) *ProcessUserOrderNotificationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the process user order notification params
func (o *ProcessUserOrderNotificationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the process user order notification params
func (o *ProcessUserOrderNotificationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the process user order notification params
func (o *ProcessUserOrderNotificationParams) WithHTTPClient(client *http.Client) *ProcessUserOrderNotificationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the process user order notification params
func (o *ProcessUserOrderNotificationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the process user order notification params
func (o *ProcessUserOrderNotificationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ProcessUserOrderNotificationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the process user order notification params
func (o *ProcessUserOrderNotificationParams) WithBody(body *platformclientmodels.TradeNotification) *ProcessUserOrderNotificationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the process user order notification params
func (o *ProcessUserOrderNotificationParams) SetBody(body *platformclientmodels.TradeNotification) {
	o.Body = body
}

// WithNamespace adds the namespace to the process user order notification params
func (o *ProcessUserOrderNotificationParams) WithNamespace(namespace string) *ProcessUserOrderNotificationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the process user order notification params
func (o *ProcessUserOrderNotificationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrderNo adds the orderNo to the process user order notification params
func (o *ProcessUserOrderNotificationParams) WithOrderNo(orderNo string) *ProcessUserOrderNotificationParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the process user order notification params
func (o *ProcessUserOrderNotificationParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WithUserID adds the userID to the process user order notification params
func (o *ProcessUserOrderNotificationParams) WithUserID(userID string) *ProcessUserOrderNotificationParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the process user order notification params
func (o *ProcessUserOrderNotificationParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ProcessUserOrderNotificationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
