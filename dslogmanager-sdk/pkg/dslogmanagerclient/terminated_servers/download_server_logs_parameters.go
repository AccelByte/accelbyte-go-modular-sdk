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

// NewDownloadServerLogsParams creates a new DownloadServerLogsParams object
// with the default values initialized.
func NewDownloadServerLogsParams() *DownloadServerLogsParams {
	var ()
	return &DownloadServerLogsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDownloadServerLogsParamsWithTimeout creates a new DownloadServerLogsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDownloadServerLogsParamsWithTimeout(timeout time.Duration) *DownloadServerLogsParams {
	var ()
	return &DownloadServerLogsParams{

		timeout: timeout,
	}
}

// NewDownloadServerLogsParamsWithContext creates a new DownloadServerLogsParams object
// with the default values initialized, and the ability to set a context for a request
func NewDownloadServerLogsParamsWithContext(ctx context.Context) *DownloadServerLogsParams {
	var ()
	return &DownloadServerLogsParams{

		Context: ctx,
	}
}

// NewDownloadServerLogsParamsWithHTTPClient creates a new DownloadServerLogsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDownloadServerLogsParamsWithHTTPClient(client *http.Client) *DownloadServerLogsParams {
	var ()
	return &DownloadServerLogsParams{
		HTTPClient: client,
	}
}

/*
DownloadServerLogsParams contains all the parameters to send to the API endpoint
for the download server logs operation typically these are written to a http.Request
*/
type DownloadServerLogsParams struct {

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

// WithTimeout adds the timeout to the download server logs params
func (o *DownloadServerLogsParams) WithTimeout(timeout time.Duration) *DownloadServerLogsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the download server logs params
func (o *DownloadServerLogsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the download server logs params
func (o *DownloadServerLogsParams) WithContext(ctx context.Context) *DownloadServerLogsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the download server logs params
func (o *DownloadServerLogsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the download server logs params
func (o *DownloadServerLogsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the download server logs params
func (o *DownloadServerLogsParams) WithHTTPClient(client *http.Client) *DownloadServerLogsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the download server logs params
func (o *DownloadServerLogsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the download server logs params
func (o *DownloadServerLogsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DownloadServerLogsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the download server logs params
func (o *DownloadServerLogsParams) WithNamespace(namespace string) *DownloadServerLogsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the download server logs params
func (o *DownloadServerLogsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the download server logs params
func (o *DownloadServerLogsParams) WithPodName(podName string) *DownloadServerLogsParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the download server logs params
func (o *DownloadServerLogsParams) SetPodName(podName string) {
	o.PodName = podName
}

// WriteToRequest writes these params to a swagger request
func (o *DownloadServerLogsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
