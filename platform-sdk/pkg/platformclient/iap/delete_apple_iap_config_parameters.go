// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package iap

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

// NewDeleteAppleIAPConfigParams creates a new DeleteAppleIAPConfigParams object
// with the default values initialized.
func NewDeleteAppleIAPConfigParams() *DeleteAppleIAPConfigParams {
	var ()
	return &DeleteAppleIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAppleIAPConfigParamsWithTimeout creates a new DeleteAppleIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAppleIAPConfigParamsWithTimeout(timeout time.Duration) *DeleteAppleIAPConfigParams {
	var ()
	return &DeleteAppleIAPConfigParams{

		timeout: timeout,
	}
}

// NewDeleteAppleIAPConfigParamsWithContext creates a new DeleteAppleIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAppleIAPConfigParamsWithContext(ctx context.Context) *DeleteAppleIAPConfigParams {
	var ()
	return &DeleteAppleIAPConfigParams{

		Context: ctx,
	}
}

// NewDeleteAppleIAPConfigParamsWithHTTPClient creates a new DeleteAppleIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAppleIAPConfigParamsWithHTTPClient(client *http.Client) *DeleteAppleIAPConfigParams {
	var ()
	return &DeleteAppleIAPConfigParams{
		HTTPClient: client,
	}
}

/*DeleteAppleIAPConfigParams contains all the parameters to send to the API endpoint
for the delete apple iap config operation typically these are written to a http.Request
*/
type DeleteAppleIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) WithTimeout(timeout time.Duration) *DeleteAppleIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) WithContext(ctx context.Context) *DeleteAppleIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) WithHTTPClient(client *http.Client) *DeleteAppleIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAppleIAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) WithNamespace(namespace string) *DeleteAppleIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete apple iap config params
func (o *DeleteAppleIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAppleIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
