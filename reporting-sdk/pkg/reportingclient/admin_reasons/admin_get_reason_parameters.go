// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_reasons

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

// NewAdminGetReasonParams creates a new AdminGetReasonParams object
// with the default values initialized.
func NewAdminGetReasonParams() *AdminGetReasonParams {
	var ()
	return &AdminGetReasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetReasonParamsWithTimeout creates a new AdminGetReasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetReasonParamsWithTimeout(timeout time.Duration) *AdminGetReasonParams {
	var ()
	return &AdminGetReasonParams{

		timeout: timeout,
	}
}

// NewAdminGetReasonParamsWithContext creates a new AdminGetReasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetReasonParamsWithContext(ctx context.Context) *AdminGetReasonParams {
	var ()
	return &AdminGetReasonParams{

		Context: ctx,
	}
}

// NewAdminGetReasonParamsWithHTTPClient creates a new AdminGetReasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetReasonParamsWithHTTPClient(client *http.Client) *AdminGetReasonParams {
	var ()
	return &AdminGetReasonParams{
		HTTPClient: client,
	}
}

/*AdminGetReasonParams contains all the parameters to send to the API endpoint
for the admin get reason operation typically these are written to a http.Request
*/
type AdminGetReasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ReasonID*/
	ReasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get reason params
func (o *AdminGetReasonParams) WithTimeout(timeout time.Duration) *AdminGetReasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get reason params
func (o *AdminGetReasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get reason params
func (o *AdminGetReasonParams) WithContext(ctx context.Context) *AdminGetReasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get reason params
func (o *AdminGetReasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get reason params
func (o *AdminGetReasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get reason params
func (o *AdminGetReasonParams) WithHTTPClient(client *http.Client) *AdminGetReasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get reason params
func (o *AdminGetReasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get reason params
func (o *AdminGetReasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetReasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get reason params
func (o *AdminGetReasonParams) WithNamespace(namespace string) *AdminGetReasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get reason params
func (o *AdminGetReasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithReasonID adds the reasonID to the admin get reason params
func (o *AdminGetReasonParams) WithReasonID(reasonID string) *AdminGetReasonParams {
	o.SetReasonID(reasonID)
	return o
}

// SetReasonID adds the reasonId to the admin get reason params
func (o *AdminGetReasonParams) SetReasonID(reasonID string) {
	o.ReasonID = reasonID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetReasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param reasonId
	if err := r.SetPathParam("reasonId", o.ReasonID); err != nil {
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
