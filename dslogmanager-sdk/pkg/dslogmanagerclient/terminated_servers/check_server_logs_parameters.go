// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package terminated_servers

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

// NewCheckServerLogsParams creates a new CheckServerLogsParams object
// with the default values initialized.
func NewCheckServerLogsParams() *CheckServerLogsParams {
	var ()
	return &CheckServerLogsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCheckServerLogsParamsWithTimeout creates a new CheckServerLogsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCheckServerLogsParamsWithTimeout(timeout time.Duration) *CheckServerLogsParams {
	var ()
	return &CheckServerLogsParams{

		timeout: timeout,
	}
}

// NewCheckServerLogsParamsWithContext creates a new CheckServerLogsParams object
// with the default values initialized, and the ability to set a context for a request
func NewCheckServerLogsParamsWithContext(ctx context.Context) *CheckServerLogsParams {
	var ()
	return &CheckServerLogsParams{

		Context: ctx,
	}
}

// NewCheckServerLogsParamsWithHTTPClient creates a new CheckServerLogsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCheckServerLogsParamsWithHTTPClient(client *http.Client) *CheckServerLogsParams {
	var ()
	return &CheckServerLogsParams{
		HTTPClient: client,
	}
}

/*CheckServerLogsParams contains all the parameters to send to the API endpoint
for the check server logs operation typically these are written to a http.Request
*/
type CheckServerLogsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*PodName
	  name of the DS pod

	*/
	PodName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the check server logs params
func (o *CheckServerLogsParams) WithTimeout(timeout time.Duration) *CheckServerLogsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the check server logs params
func (o *CheckServerLogsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the check server logs params
func (o *CheckServerLogsParams) WithContext(ctx context.Context) *CheckServerLogsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the check server logs params
func (o *CheckServerLogsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the check server logs params
func (o *CheckServerLogsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the check server logs params
func (o *CheckServerLogsParams) WithHTTPClient(client *http.Client) *CheckServerLogsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the check server logs params
func (o *CheckServerLogsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the check server logs params
func (o *CheckServerLogsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CheckServerLogsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the check server logs params
func (o *CheckServerLogsParams) WithNamespace(namespace string) *CheckServerLogsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the check server logs params
func (o *CheckServerLogsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the check server logs params
func (o *CheckServerLogsParams) WithPodName(podName string) *CheckServerLogsParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the check server logs params
func (o *CheckServerLogsParams) SetPodName(podName string) {
	o.PodName = podName
}

// WriteToRequest writes these params to a swagger request
func (o *CheckServerLogsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
