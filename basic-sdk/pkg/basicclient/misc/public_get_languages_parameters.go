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
)

// NewPublicGetLanguagesParams creates a new PublicGetLanguagesParams object
// with the default values initialized.
func NewPublicGetLanguagesParams() *PublicGetLanguagesParams {
	var ()
	return &PublicGetLanguagesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetLanguagesParamsWithTimeout creates a new PublicGetLanguagesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetLanguagesParamsWithTimeout(timeout time.Duration) *PublicGetLanguagesParams {
	var ()
	return &PublicGetLanguagesParams{

		timeout: timeout,
	}
}

// NewPublicGetLanguagesParamsWithContext creates a new PublicGetLanguagesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetLanguagesParamsWithContext(ctx context.Context) *PublicGetLanguagesParams {
	var ()
	return &PublicGetLanguagesParams{

		Context: ctx,
	}
}

// NewPublicGetLanguagesParamsWithHTTPClient creates a new PublicGetLanguagesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetLanguagesParamsWithHTTPClient(client *http.Client) *PublicGetLanguagesParams {
	var ()
	return &PublicGetLanguagesParams{
		HTTPClient: client,
	}
}

/*PublicGetLanguagesParams contains all the parameters to send to the API endpoint
for the public get languages operation typically these are written to a http.Request
*/
type PublicGetLanguagesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the public get languages params
func (o *PublicGetLanguagesParams) WithTimeout(timeout time.Duration) *PublicGetLanguagesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get languages params
func (o *PublicGetLanguagesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get languages params
func (o *PublicGetLanguagesParams) WithContext(ctx context.Context) *PublicGetLanguagesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get languages params
func (o *PublicGetLanguagesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get languages params
func (o *PublicGetLanguagesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get languages params
func (o *PublicGetLanguagesParams) WithHTTPClient(client *http.Client) *PublicGetLanguagesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get languages params
func (o *PublicGetLanguagesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get languages params
func (o *PublicGetLanguagesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetLanguagesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get languages params
func (o *PublicGetLanguagesParams) WithNamespace(namespace string) *PublicGetLanguagesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get languages params
func (o *PublicGetLanguagesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetLanguagesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
