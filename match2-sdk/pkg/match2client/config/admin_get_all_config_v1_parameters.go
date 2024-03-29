// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

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

// NewAdminGetAllConfigV1Params creates a new AdminGetAllConfigV1Params object
// with the default values initialized.
func NewAdminGetAllConfigV1Params() *AdminGetAllConfigV1Params {
	var ()
	return &AdminGetAllConfigV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetAllConfigV1ParamsWithTimeout creates a new AdminGetAllConfigV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetAllConfigV1ParamsWithTimeout(timeout time.Duration) *AdminGetAllConfigV1Params {
	var ()
	return &AdminGetAllConfigV1Params{

		timeout: timeout,
	}
}

// NewAdminGetAllConfigV1ParamsWithContext creates a new AdminGetAllConfigV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetAllConfigV1ParamsWithContext(ctx context.Context) *AdminGetAllConfigV1Params {
	var ()
	return &AdminGetAllConfigV1Params{

		Context: ctx,
	}
}

// NewAdminGetAllConfigV1ParamsWithHTTPClient creates a new AdminGetAllConfigV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetAllConfigV1ParamsWithHTTPClient(client *http.Client) *AdminGetAllConfigV1Params {
	var ()
	return &AdminGetAllConfigV1Params{
		HTTPClient: client,
	}
}

/*AdminGetAllConfigV1Params contains all the parameters to send to the API endpoint
for the admin get all config v1 operation typically these are written to a http.Request
*/
type AdminGetAllConfigV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get all config v1 params
func (o *AdminGetAllConfigV1Params) WithTimeout(timeout time.Duration) *AdminGetAllConfigV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get all config v1 params
func (o *AdminGetAllConfigV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get all config v1 params
func (o *AdminGetAllConfigV1Params) WithContext(ctx context.Context) *AdminGetAllConfigV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get all config v1 params
func (o *AdminGetAllConfigV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get all config v1 params
func (o *AdminGetAllConfigV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get all config v1 params
func (o *AdminGetAllConfigV1Params) WithHTTPClient(client *http.Client) *AdminGetAllConfigV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get all config v1 params
func (o *AdminGetAllConfigV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get all config v1 params
func (o *AdminGetAllConfigV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetAllConfigV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetAllConfigV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
