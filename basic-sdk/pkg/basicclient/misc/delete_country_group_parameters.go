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

// NewDeleteCountryGroupParams creates a new DeleteCountryGroupParams object
// with the default values initialized.
func NewDeleteCountryGroupParams() *DeleteCountryGroupParams {
	var ()
	return &DeleteCountryGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteCountryGroupParamsWithTimeout creates a new DeleteCountryGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteCountryGroupParamsWithTimeout(timeout time.Duration) *DeleteCountryGroupParams {
	var ()
	return &DeleteCountryGroupParams{

		timeout: timeout,
	}
}

// NewDeleteCountryGroupParamsWithContext creates a new DeleteCountryGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteCountryGroupParamsWithContext(ctx context.Context) *DeleteCountryGroupParams {
	var ()
	return &DeleteCountryGroupParams{

		Context: ctx,
	}
}

// NewDeleteCountryGroupParamsWithHTTPClient creates a new DeleteCountryGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteCountryGroupParamsWithHTTPClient(client *http.Client) *DeleteCountryGroupParams {
	var ()
	return &DeleteCountryGroupParams{
		HTTPClient: client,
	}
}

/*DeleteCountryGroupParams contains all the parameters to send to the API endpoint
for the delete country group operation typically these are written to a http.Request
*/
type DeleteCountryGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CountryGroupCode
	  groupCode, only accept alphabet and whitespace

	*/
	CountryGroupCode string
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

// WithTimeout adds the timeout to the delete country group params
func (o *DeleteCountryGroupParams) WithTimeout(timeout time.Duration) *DeleteCountryGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete country group params
func (o *DeleteCountryGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete country group params
func (o *DeleteCountryGroupParams) WithContext(ctx context.Context) *DeleteCountryGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete country group params
func (o *DeleteCountryGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete country group params
func (o *DeleteCountryGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete country group params
func (o *DeleteCountryGroupParams) WithHTTPClient(client *http.Client) *DeleteCountryGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete country group params
func (o *DeleteCountryGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete country group params
func (o *DeleteCountryGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteCountryGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCountryGroupCode adds the countryGroupCode to the delete country group params
func (o *DeleteCountryGroupParams) WithCountryGroupCode(countryGroupCode string) *DeleteCountryGroupParams {
	o.SetCountryGroupCode(countryGroupCode)
	return o
}

// SetCountryGroupCode adds the countryGroupCode to the delete country group params
func (o *DeleteCountryGroupParams) SetCountryGroupCode(countryGroupCode string) {
	o.CountryGroupCode = countryGroupCode
}

// WithNamespace adds the namespace to the delete country group params
func (o *DeleteCountryGroupParams) WithNamespace(namespace string) *DeleteCountryGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete country group params
func (o *DeleteCountryGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteCountryGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param countryGroupCode
	if err := r.SetPathParam("countryGroupCode", o.CountryGroupCode); err != nil {
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
