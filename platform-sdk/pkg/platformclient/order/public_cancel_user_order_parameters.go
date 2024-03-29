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
)

// NewPublicCancelUserOrderParams creates a new PublicCancelUserOrderParams object
// with the default values initialized.
func NewPublicCancelUserOrderParams() *PublicCancelUserOrderParams {
	var ()
	return &PublicCancelUserOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCancelUserOrderParamsWithTimeout creates a new PublicCancelUserOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCancelUserOrderParamsWithTimeout(timeout time.Duration) *PublicCancelUserOrderParams {
	var ()
	return &PublicCancelUserOrderParams{

		timeout: timeout,
	}
}

// NewPublicCancelUserOrderParamsWithContext creates a new PublicCancelUserOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCancelUserOrderParamsWithContext(ctx context.Context) *PublicCancelUserOrderParams {
	var ()
	return &PublicCancelUserOrderParams{

		Context: ctx,
	}
}

// NewPublicCancelUserOrderParamsWithHTTPClient creates a new PublicCancelUserOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCancelUserOrderParamsWithHTTPClient(client *http.Client) *PublicCancelUserOrderParams {
	var ()
	return &PublicCancelUserOrderParams{
		HTTPClient: client,
	}
}

/*PublicCancelUserOrderParams contains all the parameters to send to the API endpoint
for the public cancel user order operation typically these are written to a http.Request
*/
type PublicCancelUserOrderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the public cancel user order params
func (o *PublicCancelUserOrderParams) WithTimeout(timeout time.Duration) *PublicCancelUserOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public cancel user order params
func (o *PublicCancelUserOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public cancel user order params
func (o *PublicCancelUserOrderParams) WithContext(ctx context.Context) *PublicCancelUserOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public cancel user order params
func (o *PublicCancelUserOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public cancel user order params
func (o *PublicCancelUserOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public cancel user order params
func (o *PublicCancelUserOrderParams) WithHTTPClient(client *http.Client) *PublicCancelUserOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public cancel user order params
func (o *PublicCancelUserOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public cancel user order params
func (o *PublicCancelUserOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicCancelUserOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public cancel user order params
func (o *PublicCancelUserOrderParams) WithNamespace(namespace string) *PublicCancelUserOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public cancel user order params
func (o *PublicCancelUserOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrderNo adds the orderNo to the public cancel user order params
func (o *PublicCancelUserOrderParams) WithOrderNo(orderNo string) *PublicCancelUserOrderParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the public cancel user order params
func (o *PublicCancelUserOrderParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WithUserID adds the userID to the public cancel user order params
func (o *PublicCancelUserOrderParams) WithUserID(userID string) *PublicCancelUserOrderParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public cancel user order params
func (o *PublicCancelUserOrderParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCancelUserOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
