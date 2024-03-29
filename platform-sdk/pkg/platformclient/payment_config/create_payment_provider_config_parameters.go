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

// NewCreatePaymentProviderConfigParams creates a new CreatePaymentProviderConfigParams object
// with the default values initialized.
func NewCreatePaymentProviderConfigParams() *CreatePaymentProviderConfigParams {
	var ()
	return &CreatePaymentProviderConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreatePaymentProviderConfigParamsWithTimeout creates a new CreatePaymentProviderConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreatePaymentProviderConfigParamsWithTimeout(timeout time.Duration) *CreatePaymentProviderConfigParams {
	var ()
	return &CreatePaymentProviderConfigParams{

		timeout: timeout,
	}
}

// NewCreatePaymentProviderConfigParamsWithContext creates a new CreatePaymentProviderConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreatePaymentProviderConfigParamsWithContext(ctx context.Context) *CreatePaymentProviderConfigParams {
	var ()
	return &CreatePaymentProviderConfigParams{

		Context: ctx,
	}
}

// NewCreatePaymentProviderConfigParamsWithHTTPClient creates a new CreatePaymentProviderConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreatePaymentProviderConfigParamsWithHTTPClient(client *http.Client) *CreatePaymentProviderConfigParams {
	var ()
	return &CreatePaymentProviderConfigParams{
		HTTPClient: client,
	}
}

/*CreatePaymentProviderConfigParams contains all the parameters to send to the API endpoint
for the create payment provider config operation typically these are written to a http.Request
*/
type CreatePaymentProviderConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PaymentProviderConfigEdit

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) WithTimeout(timeout time.Duration) *CreatePaymentProviderConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) WithContext(ctx context.Context) *CreatePaymentProviderConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) WithHTTPClient(client *http.Client) *CreatePaymentProviderConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreatePaymentProviderConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) WithBody(body *platformclientmodels.PaymentProviderConfigEdit) *CreatePaymentProviderConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create payment provider config params
func (o *CreatePaymentProviderConfigParams) SetBody(body *platformclientmodels.PaymentProviderConfigEdit) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *CreatePaymentProviderConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
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
