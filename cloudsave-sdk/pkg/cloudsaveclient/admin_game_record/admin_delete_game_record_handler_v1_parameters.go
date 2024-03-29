// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_game_record

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

// NewAdminDeleteGameRecordHandlerV1Params creates a new AdminDeleteGameRecordHandlerV1Params object
// with the default values initialized.
func NewAdminDeleteGameRecordHandlerV1Params() *AdminDeleteGameRecordHandlerV1Params {
	var ()
	return &AdminDeleteGameRecordHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteGameRecordHandlerV1ParamsWithTimeout creates a new AdminDeleteGameRecordHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteGameRecordHandlerV1ParamsWithTimeout(timeout time.Duration) *AdminDeleteGameRecordHandlerV1Params {
	var ()
	return &AdminDeleteGameRecordHandlerV1Params{

		timeout: timeout,
	}
}

// NewAdminDeleteGameRecordHandlerV1ParamsWithContext creates a new AdminDeleteGameRecordHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteGameRecordHandlerV1ParamsWithContext(ctx context.Context) *AdminDeleteGameRecordHandlerV1Params {
	var ()
	return &AdminDeleteGameRecordHandlerV1Params{

		Context: ctx,
	}
}

// NewAdminDeleteGameRecordHandlerV1ParamsWithHTTPClient creates a new AdminDeleteGameRecordHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteGameRecordHandlerV1ParamsWithHTTPClient(client *http.Client) *AdminDeleteGameRecordHandlerV1Params {
	var ()
	return &AdminDeleteGameRecordHandlerV1Params{
		HTTPClient: client,
	}
}

/*AdminDeleteGameRecordHandlerV1Params contains all the parameters to send to the API endpoint
for the admin delete game record handler v1 operation typically these are written to a http.Request
*/
type AdminDeleteGameRecordHandlerV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) WithTimeout(timeout time.Duration) *AdminDeleteGameRecordHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) WithContext(ctx context.Context) *AdminDeleteGameRecordHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) WithHTTPClient(client *http.Client) *AdminDeleteGameRecordHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteGameRecordHandlerV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithKey adds the key to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) WithKey(key string) *AdminDeleteGameRecordHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) WithNamespace(namespace string) *AdminDeleteGameRecordHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete game record handler v1 params
func (o *AdminDeleteGameRecordHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteGameRecordHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
	}

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
