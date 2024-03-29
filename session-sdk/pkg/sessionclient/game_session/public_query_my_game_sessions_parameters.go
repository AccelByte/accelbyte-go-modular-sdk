// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package game_session

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

// NewPublicQueryMyGameSessionsParams creates a new PublicQueryMyGameSessionsParams object
// with the default values initialized.
func NewPublicQueryMyGameSessionsParams() *PublicQueryMyGameSessionsParams {
	var ()
	return &PublicQueryMyGameSessionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryMyGameSessionsParamsWithTimeout creates a new PublicQueryMyGameSessionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryMyGameSessionsParamsWithTimeout(timeout time.Duration) *PublicQueryMyGameSessionsParams {
	var ()
	return &PublicQueryMyGameSessionsParams{

		timeout: timeout,
	}
}

// NewPublicQueryMyGameSessionsParamsWithContext creates a new PublicQueryMyGameSessionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryMyGameSessionsParamsWithContext(ctx context.Context) *PublicQueryMyGameSessionsParams {
	var ()
	return &PublicQueryMyGameSessionsParams{

		Context: ctx,
	}
}

// NewPublicQueryMyGameSessionsParamsWithHTTPClient creates a new PublicQueryMyGameSessionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryMyGameSessionsParamsWithHTTPClient(client *http.Client) *PublicQueryMyGameSessionsParams {
	var ()
	return &PublicQueryMyGameSessionsParams{
		HTTPClient: client,
	}
}

/*PublicQueryMyGameSessionsParams contains all the parameters to send to the API endpoint
for the public query my game sessions operation typically these are written to a http.Request
*/
type PublicQueryMyGameSessionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Order
	  Order of the result. Supported: desc (default), asc

	*/
	Order *string
	/*OrderBy
	  Order result by specific attribute. Supported: createdAt (default), updatedAt

	*/
	OrderBy *string
	/*Status
	  game session status to filter. supported status: INVITED,JOINED,CONNECTED

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) WithTimeout(timeout time.Duration) *PublicQueryMyGameSessionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) WithContext(ctx context.Context) *PublicQueryMyGameSessionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) WithHTTPClient(client *http.Client) *PublicQueryMyGameSessionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicQueryMyGameSessionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) WithNamespace(namespace string) *PublicQueryMyGameSessionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOrder adds the order to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) WithOrder(order *string) *PublicQueryMyGameSessionsParams {
	o.SetOrder(order)
	return o
}

// SetOrder adds the order to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) SetOrder(order *string) {
	o.Order = order
}

// WithOrderBy adds the orderBy to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) WithOrderBy(orderBy *string) *PublicQueryMyGameSessionsParams {
	o.SetOrderBy(orderBy)
	return o
}

// SetOrderBy adds the orderBy to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) SetOrderBy(orderBy *string) {
	o.OrderBy = orderBy
}

// WithStatus adds the status to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) WithStatus(status *string) *PublicQueryMyGameSessionsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the public query my game sessions params
func (o *PublicQueryMyGameSessionsParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryMyGameSessionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Order != nil {

		// query param order
		var qrOrder string
		if o.Order != nil {
			qrOrder = *o.Order
		}
		qOrder := qrOrder
		if qOrder != "" {
			if err := r.SetQueryParam("order", qOrder); err != nil {
				return err
			}
		}

	}

	if o.OrderBy != nil {

		// query param orderBy
		var qrOrderBy string
		if o.OrderBy != nil {
			qrOrderBy = *o.OrderBy
		}
		qOrderBy := qrOrderBy
		if qOrderBy != "" {
			if err := r.SetQueryParam("orderBy", qOrderBy); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
