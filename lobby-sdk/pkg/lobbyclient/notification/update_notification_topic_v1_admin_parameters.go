// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewUpdateNotificationTopicV1AdminParams creates a new UpdateNotificationTopicV1AdminParams object
// with the default values initialized.
func NewUpdateNotificationTopicV1AdminParams() *UpdateNotificationTopicV1AdminParams {
	var ()
	return &UpdateNotificationTopicV1AdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateNotificationTopicV1AdminParamsWithTimeout creates a new UpdateNotificationTopicV1AdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateNotificationTopicV1AdminParamsWithTimeout(timeout time.Duration) *UpdateNotificationTopicV1AdminParams {
	var ()
	return &UpdateNotificationTopicV1AdminParams{

		timeout: timeout,
	}
}

// NewUpdateNotificationTopicV1AdminParamsWithContext creates a new UpdateNotificationTopicV1AdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateNotificationTopicV1AdminParamsWithContext(ctx context.Context) *UpdateNotificationTopicV1AdminParams {
	var ()
	return &UpdateNotificationTopicV1AdminParams{

		Context: ctx,
	}
}

// NewUpdateNotificationTopicV1AdminParamsWithHTTPClient creates a new UpdateNotificationTopicV1AdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateNotificationTopicV1AdminParamsWithHTTPClient(client *http.Client) *UpdateNotificationTopicV1AdminParams {
	var ()
	return &UpdateNotificationTopicV1AdminParams{
		HTTPClient: client,
	}
}

/*UpdateNotificationTopicV1AdminParams contains all the parameters to send to the API endpoint
for the update notification topic v1 admin operation typically these are written to a http.Request
*/
type UpdateNotificationTopicV1AdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelUpdateTopicRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*TopicName
	  topic name

	*/
	TopicName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) WithTimeout(timeout time.Duration) *UpdateNotificationTopicV1AdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) WithContext(ctx context.Context) *UpdateNotificationTopicV1AdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) WithHTTPClient(client *http.Client) *UpdateNotificationTopicV1AdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateNotificationTopicV1AdminParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) WithBody(body *lobbyclientmodels.ModelUpdateTopicRequest) *UpdateNotificationTopicV1AdminParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) SetBody(body *lobbyclientmodels.ModelUpdateTopicRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) WithNamespace(namespace string) *UpdateNotificationTopicV1AdminParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopicName adds the topicName to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) WithTopicName(topicName string) *UpdateNotificationTopicV1AdminParams {
	o.SetTopicName(topicName)
	return o
}

// SetTopicName adds the topicName to the update notification topic v1 admin params
func (o *UpdateNotificationTopicV1AdminParams) SetTopicName(topicName string) {
	o.TopicName = topicName
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateNotificationTopicV1AdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param topicName
	if err := r.SetPathParam("topicName", o.TopicName); err != nil {
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
