// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package player

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewPublicGetBulkPlayerCurrentPlatformParams creates a new PublicGetBulkPlayerCurrentPlatformParams object
// with the default values initialized.
func NewPublicGetBulkPlayerCurrentPlatformParams() *PublicGetBulkPlayerCurrentPlatformParams {
	var ()
	return &PublicGetBulkPlayerCurrentPlatformParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetBulkPlayerCurrentPlatformParamsWithTimeout creates a new PublicGetBulkPlayerCurrentPlatformParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetBulkPlayerCurrentPlatformParamsWithTimeout(timeout time.Duration) *PublicGetBulkPlayerCurrentPlatformParams {
	var ()
	return &PublicGetBulkPlayerCurrentPlatformParams{

		timeout: timeout,
	}
}

// NewPublicGetBulkPlayerCurrentPlatformParamsWithContext creates a new PublicGetBulkPlayerCurrentPlatformParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetBulkPlayerCurrentPlatformParamsWithContext(ctx context.Context) *PublicGetBulkPlayerCurrentPlatformParams {
	var ()
	return &PublicGetBulkPlayerCurrentPlatformParams{

		Context: ctx,
	}
}

// NewPublicGetBulkPlayerCurrentPlatformParamsWithHTTPClient creates a new PublicGetBulkPlayerCurrentPlatformParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetBulkPlayerCurrentPlatformParamsWithHTTPClient(client *http.Client) *PublicGetBulkPlayerCurrentPlatformParams {
	var ()
	return &PublicGetBulkPlayerCurrentPlatformParams{
		HTTPClient: client,
	}
}

/*PublicGetBulkPlayerCurrentPlatformParams contains all the parameters to send to the API endpoint
for the public get bulk player current platform operation typically these are written to a http.Request
*/
type PublicGetBulkPlayerCurrentPlatformParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsPlayersCurrentPlatformRequest
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) WithTimeout(timeout time.Duration) *PublicGetBulkPlayerCurrentPlatformParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) WithContext(ctx context.Context) *PublicGetBulkPlayerCurrentPlatformParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) WithHTTPClient(client *http.Client) *PublicGetBulkPlayerCurrentPlatformParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetBulkPlayerCurrentPlatformParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) WithBody(body *sessionclientmodels.ApimodelsPlayersCurrentPlatformRequest) *PublicGetBulkPlayerCurrentPlatformParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) SetBody(body *sessionclientmodels.ApimodelsPlayersCurrentPlatformRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) WithNamespace(namespace string) *PublicGetBulkPlayerCurrentPlatformParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get bulk player current platform params
func (o *PublicGetBulkPlayerCurrentPlatformParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetBulkPlayerCurrentPlatformParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
