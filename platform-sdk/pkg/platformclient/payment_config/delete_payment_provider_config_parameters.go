// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package payment_config

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

// NewDeletePaymentProviderConfigParams creates a new DeletePaymentProviderConfigParams object
// with the default values initialized.
func NewDeletePaymentProviderConfigParams() *DeletePaymentProviderConfigParams {
	var ()
	return &DeletePaymentProviderConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePaymentProviderConfigParamsWithTimeout creates a new DeletePaymentProviderConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePaymentProviderConfigParamsWithTimeout(timeout time.Duration) *DeletePaymentProviderConfigParams {
	var ()
	return &DeletePaymentProviderConfigParams{

		timeout: timeout,
	}
}

// NewDeletePaymentProviderConfigParamsWithContext creates a new DeletePaymentProviderConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePaymentProviderConfigParamsWithContext(ctx context.Context) *DeletePaymentProviderConfigParams {
	var ()
	return &DeletePaymentProviderConfigParams{

		Context: ctx,
	}
}

// NewDeletePaymentProviderConfigParamsWithHTTPClient creates a new DeletePaymentProviderConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePaymentProviderConfigParamsWithHTTPClient(client *http.Client) *DeletePaymentProviderConfigParams {
	var ()
	return &DeletePaymentProviderConfigParams{
		HTTPClient: client,
	}
}

/*DeletePaymentProviderConfigParams contains all the parameters to send to the API endpoint
for the delete payment provider config operation typically these are written to a http.Request
*/
type DeletePaymentProviderConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID
	  id

	*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) WithTimeout(timeout time.Duration) *DeletePaymentProviderConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) WithContext(ctx context.Context) *DeletePaymentProviderConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) WithHTTPClient(client *http.Client) *DeletePaymentProviderConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithID adds the idVar to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) WithID(idVar string) *DeletePaymentProviderConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the delete payment provider config params
func (o *DeletePaymentProviderConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePaymentProviderConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
