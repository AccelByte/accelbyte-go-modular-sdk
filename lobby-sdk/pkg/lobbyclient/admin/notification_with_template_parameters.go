// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

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

// NewNotificationWithTemplateParams creates a new NotificationWithTemplateParams object
// with the default values initialized.
func NewNotificationWithTemplateParams() *NotificationWithTemplateParams {
	var ()
	return &NotificationWithTemplateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewNotificationWithTemplateParamsWithTimeout creates a new NotificationWithTemplateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewNotificationWithTemplateParamsWithTimeout(timeout time.Duration) *NotificationWithTemplateParams {
	var ()
	return &NotificationWithTemplateParams{

		timeout: timeout,
	}
}

// NewNotificationWithTemplateParamsWithContext creates a new NotificationWithTemplateParams object
// with the default values initialized, and the ability to set a context for a request
func NewNotificationWithTemplateParamsWithContext(ctx context.Context) *NotificationWithTemplateParams {
	var ()
	return &NotificationWithTemplateParams{

		Context: ctx,
	}
}

// NewNotificationWithTemplateParamsWithHTTPClient creates a new NotificationWithTemplateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewNotificationWithTemplateParamsWithHTTPClient(client *http.Client) *NotificationWithTemplateParams {
	var ()
	return &NotificationWithTemplateParams{
		HTTPClient: client,
	}
}

/*NotificationWithTemplateParams contains all the parameters to send to the API endpoint
for the notification with template operation typically these are written to a http.Request
*/
type NotificationWithTemplateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelNotificationWithTemplateRequest
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

// WithTimeout adds the timeout to the notification with template params
func (o *NotificationWithTemplateParams) WithTimeout(timeout time.Duration) *NotificationWithTemplateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the notification with template params
func (o *NotificationWithTemplateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the notification with template params
func (o *NotificationWithTemplateParams) WithContext(ctx context.Context) *NotificationWithTemplateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the notification with template params
func (o *NotificationWithTemplateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the notification with template params
func (o *NotificationWithTemplateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the notification with template params
func (o *NotificationWithTemplateParams) WithHTTPClient(client *http.Client) *NotificationWithTemplateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the notification with template params
func (o *NotificationWithTemplateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the notification with template params
func (o *NotificationWithTemplateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *NotificationWithTemplateParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the notification with template params
func (o *NotificationWithTemplateParams) WithBody(body *lobbyclientmodels.ModelNotificationWithTemplateRequest) *NotificationWithTemplateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the notification with template params
func (o *NotificationWithTemplateParams) SetBody(body *lobbyclientmodels.ModelNotificationWithTemplateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the notification with template params
func (o *NotificationWithTemplateParams) WithNamespace(namespace string) *NotificationWithTemplateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the notification with template params
func (o *NotificationWithTemplateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *NotificationWithTemplateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
