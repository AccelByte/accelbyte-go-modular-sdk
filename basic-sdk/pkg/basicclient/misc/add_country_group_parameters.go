// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package misc

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewAddCountryGroupParams creates a new AddCountryGroupParams object
// with the default values initialized.
func NewAddCountryGroupParams() *AddCountryGroupParams {
	var ()
	return &AddCountryGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddCountryGroupParamsWithTimeout creates a new AddCountryGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddCountryGroupParamsWithTimeout(timeout time.Duration) *AddCountryGroupParams {
	var ()
	return &AddCountryGroupParams{

		timeout: timeout,
	}
}

// NewAddCountryGroupParamsWithContext creates a new AddCountryGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddCountryGroupParamsWithContext(ctx context.Context) *AddCountryGroupParams {
	var ()
	return &AddCountryGroupParams{

		Context: ctx,
	}
}

// NewAddCountryGroupParamsWithHTTPClient creates a new AddCountryGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddCountryGroupParamsWithHTTPClient(client *http.Client) *AddCountryGroupParams {
	var ()
	return &AddCountryGroupParams{
		HTTPClient: client,
	}
}

/*AddCountryGroupParams contains all the parameters to send to the API endpoint
for the add country group operation typically these are written to a http.Request
*/
type AddCountryGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.AddCountryGroupRequest
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the add country group params
func (o *AddCountryGroupParams) WithTimeout(timeout time.Duration) *AddCountryGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add country group params
func (o *AddCountryGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add country group params
func (o *AddCountryGroupParams) WithContext(ctx context.Context) *AddCountryGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add country group params
func (o *AddCountryGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add country group params
func (o *AddCountryGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add country group params
func (o *AddCountryGroupParams) WithHTTPClient(client *http.Client) *AddCountryGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add country group params
func (o *AddCountryGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add country group params
func (o *AddCountryGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddCountryGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the add country group params
func (o *AddCountryGroupParams) WithBody(body *basicclientmodels.AddCountryGroupRequest) *AddCountryGroupParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the add country group params
func (o *AddCountryGroupParams) SetBody(body *basicclientmodels.AddCountryGroupRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the add country group params
func (o *AddCountryGroupParams) WithNamespace(namespace string) *AddCountryGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the add country group params
func (o *AddCountryGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AddCountryGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
