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

// NewDebugMatchedPaymentProviderConfigParams creates a new DebugMatchedPaymentProviderConfigParams object
// with the default values initialized.
func NewDebugMatchedPaymentProviderConfigParams() *DebugMatchedPaymentProviderConfigParams {
	var (
		namespaceDefault = string("*")
		regionDefault    = string("*")
	)
	return &DebugMatchedPaymentProviderConfigParams{
		Namespace: &namespaceDefault,
		Region:    &regionDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewDebugMatchedPaymentProviderConfigParamsWithTimeout creates a new DebugMatchedPaymentProviderConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDebugMatchedPaymentProviderConfigParamsWithTimeout(timeout time.Duration) *DebugMatchedPaymentProviderConfigParams {
	var (
		namespaceDefault = string("*")
		regionDefault    = string("*")
	)
	return &DebugMatchedPaymentProviderConfigParams{
		Namespace: &namespaceDefault,
		Region:    &regionDefault,

		timeout: timeout,
	}
}

// NewDebugMatchedPaymentProviderConfigParamsWithContext creates a new DebugMatchedPaymentProviderConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDebugMatchedPaymentProviderConfigParamsWithContext(ctx context.Context) *DebugMatchedPaymentProviderConfigParams {
	var (
		namespaceDefault = string("*")
		regionDefault    = string("*")
	)
	return &DebugMatchedPaymentProviderConfigParams{
		Namespace: &namespaceDefault,
		Region:    &regionDefault,

		Context: ctx,
	}
}

// NewDebugMatchedPaymentProviderConfigParamsWithHTTPClient creates a new DebugMatchedPaymentProviderConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDebugMatchedPaymentProviderConfigParamsWithHTTPClient(client *http.Client) *DebugMatchedPaymentProviderConfigParams {
	var (
		namespaceDefault = string("*")
		regionDefault    = string("*")
	)
	return &DebugMatchedPaymentProviderConfigParams{
		Namespace:  &namespaceDefault,
		Region:     &regionDefault,
		HTTPClient: client,
	}
}

/*DebugMatchedPaymentProviderConfigParams contains all the parameters to send to the API endpoint
for the debug matched payment provider config operation typically these are written to a http.Request
*/
type DebugMatchedPaymentProviderConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace *string
	/*Region
	  region

	*/
	Region *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) WithTimeout(timeout time.Duration) *DebugMatchedPaymentProviderConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) WithContext(ctx context.Context) *DebugMatchedPaymentProviderConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) WithHTTPClient(client *http.Client) *DebugMatchedPaymentProviderConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) WithNamespace(namespace *string) *DebugMatchedPaymentProviderConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) SetNamespace(namespace *string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) WithRegion(region *string) *DebugMatchedPaymentProviderConfigParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the debug matched payment provider config params
func (o *DebugMatchedPaymentProviderConfigParams) SetRegion(region *string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *DebugMatchedPaymentProviderConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Namespace != nil {

		// query param namespace
		var qrNamespace string
		if o.Namespace != nil {
			qrNamespace = *o.Namespace
		}
		qNamespace := qrNamespace
		if qNamespace != "" {
			if err := r.SetQueryParam("namespace", qNamespace); err != nil {
				return err
			}
		}

	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

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
