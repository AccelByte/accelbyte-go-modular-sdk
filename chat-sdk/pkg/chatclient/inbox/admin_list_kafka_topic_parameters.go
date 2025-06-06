// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package inbox

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

// NewAdminListKafkaTopicParams creates a new AdminListKafkaTopicParams object
// with the default values initialized.
func NewAdminListKafkaTopicParams() *AdminListKafkaTopicParams {
	var ()
	return &AdminListKafkaTopicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListKafkaTopicParamsWithTimeout creates a new AdminListKafkaTopicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListKafkaTopicParamsWithTimeout(timeout time.Duration) *AdminListKafkaTopicParams {
	var ()
	return &AdminListKafkaTopicParams{

		timeout: timeout,
	}
}

// NewAdminListKafkaTopicParamsWithContext creates a new AdminListKafkaTopicParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListKafkaTopicParamsWithContext(ctx context.Context) *AdminListKafkaTopicParams {
	var ()
	return &AdminListKafkaTopicParams{

		Context: ctx,
	}
}

// NewAdminListKafkaTopicParamsWithHTTPClient creates a new AdminListKafkaTopicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListKafkaTopicParamsWithHTTPClient(client *http.Client) *AdminListKafkaTopicParams {
	var ()
	return &AdminListKafkaTopicParams{
		HTTPClient: client,
	}
}

/*AdminListKafkaTopicParams contains all the parameters to send to the API endpoint
for the admin list kafka topic operation typically these are written to a http.Request
*/
type AdminListKafkaTopicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) WithTimeout(timeout time.Duration) *AdminListKafkaTopicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) WithContext(ctx context.Context) *AdminListKafkaTopicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) WithHTTPClient(client *http.Client) *AdminListKafkaTopicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListKafkaTopicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) WithNamespace(namespace string) *AdminListKafkaTopicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list kafka topic params
func (o *AdminListKafkaTopicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListKafkaTopicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
