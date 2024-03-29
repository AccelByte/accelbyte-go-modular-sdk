// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package server

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

// NewGetServerSessionParams creates a new GetServerSessionParams object
// with the default values initialized.
func NewGetServerSessionParams() *GetServerSessionParams {
	var ()
	return &GetServerSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetServerSessionParamsWithTimeout creates a new GetServerSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetServerSessionParamsWithTimeout(timeout time.Duration) *GetServerSessionParams {
	var ()
	return &GetServerSessionParams{

		timeout: timeout,
	}
}

// NewGetServerSessionParamsWithContext creates a new GetServerSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetServerSessionParamsWithContext(ctx context.Context) *GetServerSessionParams {
	var ()
	return &GetServerSessionParams{

		Context: ctx,
	}
}

// NewGetServerSessionParamsWithHTTPClient creates a new GetServerSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetServerSessionParamsWithHTTPClient(client *http.Client) *GetServerSessionParams {
	var ()
	return &GetServerSessionParams{
		HTTPClient: client,
	}
}

/*GetServerSessionParams contains all the parameters to send to the API endpoint
for the get server session operation typically these are written to a http.Request
*/
type GetServerSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*PodName
	  DS name

	*/
	PodName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get server session params
func (o *GetServerSessionParams) WithTimeout(timeout time.Duration) *GetServerSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get server session params
func (o *GetServerSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get server session params
func (o *GetServerSessionParams) WithContext(ctx context.Context) *GetServerSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get server session params
func (o *GetServerSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get server session params
func (o *GetServerSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get server session params
func (o *GetServerSessionParams) WithHTTPClient(client *http.Client) *GetServerSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get server session params
func (o *GetServerSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get server session params
func (o *GetServerSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetServerSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get server session params
func (o *GetServerSessionParams) WithNamespace(namespace string) *GetServerSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get server session params
func (o *GetServerSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the get server session params
func (o *GetServerSessionParams) WithPodName(podName string) *GetServerSessionParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the get server session params
func (o *GetServerSessionParams) SetPodName(podName string) {
	o.PodName = podName
}

// WriteToRequest writes these params to a swagger request
func (o *GetServerSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param podName
	if err := r.SetPathParam("podName", o.PodName); err != nil {
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
