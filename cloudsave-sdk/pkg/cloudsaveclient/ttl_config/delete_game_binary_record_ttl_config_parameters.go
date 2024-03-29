// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ttl_config

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

// NewDeleteGameBinaryRecordTTLConfigParams creates a new DeleteGameBinaryRecordTTLConfigParams object
// with the default values initialized.
func NewDeleteGameBinaryRecordTTLConfigParams() *DeleteGameBinaryRecordTTLConfigParams {
	var ()
	return &DeleteGameBinaryRecordTTLConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteGameBinaryRecordTTLConfigParamsWithTimeout creates a new DeleteGameBinaryRecordTTLConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteGameBinaryRecordTTLConfigParamsWithTimeout(timeout time.Duration) *DeleteGameBinaryRecordTTLConfigParams {
	var ()
	return &DeleteGameBinaryRecordTTLConfigParams{

		timeout: timeout,
	}
}

// NewDeleteGameBinaryRecordTTLConfigParamsWithContext creates a new DeleteGameBinaryRecordTTLConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteGameBinaryRecordTTLConfigParamsWithContext(ctx context.Context) *DeleteGameBinaryRecordTTLConfigParams {
	var ()
	return &DeleteGameBinaryRecordTTLConfigParams{

		Context: ctx,
	}
}

// NewDeleteGameBinaryRecordTTLConfigParamsWithHTTPClient creates a new DeleteGameBinaryRecordTTLConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteGameBinaryRecordTTLConfigParamsWithHTTPClient(client *http.Client) *DeleteGameBinaryRecordTTLConfigParams {
	var ()
	return &DeleteGameBinaryRecordTTLConfigParams{
		HTTPClient: client,
	}
}

/*DeleteGameBinaryRecordTTLConfigParams contains all the parameters to send to the API endpoint
for the delete game binary record ttl config operation typically these are written to a http.Request
*/
type DeleteGameBinaryRecordTTLConfigParams struct {

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

// WithTimeout adds the timeout to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) WithTimeout(timeout time.Duration) *DeleteGameBinaryRecordTTLConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) WithContext(ctx context.Context) *DeleteGameBinaryRecordTTLConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) WithHTTPClient(client *http.Client) *DeleteGameBinaryRecordTTLConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteGameBinaryRecordTTLConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithKey adds the key to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) WithKey(key string) *DeleteGameBinaryRecordTTLConfigParams {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) WithNamespace(namespace string) *DeleteGameBinaryRecordTTLConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete game binary record ttl config params
func (o *DeleteGameBinaryRecordTTLConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteGameBinaryRecordTTLConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
