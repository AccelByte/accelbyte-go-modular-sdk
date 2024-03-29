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
)

// NewGetRewardByCodeParams creates a new GetRewardByCodeParams object
// with the default values initialized.
func NewGetRewardByCodeParams() *GetRewardByCodeParams {
	var ()
	return &GetRewardByCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRewardByCodeParamsWithTimeout creates a new GetRewardByCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRewardByCodeParamsWithTimeout(timeout time.Duration) *GetRewardByCodeParams {
	var ()
	return &GetRewardByCodeParams{

		timeout: timeout,
	}
}

// NewGetRewardByCodeParamsWithContext creates a new GetRewardByCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRewardByCodeParamsWithContext(ctx context.Context) *GetRewardByCodeParams {
	var ()
	return &GetRewardByCodeParams{

		Context: ctx,
	}
}

// NewGetRewardByCodeParamsWithHTTPClient creates a new GetRewardByCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRewardByCodeParamsWithHTTPClient(client *http.Client) *GetRewardByCodeParams {
	var ()
	return &GetRewardByCodeParams{
		HTTPClient: client,
	}
}

/*GetRewardByCodeParams contains all the parameters to send to the API endpoint
for the get reward by code operation typically these are written to a http.Request
*/
type GetRewardByCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*RewardCode*/
	RewardCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get reward by code params
func (o *GetRewardByCodeParams) WithTimeout(timeout time.Duration) *GetRewardByCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get reward by code params
func (o *GetRewardByCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get reward by code params
func (o *GetRewardByCodeParams) WithContext(ctx context.Context) *GetRewardByCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get reward by code params
func (o *GetRewardByCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get reward by code params
func (o *GetRewardByCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get reward by code params
func (o *GetRewardByCodeParams) WithHTTPClient(client *http.Client) *GetRewardByCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get reward by code params
func (o *GetRewardByCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get reward by code params
func (o *GetRewardByCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetRewardByCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get reward by code params
func (o *GetRewardByCodeParams) WithNamespace(namespace string) *GetRewardByCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get reward by code params
func (o *GetRewardByCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRewardCode adds the rewardCode to the get reward by code params
func (o *GetRewardByCodeParams) WithRewardCode(rewardCode string) *GetRewardByCodeParams {
	o.SetRewardCode(rewardCode)
	return o
}

// SetRewardCode adds the rewardCode to the get reward by code params
func (o *GetRewardByCodeParams) SetRewardCode(rewardCode string) {
	o.RewardCode = rewardCode
}

// WriteToRequest writes these params to a swagger request
func (o *GetRewardByCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param rewardCode
	qrRewardCode := o.RewardCode
	qRewardCode := qrRewardCode
	if qRewardCode != "" {
		if err := r.SetQueryParam("rewardCode", qRewardCode); err != nil {
			return err
		}
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
