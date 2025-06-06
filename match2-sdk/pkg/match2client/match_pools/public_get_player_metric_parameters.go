// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match_pools

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

// NewPublicGetPlayerMetricParams creates a new PublicGetPlayerMetricParams object
// with the default values initialized.
func NewPublicGetPlayerMetricParams() *PublicGetPlayerMetricParams {
	var ()
	return &PublicGetPlayerMetricParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetPlayerMetricParamsWithTimeout creates a new PublicGetPlayerMetricParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetPlayerMetricParamsWithTimeout(timeout time.Duration) *PublicGetPlayerMetricParams {
	var ()
	return &PublicGetPlayerMetricParams{

		timeout: timeout,
	}
}

// NewPublicGetPlayerMetricParamsWithContext creates a new PublicGetPlayerMetricParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetPlayerMetricParamsWithContext(ctx context.Context) *PublicGetPlayerMetricParams {
	var ()
	return &PublicGetPlayerMetricParams{

		Context: ctx,
	}
}

// NewPublicGetPlayerMetricParamsWithHTTPClient creates a new PublicGetPlayerMetricParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetPlayerMetricParamsWithHTTPClient(client *http.Client) *PublicGetPlayerMetricParams {
	var ()
	return &PublicGetPlayerMetricParams{
		HTTPClient: client,
	}
}

/*PublicGetPlayerMetricParams contains all the parameters to send to the API endpoint
for the public get player metric operation typically these are written to a http.Request
*/
type PublicGetPlayerMetricParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Pool
	  Name of the match pool

	*/
	Pool string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get player metric params
func (o *PublicGetPlayerMetricParams) WithTimeout(timeout time.Duration) *PublicGetPlayerMetricParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get player metric params
func (o *PublicGetPlayerMetricParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get player metric params
func (o *PublicGetPlayerMetricParams) WithContext(ctx context.Context) *PublicGetPlayerMetricParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get player metric params
func (o *PublicGetPlayerMetricParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get player metric params
func (o *PublicGetPlayerMetricParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get player metric params
func (o *PublicGetPlayerMetricParams) WithHTTPClient(client *http.Client) *PublicGetPlayerMetricParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get player metric params
func (o *PublicGetPlayerMetricParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get player metric params
func (o *PublicGetPlayerMetricParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetPlayerMetricParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get player metric params
func (o *PublicGetPlayerMetricParams) WithNamespace(namespace string) *PublicGetPlayerMetricParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get player metric params
func (o *PublicGetPlayerMetricParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPool adds the pool to the public get player metric params
func (o *PublicGetPlayerMetricParams) WithPool(pool string) *PublicGetPlayerMetricParams {
	o.SetPool(pool)
	return o
}

// SetPool adds the pool to the public get player metric params
func (o *PublicGetPlayerMetricParams) SetPool(pool string) {
	o.Pool = pool
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetPlayerMetricParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param pool
	if err := r.SetPathParam("pool", o.Pool); err != nil {
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
