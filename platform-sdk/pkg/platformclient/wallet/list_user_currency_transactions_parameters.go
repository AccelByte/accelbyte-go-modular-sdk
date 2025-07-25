// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package wallet

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewListUserCurrencyTransactionsParams creates a new ListUserCurrencyTransactionsParams object
// with the default values initialized.
func NewListUserCurrencyTransactionsParams() *ListUserCurrencyTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &ListUserCurrencyTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListUserCurrencyTransactionsParamsWithTimeout creates a new ListUserCurrencyTransactionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListUserCurrencyTransactionsParamsWithTimeout(timeout time.Duration) *ListUserCurrencyTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &ListUserCurrencyTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewListUserCurrencyTransactionsParamsWithContext creates a new ListUserCurrencyTransactionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListUserCurrencyTransactionsParamsWithContext(ctx context.Context) *ListUserCurrencyTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &ListUserCurrencyTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewListUserCurrencyTransactionsParamsWithHTTPClient creates a new ListUserCurrencyTransactionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListUserCurrencyTransactionsParamsWithHTTPClient(client *http.Client) *ListUserCurrencyTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &ListUserCurrencyTransactionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*ListUserCurrencyTransactionsParams contains all the parameters to send to the API endpoint
for the list user currency transactions operation typically these are written to a http.Request
*/
type ListUserCurrencyTransactionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CurrencyCode
	  currencyCode

	*/
	CurrencyCode string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  userId

	*/
	UserID string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) WithTimeout(timeout time.Duration) *ListUserCurrencyTransactionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) WithContext(ctx context.Context) *ListUserCurrencyTransactionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) WithHTTPClient(client *http.Client) *ListUserCurrencyTransactionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListUserCurrencyTransactionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCurrencyCode adds the currencyCode to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) WithCurrencyCode(currencyCode string) *ListUserCurrencyTransactionsParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) WithNamespace(namespace string) *ListUserCurrencyTransactionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) WithUserID(userID string) *ListUserCurrencyTransactionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) WithLimit(limit *int32) *ListUserCurrencyTransactionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) WithOffset(offset *int32) *ListUserCurrencyTransactionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list user currency transactions params
func (o *ListUserCurrencyTransactionsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *ListUserCurrencyTransactionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param currencyCode
	if err := r.SetPathParam("currencyCode", o.CurrencyCode); err != nil {
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

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

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
