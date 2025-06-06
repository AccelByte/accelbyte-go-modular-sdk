// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match_functions

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

// NewMatchFunctionGetParams creates a new MatchFunctionGetParams object
// with the default values initialized.
func NewMatchFunctionGetParams() *MatchFunctionGetParams {
	var ()
	return &MatchFunctionGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewMatchFunctionGetParamsWithTimeout creates a new MatchFunctionGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewMatchFunctionGetParamsWithTimeout(timeout time.Duration) *MatchFunctionGetParams {
	var ()
	return &MatchFunctionGetParams{

		timeout: timeout,
	}
}

// NewMatchFunctionGetParamsWithContext creates a new MatchFunctionGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewMatchFunctionGetParamsWithContext(ctx context.Context) *MatchFunctionGetParams {
	var ()
	return &MatchFunctionGetParams{

		Context: ctx,
	}
}

// NewMatchFunctionGetParamsWithHTTPClient creates a new MatchFunctionGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewMatchFunctionGetParamsWithHTTPClient(client *http.Client) *MatchFunctionGetParams {
	var ()
	return &MatchFunctionGetParams{
		HTTPClient: client,
	}
}

/*MatchFunctionGetParams contains all the parameters to send to the API endpoint
for the match function get operation typically these are written to a http.Request
*/
type MatchFunctionGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Name
	  name of the custom match function

	*/
	Name string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the match function get params
func (o *MatchFunctionGetParams) WithTimeout(timeout time.Duration) *MatchFunctionGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the match function get params
func (o *MatchFunctionGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the match function get params
func (o *MatchFunctionGetParams) WithContext(ctx context.Context) *MatchFunctionGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the match function get params
func (o *MatchFunctionGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the match function get params
func (o *MatchFunctionGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the match function get params
func (o *MatchFunctionGetParams) WithHTTPClient(client *http.Client) *MatchFunctionGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the match function get params
func (o *MatchFunctionGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the match function get params
func (o *MatchFunctionGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *MatchFunctionGetParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithName adds the name to the match function get params
func (o *MatchFunctionGetParams) WithName(name string) *MatchFunctionGetParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the match function get params
func (o *MatchFunctionGetParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the match function get params
func (o *MatchFunctionGetParams) WithNamespace(namespace string) *MatchFunctionGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the match function get params
func (o *MatchFunctionGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *MatchFunctionGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
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
