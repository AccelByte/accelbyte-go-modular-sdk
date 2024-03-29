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

// NewTestXsollaConfigParams creates a new TestXsollaConfigParams object
// with the default values initialized.
func NewTestXsollaConfigParams() *TestXsollaConfigParams {
	var ()
	return &TestXsollaConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewTestXsollaConfigParamsWithTimeout creates a new TestXsollaConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTestXsollaConfigParamsWithTimeout(timeout time.Duration) *TestXsollaConfigParams {
	var ()
	return &TestXsollaConfigParams{

		timeout: timeout,
	}
}

// NewTestXsollaConfigParamsWithContext creates a new TestXsollaConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewTestXsollaConfigParamsWithContext(ctx context.Context) *TestXsollaConfigParams {
	var ()
	return &TestXsollaConfigParams{

		Context: ctx,
	}
}

// NewTestXsollaConfigParamsWithHTTPClient creates a new TestXsollaConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTestXsollaConfigParamsWithHTTPClient(client *http.Client) *TestXsollaConfigParams {
	var ()
	return &TestXsollaConfigParams{
		HTTPClient: client,
	}
}

/*TestXsollaConfigParams contains all the parameters to send to the API endpoint
for the test xsolla config operation typically these are written to a http.Request
*/
type TestXsollaConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.XsollaConfig

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the test xsolla config params
func (o *TestXsollaConfigParams) WithTimeout(timeout time.Duration) *TestXsollaConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the test xsolla config params
func (o *TestXsollaConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the test xsolla config params
func (o *TestXsollaConfigParams) WithContext(ctx context.Context) *TestXsollaConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the test xsolla config params
func (o *TestXsollaConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the test xsolla config params
func (o *TestXsollaConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the test xsolla config params
func (o *TestXsollaConfigParams) WithHTTPClient(client *http.Client) *TestXsollaConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the test xsolla config params
func (o *TestXsollaConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the test xsolla config params
func (o *TestXsollaConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TestXsollaConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the test xsolla config params
func (o *TestXsollaConfigParams) WithBody(body *platformclientmodels.XsollaConfig) *TestXsollaConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the test xsolla config params
func (o *TestXsollaConfigParams) SetBody(body *platformclientmodels.XsollaConfig) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *TestXsollaConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
