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

// NewGetUserOrderParams creates a new GetUserOrderParams object
// with the default values initialized.
func NewGetUserOrderParams() *GetUserOrderParams {
	var ()
	return &GetUserOrderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserOrderParamsWithTimeout creates a new GetUserOrderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserOrderParamsWithTimeout(timeout time.Duration) *GetUserOrderParams {
	var ()
	return &GetUserOrderParams{

		timeout: timeout,
	}
}

// NewGetUserOrderParamsWithContext creates a new GetUserOrderParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserOrderParamsWithContext(ctx context.Context) *GetUserOrderParams {
	var ()
	return &GetUserOrderParams{

		Context: ctx,
	}
}

// NewGetUserOrderParamsWithHTTPClient creates a new GetUserOrderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserOrderParamsWithHTTPClient(client *http.Client) *GetUserOrderParams {
	var ()
	return &GetUserOrderParams{
		HTTPClient: client,
	}
}

/*GetUserOrderParams contains all the parameters to send to the API endpoint
for the get user order operation typically these are written to a http.Request
*/
type GetUserOrderParams struct {

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

// WithTimeout adds the timeout to the get user order params
func (o *GetUserOrderParams) WithTimeout(timeout time.Duration) *GetUserOrderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user order params
func (o *GetUserOrderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user order params
func (o *GetUserOrderParams) WithContext(ctx context.Context) *GetUserOrderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user order params
func (o *GetUserOrderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user order params
func (o *GetUserOrderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user order params
func (o *GetUserOrderParams) WithHTTPClient(client *http.Client) *GetUserOrderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user order params
func (o *GetUserOrderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user order params
func (o *GetUserOrderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserOrderParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user order params
func (o *GetUserOrderParams) WithNamespace(namespace string) *GetUserOrderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user order params
func (o *GetUserOrderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrderNo adds the orderNo to the get user order params
func (o *GetUserOrderParams) WithOrderNo(orderNo string) *GetUserOrderParams {
	o.SetOrderNo(orderNo)
	return o
}

// SetOrderNo adds the orderNo to the get user order params
func (o *GetUserOrderParams) SetOrderNo(orderNo string) {
	o.OrderNo = orderNo
}

// WithUserID adds the userID to the get user order params
func (o *GetUserOrderParams) WithUserID(userID string) *GetUserOrderParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user order params
func (o *GetUserOrderParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserOrderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
