// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package input_validations

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

// NewPublicGetInputValidationByFieldParams creates a new PublicGetInputValidationByFieldParams object
// with the default values initialized.
func NewPublicGetInputValidationByFieldParams() *PublicGetInputValidationByFieldParams {
	var ()
	return &PublicGetInputValidationByFieldParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetInputValidationByFieldParamsWithTimeout creates a new PublicGetInputValidationByFieldParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetInputValidationByFieldParamsWithTimeout(timeout time.Duration) *PublicGetInputValidationByFieldParams {
	var ()
	return &PublicGetInputValidationByFieldParams{

		timeout: timeout,
	}
}

// NewPublicGetInputValidationByFieldParamsWithContext creates a new PublicGetInputValidationByFieldParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetInputValidationByFieldParamsWithContext(ctx context.Context) *PublicGetInputValidationByFieldParams {
	var ()
	return &PublicGetInputValidationByFieldParams{

		Context: ctx,
	}
}

// NewPublicGetInputValidationByFieldParamsWithHTTPClient creates a new PublicGetInputValidationByFieldParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetInputValidationByFieldParamsWithHTTPClient(client *http.Client) *PublicGetInputValidationByFieldParams {
	var ()
	return &PublicGetInputValidationByFieldParams{
		HTTPClient: client,
	}
}

/*PublicGetInputValidationByFieldParams contains all the parameters to send to the API endpoint
for the public get input validation by field operation typically these are written to a http.Request
*/
type PublicGetInputValidationByFieldParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Field
	  Name of the input validation field to get: email, username, displayName, password or avatar

	*/
	Field string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) WithTimeout(timeout time.Duration) *PublicGetInputValidationByFieldParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) WithContext(ctx context.Context) *PublicGetInputValidationByFieldParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) WithHTTPClient(client *http.Client) *PublicGetInputValidationByFieldParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetInputValidationByFieldParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithField adds the field to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) WithField(field string) *PublicGetInputValidationByFieldParams {
	o.SetField(field)
	return o
}

// SetField adds the field to the public get input validation by field params
func (o *PublicGetInputValidationByFieldParams) SetField(field string) {
	o.Field = field
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetInputValidationByFieldParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param field
	if err := r.SetPathParam("field", o.Field); err != nil {
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
