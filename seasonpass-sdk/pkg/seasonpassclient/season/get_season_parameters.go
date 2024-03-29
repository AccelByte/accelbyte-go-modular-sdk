// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package season

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

// NewGetSeasonParams creates a new GetSeasonParams object
// with the default values initialized.
func NewGetSeasonParams() *GetSeasonParams {
	var ()
	return &GetSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSeasonParamsWithTimeout creates a new GetSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSeasonParamsWithTimeout(timeout time.Duration) *GetSeasonParams {
	var ()
	return &GetSeasonParams{

		timeout: timeout,
	}
}

// NewGetSeasonParamsWithContext creates a new GetSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSeasonParamsWithContext(ctx context.Context) *GetSeasonParams {
	var ()
	return &GetSeasonParams{

		Context: ctx,
	}
}

// NewGetSeasonParamsWithHTTPClient creates a new GetSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSeasonParamsWithHTTPClient(client *http.Client) *GetSeasonParams {
	var ()
	return &GetSeasonParams{
		HTTPClient: client,
	}
}

/*GetSeasonParams contains all the parameters to send to the API endpoint
for the get season operation typically these are written to a http.Request
*/
type GetSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get season params
func (o *GetSeasonParams) WithTimeout(timeout time.Duration) *GetSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get season params
func (o *GetSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get season params
func (o *GetSeasonParams) WithContext(ctx context.Context) *GetSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get season params
func (o *GetSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get season params
func (o *GetSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get season params
func (o *GetSeasonParams) WithHTTPClient(client *http.Client) *GetSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get season params
func (o *GetSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get season params
func (o *GetSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get season params
func (o *GetSeasonParams) WithNamespace(namespace string) *GetSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get season params
func (o *GetSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the get season params
func (o *GetSeasonParams) WithSeasonID(seasonID string) *GetSeasonParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the get season params
func (o *GetSeasonParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *GetSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
