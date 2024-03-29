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

// NewCreateTopicParams creates a new CreateTopicParams object
// with the default values initialized.
func NewCreateTopicParams() *CreateTopicParams {
	var ()
	return &CreateTopicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateTopicParamsWithTimeout creates a new CreateTopicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateTopicParamsWithTimeout(timeout time.Duration) *CreateTopicParams {
	var ()
	return &CreateTopicParams{

		timeout: timeout,
	}
}

// NewCreateTopicParamsWithContext creates a new CreateTopicParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateTopicParamsWithContext(ctx context.Context) *CreateTopicParams {
	var ()
	return &CreateTopicParams{

		Context: ctx,
	}
}

// NewCreateTopicParamsWithHTTPClient creates a new CreateTopicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateTopicParamsWithHTTPClient(client *http.Client) *CreateTopicParams {
	var ()
	return &CreateTopicParams{
		HTTPClient: client,
	}
}

/*CreateTopicParams contains all the parameters to send to the API endpoint
for the create topic operation typically these are written to a http.Request
*/
type CreateTopicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelCreateTopicRequest
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

// WithTimeout adds the timeout to the create topic params
func (o *CreateTopicParams) WithTimeout(timeout time.Duration) *CreateTopicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create topic params
func (o *CreateTopicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create topic params
func (o *CreateTopicParams) WithContext(ctx context.Context) *CreateTopicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create topic params
func (o *CreateTopicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create topic params
func (o *CreateTopicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create topic params
func (o *CreateTopicParams) WithHTTPClient(client *http.Client) *CreateTopicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create topic params
func (o *CreateTopicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create topic params
func (o *CreateTopicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateTopicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create topic params
func (o *CreateTopicParams) WithBody(body *lobbyclientmodels.ModelCreateTopicRequest) *CreateTopicParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create topic params
func (o *CreateTopicParams) SetBody(body *lobbyclientmodels.ModelCreateTopicRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create topic params
func (o *CreateTopicParams) WithNamespace(namespace string) *CreateTopicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create topic params
func (o *CreateTopicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateTopicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
