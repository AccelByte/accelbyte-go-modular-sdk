// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package notification_subscription

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

// NewGetNotificationSubscriberListV2Params creates a new GetNotificationSubscriberListV2Params object
// with the default values initialized.
func NewGetNotificationSubscriberListV2Params() *GetNotificationSubscriberListV2Params {
	var ()
	return &GetNotificationSubscriberListV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetNotificationSubscriberListV2ParamsWithTimeout creates a new GetNotificationSubscriberListV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetNotificationSubscriberListV2ParamsWithTimeout(timeout time.Duration) *GetNotificationSubscriberListV2Params {
	var ()
	return &GetNotificationSubscriberListV2Params{

		timeout: timeout,
	}
}

// NewGetNotificationSubscriberListV2ParamsWithContext creates a new GetNotificationSubscriberListV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetNotificationSubscriberListV2ParamsWithContext(ctx context.Context) *GetNotificationSubscriberListV2Params {
	var ()
	return &GetNotificationSubscriberListV2Params{

		Context: ctx,
	}
}

// NewGetNotificationSubscriberListV2ParamsWithHTTPClient creates a new GetNotificationSubscriberListV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetNotificationSubscriberListV2ParamsWithHTTPClient(client *http.Client) *GetNotificationSubscriberListV2Params {
	var ()
	return &GetNotificationSubscriberListV2Params{
		HTTPClient: client,
	}
}

/*GetNotificationSubscriberListV2Params contains all the parameters to send to the API endpoint
for the get notification subscriber list v2 operation typically these are written to a http.Request
*/
type GetNotificationSubscriberListV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Namespace

	*/
	Namespace string
	/*NotificationType
	  Notification Type

	*/
	NotificationType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) WithTimeout(timeout time.Duration) *GetNotificationSubscriberListV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) WithContext(ctx context.Context) *GetNotificationSubscriberListV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) WithHTTPClient(client *http.Client) *GetNotificationSubscriberListV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetNotificationSubscriberListV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) WithApp(app string) *GetNotificationSubscriberListV2Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) WithNamespace(namespace string) *GetNotificationSubscriberListV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithNotificationType adds the notificationType to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) WithNotificationType(notificationType string) *GetNotificationSubscriberListV2Params {
	o.SetNotificationType(notificationType)
	return o
}

// SetNotificationType adds the notificationType to the get notification subscriber list v2 params
func (o *GetNotificationSubscriberListV2Params) SetNotificationType(notificationType string) {
	o.NotificationType = notificationType
}

// WriteToRequest writes these params to a swagger request
func (o *GetNotificationSubscriberListV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param notificationType
	qrNotificationType := o.NotificationType
	qNotificationType := qrNotificationType
	if qNotificationType != "" {
		if err := r.SetQueryParam("notificationType", qNotificationType); err != nil {
			return err
		}
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
