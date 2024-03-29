// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ticket

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

// NewGetTicketDynamicParams creates a new GetTicketDynamicParams object
// with the default values initialized.
func NewGetTicketDynamicParams() *GetTicketDynamicParams {
	var ()
	return &GetTicketDynamicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetTicketDynamicParamsWithTimeout creates a new GetTicketDynamicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetTicketDynamicParamsWithTimeout(timeout time.Duration) *GetTicketDynamicParams {
	var ()
	return &GetTicketDynamicParams{

		timeout: timeout,
	}
}

// NewGetTicketDynamicParamsWithContext creates a new GetTicketDynamicParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetTicketDynamicParamsWithContext(ctx context.Context) *GetTicketDynamicParams {
	var ()
	return &GetTicketDynamicParams{

		Context: ctx,
	}
}

// NewGetTicketDynamicParamsWithHTTPClient creates a new GetTicketDynamicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetTicketDynamicParamsWithHTTPClient(client *http.Client) *GetTicketDynamicParams {
	var ()
	return &GetTicketDynamicParams{
		HTTPClient: client,
	}
}

/*GetTicketDynamicParams contains all the parameters to send to the API endpoint
for the get ticket dynamic operation typically these are written to a http.Request
*/
type GetTicketDynamicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BoothName*/
	BoothName string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get ticket dynamic params
func (o *GetTicketDynamicParams) WithTimeout(timeout time.Duration) *GetTicketDynamicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get ticket dynamic params
func (o *GetTicketDynamicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get ticket dynamic params
func (o *GetTicketDynamicParams) WithContext(ctx context.Context) *GetTicketDynamicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get ticket dynamic params
func (o *GetTicketDynamicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get ticket dynamic params
func (o *GetTicketDynamicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get ticket dynamic params
func (o *GetTicketDynamicParams) WithHTTPClient(client *http.Client) *GetTicketDynamicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get ticket dynamic params
func (o *GetTicketDynamicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get ticket dynamic params
func (o *GetTicketDynamicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetTicketDynamicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBoothName adds the boothName to the get ticket dynamic params
func (o *GetTicketDynamicParams) WithBoothName(boothName string) *GetTicketDynamicParams {
	o.SetBoothName(boothName)
	return o
}

// SetBoothName adds the boothName to the get ticket dynamic params
func (o *GetTicketDynamicParams) SetBoothName(boothName string) {
	o.BoothName = boothName
}

// WithNamespace adds the namespace to the get ticket dynamic params
func (o *GetTicketDynamicParams) WithNamespace(namespace string) *GetTicketDynamicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get ticket dynamic params
func (o *GetTicketDynamicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetTicketDynamicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param boothName
	if err := r.SetPathParam("boothName", o.BoothName); err != nil {
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
