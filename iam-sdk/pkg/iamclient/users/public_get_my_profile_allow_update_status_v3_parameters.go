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

// NewPublicGetMyProfileAllowUpdateStatusV3Params creates a new PublicGetMyProfileAllowUpdateStatusV3Params object
// with the default values initialized.
func NewPublicGetMyProfileAllowUpdateStatusV3Params() *PublicGetMyProfileAllowUpdateStatusV3Params {
	var ()
	return &PublicGetMyProfileAllowUpdateStatusV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMyProfileAllowUpdateStatusV3ParamsWithTimeout creates a new PublicGetMyProfileAllowUpdateStatusV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMyProfileAllowUpdateStatusV3ParamsWithTimeout(timeout time.Duration) *PublicGetMyProfileAllowUpdateStatusV3Params {
	var ()
	return &PublicGetMyProfileAllowUpdateStatusV3Params{

		timeout: timeout,
	}
}

// NewPublicGetMyProfileAllowUpdateStatusV3ParamsWithContext creates a new PublicGetMyProfileAllowUpdateStatusV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMyProfileAllowUpdateStatusV3ParamsWithContext(ctx context.Context) *PublicGetMyProfileAllowUpdateStatusV3Params {
	var ()
	return &PublicGetMyProfileAllowUpdateStatusV3Params{

		Context: ctx,
	}
}

// NewPublicGetMyProfileAllowUpdateStatusV3ParamsWithHTTPClient creates a new PublicGetMyProfileAllowUpdateStatusV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMyProfileAllowUpdateStatusV3ParamsWithHTTPClient(client *http.Client) *PublicGetMyProfileAllowUpdateStatusV3Params {
	var ()
	return &PublicGetMyProfileAllowUpdateStatusV3Params{
		HTTPClient: client,
	}
}

/*PublicGetMyProfileAllowUpdateStatusV3Params contains all the parameters to send to the API endpoint
for the public get my profile allow update status v3 operation typically these are written to a http.Request
*/
type PublicGetMyProfileAllowUpdateStatusV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get my profile allow update status v3 params
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) WithTimeout(timeout time.Duration) *PublicGetMyProfileAllowUpdateStatusV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get my profile allow update status v3 params
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get my profile allow update status v3 params
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) WithContext(ctx context.Context) *PublicGetMyProfileAllowUpdateStatusV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get my profile allow update status v3 params
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get my profile allow update status v3 params
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get my profile allow update status v3 params
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) WithHTTPClient(client *http.Client) *PublicGetMyProfileAllowUpdateStatusV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get my profile allow update status v3 params
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get my profile allow update status v3 params
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMyProfileAllowUpdateStatusV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
