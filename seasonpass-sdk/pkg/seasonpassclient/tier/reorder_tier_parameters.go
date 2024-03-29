// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package tier

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// NewReorderTierParams creates a new ReorderTierParams object
// with the default values initialized.
func NewReorderTierParams() *ReorderTierParams {
	var ()
	return &ReorderTierParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewReorderTierParamsWithTimeout creates a new ReorderTierParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewReorderTierParamsWithTimeout(timeout time.Duration) *ReorderTierParams {
	var ()
	return &ReorderTierParams{

		timeout: timeout,
	}
}

// NewReorderTierParamsWithContext creates a new ReorderTierParams object
// with the default values initialized, and the ability to set a context for a request
func NewReorderTierParamsWithContext(ctx context.Context) *ReorderTierParams {
	var ()
	return &ReorderTierParams{

		Context: ctx,
	}
}

// NewReorderTierParamsWithHTTPClient creates a new ReorderTierParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewReorderTierParamsWithHTTPClient(client *http.Client) *ReorderTierParams {
	var ()
	return &ReorderTierParams{
		HTTPClient: client,
	}
}

/*ReorderTierParams contains all the parameters to send to the API endpoint
for the reorder tier operation typically these are written to a http.Request
*/
type ReorderTierParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.TierReorder
	/*ID*/
	ID string
	/*Namespace*/
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

// WithTimeout adds the timeout to the reorder tier params
func (o *ReorderTierParams) WithTimeout(timeout time.Duration) *ReorderTierParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the reorder tier params
func (o *ReorderTierParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the reorder tier params
func (o *ReorderTierParams) WithContext(ctx context.Context) *ReorderTierParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the reorder tier params
func (o *ReorderTierParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the reorder tier params
func (o *ReorderTierParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the reorder tier params
func (o *ReorderTierParams) WithHTTPClient(client *http.Client) *ReorderTierParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the reorder tier params
func (o *ReorderTierParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the reorder tier params
func (o *ReorderTierParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ReorderTierParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the reorder tier params
func (o *ReorderTierParams) WithBody(body *seasonpassclientmodels.TierReorder) *ReorderTierParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the reorder tier params
func (o *ReorderTierParams) SetBody(body *seasonpassclientmodels.TierReorder) {
	o.Body = body
}

// WithID adds the idVar to the reorder tier params
func (o *ReorderTierParams) WithID(idVar string) *ReorderTierParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the reorder tier params
func (o *ReorderTierParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the reorder tier params
func (o *ReorderTierParams) WithNamespace(namespace string) *ReorderTierParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the reorder tier params
func (o *ReorderTierParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the reorder tier params
func (o *ReorderTierParams) WithSeasonID(seasonID string) *ReorderTierParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the reorder tier params
func (o *ReorderTierParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *ReorderTierParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
	}

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
