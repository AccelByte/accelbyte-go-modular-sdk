// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package topic

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

// NewAdminDeleteTopicParams creates a new AdminDeleteTopicParams object
// with the default values initialized.
func NewAdminDeleteTopicParams() *AdminDeleteTopicParams {
	var ()
	return &AdminDeleteTopicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteTopicParamsWithTimeout creates a new AdminDeleteTopicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteTopicParamsWithTimeout(timeout time.Duration) *AdminDeleteTopicParams {
	var ()
	return &AdminDeleteTopicParams{

		timeout: timeout,
	}
}

// NewAdminDeleteTopicParamsWithContext creates a new AdminDeleteTopicParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteTopicParamsWithContext(ctx context.Context) *AdminDeleteTopicParams {
	var ()
	return &AdminDeleteTopicParams{

		Context: ctx,
	}
}

// NewAdminDeleteTopicParamsWithHTTPClient creates a new AdminDeleteTopicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteTopicParamsWithHTTPClient(client *http.Client) *AdminDeleteTopicParams {
	var ()
	return &AdminDeleteTopicParams{
		HTTPClient: client,
	}
}

/*
AdminDeleteTopicParams contains all the parameters to send to the API endpoint
for the admin delete topic operation typically these are written to a http.Request
*/
type AdminDeleteTopicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID that receive the chat

	*/
	Topic string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete topic params
func (o *AdminDeleteTopicParams) WithTimeout(timeout time.Duration) *AdminDeleteTopicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete topic params
func (o *AdminDeleteTopicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete topic params
func (o *AdminDeleteTopicParams) WithContext(ctx context.Context) *AdminDeleteTopicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete topic params
func (o *AdminDeleteTopicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete topic params
func (o *AdminDeleteTopicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete topic params
func (o *AdminDeleteTopicParams) WithHTTPClient(client *http.Client) *AdminDeleteTopicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete topic params
func (o *AdminDeleteTopicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete topic params
func (o *AdminDeleteTopicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteTopicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin delete topic params
func (o *AdminDeleteTopicParams) WithNamespace(namespace string) *AdminDeleteTopicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete topic params
func (o *AdminDeleteTopicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin delete topic params
func (o *AdminDeleteTopicParams) WithTopic(topic string) *AdminDeleteTopicParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin delete topic params
func (o *AdminDeleteTopicParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteTopicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param topic
	if err := r.SetPathParam("topic", o.Topic); err != nil {
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
