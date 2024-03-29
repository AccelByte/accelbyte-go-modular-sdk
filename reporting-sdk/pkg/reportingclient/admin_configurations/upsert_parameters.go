// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin_configurations

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// NewUpsertParams creates a new UpsertParams object
// with the default values initialized.
func NewUpsertParams() *UpsertParams {
	var ()
	return &UpsertParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpsertParamsWithTimeout creates a new UpsertParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpsertParamsWithTimeout(timeout time.Duration) *UpsertParams {
	var ()
	return &UpsertParams{

		timeout: timeout,
	}
}

// NewUpsertParamsWithContext creates a new UpsertParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpsertParamsWithContext(ctx context.Context) *UpsertParams {
	var ()
	return &UpsertParams{

		Context: ctx,
	}
}

// NewUpsertParamsWithHTTPClient creates a new UpsertParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpsertParamsWithHTTPClient(client *http.Client) *UpsertParams {
	var ()
	return &UpsertParams{
		HTTPClient: client,
	}
}

/*UpsertParams contains all the parameters to send to the API endpoint
for the upsert operation typically these are written to a http.Request
*/
type UpsertParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiReportingLimit
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the upsert params
func (o *UpsertParams) WithTimeout(timeout time.Duration) *UpsertParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the upsert params
func (o *UpsertParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the upsert params
func (o *UpsertParams) WithContext(ctx context.Context) *UpsertParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the upsert params
func (o *UpsertParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the upsert params
func (o *UpsertParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the upsert params
func (o *UpsertParams) WithHTTPClient(client *http.Client) *UpsertParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the upsert params
func (o *UpsertParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the upsert params
func (o *UpsertParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpsertParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the upsert params
func (o *UpsertParams) WithBody(body *reportingclientmodels.RestapiReportingLimit) *UpsertParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the upsert params
func (o *UpsertParams) SetBody(body *reportingclientmodels.RestapiReportingLimit) {
	o.Body = body
}

// WithNamespace adds the namespace to the upsert params
func (o *UpsertParams) WithNamespace(namespace string) *UpsertParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the upsert params
func (o *UpsertParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpsertParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
