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

	"github.com/AccelByte/accelbyte-go-modular-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewAdminUpdateTopicParams creates a new AdminUpdateTopicParams object
// with the default values initialized.
func NewAdminUpdateTopicParams() *AdminUpdateTopicParams {
	var ()
	return &AdminUpdateTopicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateTopicParamsWithTimeout creates a new AdminUpdateTopicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateTopicParamsWithTimeout(timeout time.Duration) *AdminUpdateTopicParams {
	var ()
	return &AdminUpdateTopicParams{

		timeout: timeout,
	}
}

// NewAdminUpdateTopicParamsWithContext creates a new AdminUpdateTopicParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateTopicParamsWithContext(ctx context.Context) *AdminUpdateTopicParams {
	var ()
	return &AdminUpdateTopicParams{

		Context: ctx,
	}
}

// NewAdminUpdateTopicParamsWithHTTPClient creates a new AdminUpdateTopicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateTopicParamsWithHTTPClient(client *http.Client) *AdminUpdateTopicParams {
	var ()
	return &AdminUpdateTopicParams{
		HTTPClient: client,
	}
}

/*AdminUpdateTopicParams contains all the parameters to send to the API endpoint
for the admin update topic operation typically these are written to a http.Request
*/
type AdminUpdateTopicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.APIUpdateTopicParams
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

// WithTimeout adds the timeout to the admin update topic params
func (o *AdminUpdateTopicParams) WithTimeout(timeout time.Duration) *AdminUpdateTopicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update topic params
func (o *AdminUpdateTopicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update topic params
func (o *AdminUpdateTopicParams) WithContext(ctx context.Context) *AdminUpdateTopicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update topic params
func (o *AdminUpdateTopicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update topic params
func (o *AdminUpdateTopicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update topic params
func (o *AdminUpdateTopicParams) WithHTTPClient(client *http.Client) *AdminUpdateTopicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update topic params
func (o *AdminUpdateTopicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update topic params
func (o *AdminUpdateTopicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateTopicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update topic params
func (o *AdminUpdateTopicParams) WithBody(body *chatclientmodels.APIUpdateTopicParams) *AdminUpdateTopicParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update topic params
func (o *AdminUpdateTopicParams) SetBody(body *chatclientmodels.APIUpdateTopicParams) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update topic params
func (o *AdminUpdateTopicParams) WithNamespace(namespace string) *AdminUpdateTopicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update topic params
func (o *AdminUpdateTopicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin update topic params
func (o *AdminUpdateTopicParams) WithTopic(topic string) *AdminUpdateTopicParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin update topic params
func (o *AdminUpdateTopicParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateTopicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
