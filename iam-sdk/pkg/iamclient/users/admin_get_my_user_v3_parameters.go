// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

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

// NewAdminGetMyUserV3Params creates a new AdminGetMyUserV3Params object
// with the default values initialized.
func NewAdminGetMyUserV3Params() *AdminGetMyUserV3Params {
	var ()
	return &AdminGetMyUserV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetMyUserV3ParamsWithTimeout creates a new AdminGetMyUserV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetMyUserV3ParamsWithTimeout(timeout time.Duration) *AdminGetMyUserV3Params {
	var ()
	return &AdminGetMyUserV3Params{

		timeout: timeout,
	}
}

// NewAdminGetMyUserV3ParamsWithContext creates a new AdminGetMyUserV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetMyUserV3ParamsWithContext(ctx context.Context) *AdminGetMyUserV3Params {
	var ()
	return &AdminGetMyUserV3Params{

		Context: ctx,
	}
}

// NewAdminGetMyUserV3ParamsWithHTTPClient creates a new AdminGetMyUserV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetMyUserV3ParamsWithHTTPClient(client *http.Client) *AdminGetMyUserV3Params {
	var ()
	return &AdminGetMyUserV3Params{
		HTTPClient: client,
	}
}

/*AdminGetMyUserV3Params contains all the parameters to send to the API endpoint
for the admin get my user v3 operation typically these are written to a http.Request
*/
type AdminGetMyUserV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get my user v3 params
func (o *AdminGetMyUserV3Params) WithTimeout(timeout time.Duration) *AdminGetMyUserV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get my user v3 params
func (o *AdminGetMyUserV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get my user v3 params
func (o *AdminGetMyUserV3Params) WithContext(ctx context.Context) *AdminGetMyUserV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get my user v3 params
func (o *AdminGetMyUserV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get my user v3 params
func (o *AdminGetMyUserV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get my user v3 params
func (o *AdminGetMyUserV3Params) WithHTTPClient(client *http.Client) *AdminGetMyUserV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get my user v3 params
func (o *AdminGetMyUserV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get my user v3 params
func (o *AdminGetMyUserV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetMyUserV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetMyUserV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
