// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

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

// NewUpdateRewardParams creates a new UpdateRewardParams object
// with the default values initialized.
func NewUpdateRewardParams() *UpdateRewardParams {
	var ()
	return &UpdateRewardParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateRewardParamsWithTimeout creates a new UpdateRewardParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateRewardParamsWithTimeout(timeout time.Duration) *UpdateRewardParams {
	var ()
	return &UpdateRewardParams{

		timeout: timeout,
	}
}

// NewUpdateRewardParamsWithContext creates a new UpdateRewardParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateRewardParamsWithContext(ctx context.Context) *UpdateRewardParams {
	var ()
	return &UpdateRewardParams{

		Context: ctx,
	}
}

// NewUpdateRewardParamsWithHTTPClient creates a new UpdateRewardParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateRewardParamsWithHTTPClient(client *http.Client) *UpdateRewardParams {
	var ()
	return &UpdateRewardParams{
		HTTPClient: client,
	}
}

/*UpdateRewardParams contains all the parameters to send to the API endpoint
for the update reward operation typically these are written to a http.Request
*/
type UpdateRewardParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.RewardUpdate
	/*Code*/
	Code string
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

// WithTimeout adds the timeout to the update reward params
func (o *UpdateRewardParams) WithTimeout(timeout time.Duration) *UpdateRewardParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update reward params
func (o *UpdateRewardParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update reward params
func (o *UpdateRewardParams) WithContext(ctx context.Context) *UpdateRewardParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update reward params
func (o *UpdateRewardParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update reward params
func (o *UpdateRewardParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update reward params
func (o *UpdateRewardParams) WithHTTPClient(client *http.Client) *UpdateRewardParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update reward params
func (o *UpdateRewardParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update reward params
func (o *UpdateRewardParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateRewardParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update reward params
func (o *UpdateRewardParams) WithBody(body *seasonpassclientmodels.RewardUpdate) *UpdateRewardParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update reward params
func (o *UpdateRewardParams) SetBody(body *seasonpassclientmodels.RewardUpdate) {
	o.Body = body
}

// WithCode adds the code to the update reward params
func (o *UpdateRewardParams) WithCode(code string) *UpdateRewardParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the update reward params
func (o *UpdateRewardParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the update reward params
func (o *UpdateRewardParams) WithNamespace(namespace string) *UpdateRewardParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update reward params
func (o *UpdateRewardParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the update reward params
func (o *UpdateRewardParams) WithSeasonID(seasonID string) *UpdateRewardParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the update reward params
func (o *UpdateRewardParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateRewardParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param code
	if err := r.SetPathParam("code", o.Code); err != nil {
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
