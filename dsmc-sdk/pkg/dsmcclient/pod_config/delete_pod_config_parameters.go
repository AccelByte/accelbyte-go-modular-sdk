// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package pod_config

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

// NewDeletePodConfigParams creates a new DeletePodConfigParams object
// with the default values initialized.
func NewDeletePodConfigParams() *DeletePodConfigParams {
	var ()
	return &DeletePodConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePodConfigParamsWithTimeout creates a new DeletePodConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePodConfigParamsWithTimeout(timeout time.Duration) *DeletePodConfigParams {
	var ()
	return &DeletePodConfigParams{

		timeout: timeout,
	}
}

// NewDeletePodConfigParamsWithContext creates a new DeletePodConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePodConfigParamsWithContext(ctx context.Context) *DeletePodConfigParams {
	var ()
	return &DeletePodConfigParams{

		Context: ctx,
	}
}

// NewDeletePodConfigParamsWithHTTPClient creates a new DeletePodConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePodConfigParamsWithHTTPClient(client *http.Client) *DeletePodConfigParams {
	var ()
	return &DeletePodConfigParams{
		HTTPClient: client,
	}
}

/*
DeletePodConfigParams contains all the parameters to send to the API endpoint
for the delete pod config operation typically these are written to a http.Request
*/
type DeletePodConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Name
	  pod name

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

// WithTimeout adds the timeout to the delete pod config params
func (o *DeletePodConfigParams) WithTimeout(timeout time.Duration) *DeletePodConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete pod config params
func (o *DeletePodConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete pod config params
func (o *DeletePodConfigParams) WithContext(ctx context.Context) *DeletePodConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete pod config params
func (o *DeletePodConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete pod config params
func (o *DeletePodConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete pod config params
func (o *DeletePodConfigParams) WithHTTPClient(client *http.Client) *DeletePodConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete pod config params
func (o *DeletePodConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete pod config params
func (o *DeletePodConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeletePodConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithName adds the name to the delete pod config params
func (o *DeletePodConfigParams) WithName(name string) *DeletePodConfigParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the delete pod config params
func (o *DeletePodConfigParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the delete pod config params
func (o *DeletePodConfigParams) WithNamespace(namespace string) *DeletePodConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete pod config params
func (o *DeletePodConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePodConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
