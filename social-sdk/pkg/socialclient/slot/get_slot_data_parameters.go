// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot

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

// NewGetSlotDataParams creates a new GetSlotDataParams object
// with the default values initialized.
func NewGetSlotDataParams() *GetSlotDataParams {
	var ()
	return &GetSlotDataParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSlotDataParamsWithTimeout creates a new GetSlotDataParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSlotDataParamsWithTimeout(timeout time.Duration) *GetSlotDataParams {
	var ()
	return &GetSlotDataParams{

		timeout: timeout,
	}
}

// NewGetSlotDataParamsWithContext creates a new GetSlotDataParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSlotDataParamsWithContext(ctx context.Context) *GetSlotDataParams {
	var ()
	return &GetSlotDataParams{

		Context: ctx,
	}
}

// NewGetSlotDataParamsWithHTTPClient creates a new GetSlotDataParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSlotDataParamsWithHTTPClient(client *http.Client) *GetSlotDataParams {
	var ()
	return &GetSlotDataParams{
		HTTPClient: client,
	}
}

/*GetSlotDataParams contains all the parameters to send to the API endpoint
for the get slot data operation typically these are written to a http.Request
*/
type GetSlotDataParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*SlotID
	  Slot ID

	*/
	SlotID string
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

// WithTimeout adds the timeout to the get slot data params
func (o *GetSlotDataParams) WithTimeout(timeout time.Duration) *GetSlotDataParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get slot data params
func (o *GetSlotDataParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get slot data params
func (o *GetSlotDataParams) WithContext(ctx context.Context) *GetSlotDataParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get slot data params
func (o *GetSlotDataParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get slot data params
func (o *GetSlotDataParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get slot data params
func (o *GetSlotDataParams) WithHTTPClient(client *http.Client) *GetSlotDataParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get slot data params
func (o *GetSlotDataParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get slot data params
func (o *GetSlotDataParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSlotDataParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get slot data params
func (o *GetSlotDataParams) WithNamespace(namespace string) *GetSlotDataParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get slot data params
func (o *GetSlotDataParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSlotID adds the slotID to the get slot data params
func (o *GetSlotDataParams) WithSlotID(slotID string) *GetSlotDataParams {
	o.SetSlotID(slotID)
	return o
}

// SetSlotID adds the slotId to the get slot data params
func (o *GetSlotDataParams) SetSlotID(slotID string) {
	o.SlotID = slotID
}

// WithUserID adds the userID to the get slot data params
func (o *GetSlotDataParams) WithUserID(userID string) *GetSlotDataParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get slot data params
func (o *GetSlotDataParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetSlotDataParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param slotId
	if err := r.SetPathParam("slotId", o.SlotID); err != nil {
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
