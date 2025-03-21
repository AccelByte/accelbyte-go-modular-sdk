// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package messages

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

// NewPublicGetMessagesParams creates a new PublicGetMessagesParams object
// with the default values initialized.
func NewPublicGetMessagesParams() *PublicGetMessagesParams {
	var ()
	return &PublicGetMessagesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMessagesParamsWithTimeout creates a new PublicGetMessagesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMessagesParamsWithTimeout(timeout time.Duration) *PublicGetMessagesParams {
	var ()
	return &PublicGetMessagesParams{

		timeout: timeout,
	}
}

// NewPublicGetMessagesParamsWithContext creates a new PublicGetMessagesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMessagesParamsWithContext(ctx context.Context) *PublicGetMessagesParams {
	var ()
	return &PublicGetMessagesParams{

		Context: ctx,
	}
}

// NewPublicGetMessagesParamsWithHTTPClient creates a new PublicGetMessagesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMessagesParamsWithHTTPClient(client *http.Client) *PublicGetMessagesParams {
	var ()
	return &PublicGetMessagesParams{
		HTTPClient: client,
	}
}

/*PublicGetMessagesParams contains all the parameters to send to the API endpoint
for the public get messages operation typically these are written to a http.Request
*/
type PublicGetMessagesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get messages params
func (o *PublicGetMessagesParams) WithTimeout(timeout time.Duration) *PublicGetMessagesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get messages params
func (o *PublicGetMessagesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get messages params
func (o *PublicGetMessagesParams) WithContext(ctx context.Context) *PublicGetMessagesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get messages params
func (o *PublicGetMessagesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get messages params
func (o *PublicGetMessagesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get messages params
func (o *PublicGetMessagesParams) WithHTTPClient(client *http.Client) *PublicGetMessagesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get messages params
func (o *PublicGetMessagesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get messages params
func (o *PublicGetMessagesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetMessagesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMessagesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
