// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package reward

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
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

/*
UpdateRewardParams contains all the parameters to send to the API endpoint
for the update reward operation typically these are written to a http.Request
*/
type UpdateRewardParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.RewardUpdate
	/*Namespace*/
	Namespace string
	/*RewardID*/
	RewardID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
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

// WithBody adds the body to the update reward params
func (o *UpdateRewardParams) WithBody(body *platformclientmodels.RewardUpdate) *UpdateRewardParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update reward params
func (o *UpdateRewardParams) SetBody(body *platformclientmodels.RewardUpdate) {
	o.Body = body
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

// WithRewardID adds the rewardID to the update reward params
func (o *UpdateRewardParams) WithRewardID(rewardID string) *UpdateRewardParams {
	o.SetRewardID(rewardID)
	return o
}

// SetRewardID adds the rewardId to the update reward params
func (o *UpdateRewardParams) SetRewardID(rewardID string) {
	o.RewardID = rewardID
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

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param rewardId
	if err := r.SetPathParam("rewardId", o.RewardID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
