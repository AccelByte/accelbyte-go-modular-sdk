// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package download_server_artifact

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

// NewDownloadServerArtifactsParams creates a new DownloadServerArtifactsParams object
// with the default values initialized.
func NewDownloadServerArtifactsParams() *DownloadServerArtifactsParams {
	var ()
	return &DownloadServerArtifactsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDownloadServerArtifactsParamsWithTimeout creates a new DownloadServerArtifactsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDownloadServerArtifactsParamsWithTimeout(timeout time.Duration) *DownloadServerArtifactsParams {
	var ()
	return &DownloadServerArtifactsParams{

		timeout: timeout,
	}
}

// NewDownloadServerArtifactsParamsWithContext creates a new DownloadServerArtifactsParams object
// with the default values initialized, and the ability to set a context for a request
func NewDownloadServerArtifactsParamsWithContext(ctx context.Context) *DownloadServerArtifactsParams {
	var ()
	return &DownloadServerArtifactsParams{

		Context: ctx,
	}
}

// NewDownloadServerArtifactsParamsWithHTTPClient creates a new DownloadServerArtifactsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDownloadServerArtifactsParamsWithHTTPClient(client *http.Client) *DownloadServerArtifactsParams {
	var ()
	return &DownloadServerArtifactsParams{
		HTTPClient: client,
	}
}

/*DownloadServerArtifactsParams contains all the parameters to send to the API endpoint
for the download server artifacts operation typically these are written to a http.Request
*/
type DownloadServerArtifactsParams struct {

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

// WithTimeout adds the timeout to the download server artifacts params
func (o *DownloadServerArtifactsParams) WithTimeout(timeout time.Duration) *DownloadServerArtifactsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the download server artifacts params
func (o *DownloadServerArtifactsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the download server artifacts params
func (o *DownloadServerArtifactsParams) WithContext(ctx context.Context) *DownloadServerArtifactsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the download server artifacts params
func (o *DownloadServerArtifactsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the download server artifacts params
func (o *DownloadServerArtifactsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the download server artifacts params
func (o *DownloadServerArtifactsParams) WithHTTPClient(client *http.Client) *DownloadServerArtifactsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the download server artifacts params
func (o *DownloadServerArtifactsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the download server artifacts params
func (o *DownloadServerArtifactsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DownloadServerArtifactsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the download server artifacts params
func (o *DownloadServerArtifactsParams) WithNamespace(namespace string) *DownloadServerArtifactsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the download server artifacts params
func (o *DownloadServerArtifactsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the download server artifacts params
func (o *DownloadServerArtifactsParams) WithPodName(podName string) *DownloadServerArtifactsParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the download server artifacts params
func (o *DownloadServerArtifactsParams) SetPodName(podName string) {
	o.PodName = podName
}

// WriteToRequest writes these params to a swagger request
func (o *DownloadServerArtifactsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
