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

	"github.com/AccelByte/accelbyte-go-modular-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdatePaymentProviderConfigParams creates a new UpdatePaymentProviderConfigParams object
// with the default values initialized.
func NewUpdatePaymentProviderConfigParams() *UpdatePaymentProviderConfigParams {
	var ()
	return &UpdatePaymentProviderConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePaymentProviderConfigParamsWithTimeout creates a new UpdatePaymentProviderConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePaymentProviderConfigParamsWithTimeout(timeout time.Duration) *UpdatePaymentProviderConfigParams {
	var ()
	return &UpdatePaymentProviderConfigParams{

		timeout: timeout,
	}
}

// NewUpdatePaymentProviderConfigParamsWithContext creates a new UpdatePaymentProviderConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePaymentProviderConfigParamsWithContext(ctx context.Context) *UpdatePaymentProviderConfigParams {
	var ()
	return &UpdatePaymentProviderConfigParams{

		Context: ctx,
	}
}

// NewUpdatePaymentProviderConfigParamsWithHTTPClient creates a new UpdatePaymentProviderConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePaymentProviderConfigParamsWithHTTPClient(client *http.Client) *UpdatePaymentProviderConfigParams {
	var ()
	return &UpdatePaymentProviderConfigParams{
		HTTPClient: client,
	}
}

/*UpdatePaymentProviderConfigParams contains all the parameters to send to the API endpoint
for the update payment provider config operation typically these are written to a http.Request
*/
type UpdatePaymentProviderConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PaymentProviderConfigEdit
	/*ID
	  id

	*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) WithTimeout(timeout time.Duration) *UpdatePaymentProviderConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) WithContext(ctx context.Context) *UpdatePaymentProviderConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) WithHTTPClient(client *http.Client) *UpdatePaymentProviderConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdatePaymentProviderConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) WithBody(body *platformclientmodels.PaymentProviderConfigEdit) *UpdatePaymentProviderConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) SetBody(body *platformclientmodels.PaymentProviderConfigEdit) {
	o.Body = body
}

// WithID adds the idVar to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) WithID(idVar string) *UpdatePaymentProviderConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the update payment provider config params
func (o *UpdatePaymentProviderConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePaymentProviderConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
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
