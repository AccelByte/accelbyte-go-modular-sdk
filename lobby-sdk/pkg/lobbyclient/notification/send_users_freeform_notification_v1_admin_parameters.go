// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package notification

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewSendUsersFreeformNotificationV1AdminParams creates a new SendUsersFreeformNotificationV1AdminParams object
// with the default values initialized.
func NewSendUsersFreeformNotificationV1AdminParams() *SendUsersFreeformNotificationV1AdminParams {
	var ()
	return &SendUsersFreeformNotificationV1AdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSendUsersFreeformNotificationV1AdminParamsWithTimeout creates a new SendUsersFreeformNotificationV1AdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSendUsersFreeformNotificationV1AdminParamsWithTimeout(timeout time.Duration) *SendUsersFreeformNotificationV1AdminParams {
	var ()
	return &SendUsersFreeformNotificationV1AdminParams{

		timeout: timeout,
	}
}

// NewSendUsersFreeformNotificationV1AdminParamsWithContext creates a new SendUsersFreeformNotificationV1AdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewSendUsersFreeformNotificationV1AdminParamsWithContext(ctx context.Context) *SendUsersFreeformNotificationV1AdminParams {
	var ()
	return &SendUsersFreeformNotificationV1AdminParams{

		Context: ctx,
	}
}

// NewSendUsersFreeformNotificationV1AdminParamsWithHTTPClient creates a new SendUsersFreeformNotificationV1AdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSendUsersFreeformNotificationV1AdminParamsWithHTTPClient(client *http.Client) *SendUsersFreeformNotificationV1AdminParams {
	var ()
	return &SendUsersFreeformNotificationV1AdminParams{
		HTTPClient: client,
	}
}

/*
SendUsersFreeformNotificationV1AdminParams contains all the parameters to send to the API endpoint
for the send users freeform notification v1 admin operation typically these are written to a http.Request
*/
type SendUsersFreeformNotificationV1AdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body
	  notification content

	*/
	Body *lobbyclientmodels.ModelFreeFormNotificationRequestV1
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) WithTimeout(timeout time.Duration) *SendUsersFreeformNotificationV1AdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) WithContext(ctx context.Context) *SendUsersFreeformNotificationV1AdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) WithHTTPClient(client *http.Client) *SendUsersFreeformNotificationV1AdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) WithBody(body *lobbyclientmodels.ModelFreeFormNotificationRequestV1) *SendUsersFreeformNotificationV1AdminParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) SetBody(body *lobbyclientmodels.ModelFreeFormNotificationRequestV1) {
	o.Body = body
}

// WithNamespace adds the namespace to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) WithNamespace(namespace string) *SendUsersFreeformNotificationV1AdminParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the send users freeform notification v1 admin params
func (o *SendUsersFreeformNotificationV1AdminParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SendUsersFreeformNotificationV1AdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
