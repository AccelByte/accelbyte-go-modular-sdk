// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package base_legal_policies_with_namespace

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

// NewRetrievePolicyCountry1Params creates a new RetrievePolicyCountry1Params object
// with the default values initialized.
func NewRetrievePolicyCountry1Params() *RetrievePolicyCountry1Params {
	var ()
	return &RetrievePolicyCountry1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrievePolicyCountry1ParamsWithTimeout creates a new RetrievePolicyCountry1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrievePolicyCountry1ParamsWithTimeout(timeout time.Duration) *RetrievePolicyCountry1Params {
	var ()
	return &RetrievePolicyCountry1Params{

		timeout: timeout,
	}
}

// NewRetrievePolicyCountry1ParamsWithContext creates a new RetrievePolicyCountry1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrievePolicyCountry1ParamsWithContext(ctx context.Context) *RetrievePolicyCountry1Params {
	var ()
	return &RetrievePolicyCountry1Params{

		Context: ctx,
	}
}

// NewRetrievePolicyCountry1ParamsWithHTTPClient creates a new RetrievePolicyCountry1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrievePolicyCountry1ParamsWithHTTPClient(client *http.Client) *RetrievePolicyCountry1Params {
	var ()
	return &RetrievePolicyCountry1Params{
		HTTPClient: client,
	}
}

/*
RetrievePolicyCountry1Params contains all the parameters to send to the API endpoint
for the retrieve policy country 1 operation typically these are written to a http.Request
*/
type RetrievePolicyCountry1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BasePolicyID
	  BasePolicy Id

	*/
	BasePolicyID string
	/*CountryCode
	  Country Code

	*/
	CountryCode string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) WithTimeout(timeout time.Duration) *RetrievePolicyCountry1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) WithContext(ctx context.Context) *RetrievePolicyCountry1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) WithHTTPClient(client *http.Client) *RetrievePolicyCountry1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrievePolicyCountry1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBasePolicyID adds the basePolicyID to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) WithBasePolicyID(basePolicyID string) *RetrievePolicyCountry1Params {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) SetBasePolicyID(basePolicyID string) {
	o.BasePolicyID = basePolicyID
}

// WithCountryCode adds the countryCode to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) WithCountryCode(countryCode string) *RetrievePolicyCountry1Params {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) WithNamespace(namespace string) *RetrievePolicyCountry1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve policy country 1 params
func (o *RetrievePolicyCountry1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrievePolicyCountry1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param basePolicyId
	if err := r.SetPathParam("basePolicyId", o.BasePolicyID); err != nil {
		return err
	}

	// path param countryCode
	if err := r.SetPathParam("countryCode", o.CountryCode); err != nil {
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
