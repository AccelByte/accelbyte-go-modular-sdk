// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// NewCreateSeasonParams creates a new CreateSeasonParams object
// with the default values initialized.
func NewCreateSeasonParams() *CreateSeasonParams {
	var ()
	return &CreateSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateSeasonParamsWithTimeout creates a new CreateSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateSeasonParamsWithTimeout(timeout time.Duration) *CreateSeasonParams {
	var ()
	return &CreateSeasonParams{

		timeout: timeout,
	}
}

// NewCreateSeasonParamsWithContext creates a new CreateSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateSeasonParamsWithContext(ctx context.Context) *CreateSeasonParams {
	var ()
	return &CreateSeasonParams{

		Context: ctx,
	}
}

// NewCreateSeasonParamsWithHTTPClient creates a new CreateSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateSeasonParamsWithHTTPClient(client *http.Client) *CreateSeasonParams {
	var ()
	return &CreateSeasonParams{
		HTTPClient: client,
	}
}

/*
CreateSeasonParams contains all the parameters to send to the API endpoint
for the create season operation typically these are written to a http.Request
*/
type CreateSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.SeasonCreate
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

// WithTimeout adds the timeout to the create season params
func (o *CreateSeasonParams) WithTimeout(timeout time.Duration) *CreateSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create season params
func (o *CreateSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create season params
func (o *CreateSeasonParams) WithContext(ctx context.Context) *CreateSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create season params
func (o *CreateSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create season params
func (o *CreateSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create season params
func (o *CreateSeasonParams) WithHTTPClient(client *http.Client) *CreateSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create season params
func (o *CreateSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create season params
func (o *CreateSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create season params
func (o *CreateSeasonParams) WithBody(body *seasonpassclientmodels.SeasonCreate) *CreateSeasonParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create season params
func (o *CreateSeasonParams) SetBody(body *seasonpassclientmodels.SeasonCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create season params
func (o *CreateSeasonParams) WithNamespace(namespace string) *CreateSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create season params
func (o *CreateSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
