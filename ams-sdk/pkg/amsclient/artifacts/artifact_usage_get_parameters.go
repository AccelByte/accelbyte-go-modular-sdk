// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package artifacts

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

// NewArtifactUsageGetParams creates a new ArtifactUsageGetParams object
// with the default values initialized.
func NewArtifactUsageGetParams() *ArtifactUsageGetParams {
	var ()
	return &ArtifactUsageGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewArtifactUsageGetParamsWithTimeout creates a new ArtifactUsageGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewArtifactUsageGetParamsWithTimeout(timeout time.Duration) *ArtifactUsageGetParams {
	var ()
	return &ArtifactUsageGetParams{

		timeout: timeout,
	}
}

// NewArtifactUsageGetParamsWithContext creates a new ArtifactUsageGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewArtifactUsageGetParamsWithContext(ctx context.Context) *ArtifactUsageGetParams {
	var ()
	return &ArtifactUsageGetParams{

		Context: ctx,
	}
}

// NewArtifactUsageGetParamsWithHTTPClient creates a new ArtifactUsageGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewArtifactUsageGetParamsWithHTTPClient(client *http.Client) *ArtifactUsageGetParams {
	var ()
	return &ArtifactUsageGetParams{
		HTTPClient: client,
	}
}

/*ArtifactUsageGetParams contains all the parameters to send to the API endpoint
for the artifact usage get operation typically these are written to a http.Request
*/
type ArtifactUsageGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the artifact usage get params
func (o *ArtifactUsageGetParams) WithTimeout(timeout time.Duration) *ArtifactUsageGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the artifact usage get params
func (o *ArtifactUsageGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the artifact usage get params
func (o *ArtifactUsageGetParams) WithContext(ctx context.Context) *ArtifactUsageGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the artifact usage get params
func (o *ArtifactUsageGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the artifact usage get params
func (o *ArtifactUsageGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the artifact usage get params
func (o *ArtifactUsageGetParams) WithHTTPClient(client *http.Client) *ArtifactUsageGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the artifact usage get params
func (o *ArtifactUsageGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the artifact usage get params
func (o *ArtifactUsageGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ArtifactUsageGetParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the artifact usage get params
func (o *ArtifactUsageGetParams) WithNamespace(namespace string) *ArtifactUsageGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the artifact usage get params
func (o *ArtifactUsageGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ArtifactUsageGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
