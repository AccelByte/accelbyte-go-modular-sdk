// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package global_achievements

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

// NewResetGlobalAchievementParams creates a new ResetGlobalAchievementParams object
// with the default values initialized.
func NewResetGlobalAchievementParams() *ResetGlobalAchievementParams {
	var ()
	return &ResetGlobalAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewResetGlobalAchievementParamsWithTimeout creates a new ResetGlobalAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewResetGlobalAchievementParamsWithTimeout(timeout time.Duration) *ResetGlobalAchievementParams {
	var ()
	return &ResetGlobalAchievementParams{

		timeout: timeout,
	}
}

// NewResetGlobalAchievementParamsWithContext creates a new ResetGlobalAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewResetGlobalAchievementParamsWithContext(ctx context.Context) *ResetGlobalAchievementParams {
	var ()
	return &ResetGlobalAchievementParams{

		Context: ctx,
	}
}

// NewResetGlobalAchievementParamsWithHTTPClient creates a new ResetGlobalAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewResetGlobalAchievementParamsWithHTTPClient(client *http.Client) *ResetGlobalAchievementParams {
	var ()
	return &ResetGlobalAchievementParams{
		HTTPClient: client,
	}
}

/*ResetGlobalAchievementParams contains all the parameters to send to the API endpoint
for the reset global achievement operation typically these are written to a http.Request
*/
type ResetGlobalAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AchievementCode
	  achievement code

	*/
	AchievementCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the reset global achievement params
func (o *ResetGlobalAchievementParams) WithTimeout(timeout time.Duration) *ResetGlobalAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the reset global achievement params
func (o *ResetGlobalAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the reset global achievement params
func (o *ResetGlobalAchievementParams) WithContext(ctx context.Context) *ResetGlobalAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the reset global achievement params
func (o *ResetGlobalAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the reset global achievement params
func (o *ResetGlobalAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the reset global achievement params
func (o *ResetGlobalAchievementParams) WithHTTPClient(client *http.Client) *ResetGlobalAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the reset global achievement params
func (o *ResetGlobalAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the reset global achievement params
func (o *ResetGlobalAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAchievementCode adds the achievementCode to the reset global achievement params
func (o *ResetGlobalAchievementParams) WithAchievementCode(achievementCode string) *ResetGlobalAchievementParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the reset global achievement params
func (o *ResetGlobalAchievementParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the reset global achievement params
func (o *ResetGlobalAchievementParams) WithNamespace(namespace string) *ResetGlobalAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the reset global achievement params
func (o *ResetGlobalAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ResetGlobalAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param achievementCode
	if err := r.SetPathParam("achievementCode", o.AchievementCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
