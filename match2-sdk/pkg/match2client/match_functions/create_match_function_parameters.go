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

	"github.com/AccelByte/accelbyte-go-modular-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewCreateMatchFunctionParams creates a new CreateMatchFunctionParams object
// with the default values initialized.
func NewCreateMatchFunctionParams() *CreateMatchFunctionParams {
	var ()
	return &CreateMatchFunctionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateMatchFunctionParamsWithTimeout creates a new CreateMatchFunctionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateMatchFunctionParamsWithTimeout(timeout time.Duration) *CreateMatchFunctionParams {
	var ()
	return &CreateMatchFunctionParams{

		timeout: timeout,
	}
}

// NewCreateMatchFunctionParamsWithContext creates a new CreateMatchFunctionParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateMatchFunctionParamsWithContext(ctx context.Context) *CreateMatchFunctionParams {
	var ()
	return &CreateMatchFunctionParams{

		Context: ctx,
	}
}

// NewCreateMatchFunctionParamsWithHTTPClient creates a new CreateMatchFunctionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateMatchFunctionParamsWithHTTPClient(client *http.Client) *CreateMatchFunctionParams {
	var ()
	return &CreateMatchFunctionParams{
		HTTPClient: client,
	}
}

/*CreateMatchFunctionParams contains all the parameters to send to the API endpoint
for the create match function operation typically these are written to a http.Request
*/
type CreateMatchFunctionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.APIMatchFunctionRequest
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

// WithTimeout adds the timeout to the create match function params
func (o *CreateMatchFunctionParams) WithTimeout(timeout time.Duration) *CreateMatchFunctionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create match function params
func (o *CreateMatchFunctionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create match function params
func (o *CreateMatchFunctionParams) WithContext(ctx context.Context) *CreateMatchFunctionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create match function params
func (o *CreateMatchFunctionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create match function params
func (o *CreateMatchFunctionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create match function params
func (o *CreateMatchFunctionParams) WithHTTPClient(client *http.Client) *CreateMatchFunctionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create match function params
func (o *CreateMatchFunctionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create match function params
func (o *CreateMatchFunctionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateMatchFunctionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create match function params
func (o *CreateMatchFunctionParams) WithBody(body *match2clientmodels.APIMatchFunctionRequest) *CreateMatchFunctionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create match function params
func (o *CreateMatchFunctionParams) SetBody(body *match2clientmodels.APIMatchFunctionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create match function params
func (o *CreateMatchFunctionParams) WithNamespace(namespace string) *CreateMatchFunctionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create match function params
func (o *CreateMatchFunctionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateMatchFunctionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
