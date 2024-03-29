// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gametelemetry_operations

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
)

// NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams creates a new ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams object
// with the default values initialized.
func NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams() *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams {
	var ()
	return &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParamsWithTimeout creates a new ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParamsWithTimeout(timeout time.Duration) *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams {
	var ()
	return &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{

		timeout: timeout,
	}
}

// NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParamsWithContext creates a new ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams object
// with the default values initialized, and the ability to set a context for a request
func NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParamsWithContext(ctx context.Context) *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams {
	var ()
	return &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{

		Context: ctx,
	}
}

// NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParamsWithHTTPClient creates a new ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParamsWithHTTPClient(client *http.Client) *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams {
	var ()
	return &ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams{
		HTTPClient: client,
	}
}

/*ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams contains all the parameters to send to the API endpoint
for the protected save events game telemetry v1 protected events post operation typically these are written to a http.Request
*/
type ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*gametelemetryclientmodels.TelemetryBody
	/*Cookie*/
	Cookie *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) WithTimeout(timeout time.Duration) *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) WithContext(ctx context.Context) *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) WithHTTPClient(client *http.Client) *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) WithBody(body []*gametelemetryclientmodels.TelemetryBody) *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) SetBody(body []*gametelemetryclientmodels.TelemetryBody) {
	o.Body = body
}

// WithCookie adds the cookie to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) WithCookie(cookie *string) *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams {
	o.SetCookie(cookie)
	return o
}

// SetCookie adds the cookie to the protected save events game telemetry v1 protected events post params
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) SetCookie(cookie *string) {
	o.Cookie = cookie
}

// WriteToRequest writes these params to a swagger request
func (o *ProtectedSaveEventsGameTelemetryV1ProtectedEventsPostParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Cookie != nil {

		// header param Cookie
		if err := r.SetHeaderParam("Cookie", *o.Cookie); err != nil {
			return err
		}

	}

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
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
