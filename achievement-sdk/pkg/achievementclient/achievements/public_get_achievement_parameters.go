// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievements

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

// NewPublicGetAchievementParams creates a new PublicGetAchievementParams object
// with the default values initialized.
func NewPublicGetAchievementParams() *PublicGetAchievementParams {
	var ()
	return &PublicGetAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetAchievementParamsWithTimeout creates a new PublicGetAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetAchievementParamsWithTimeout(timeout time.Duration) *PublicGetAchievementParams {
	var ()
	return &PublicGetAchievementParams{

		timeout: timeout,
	}
}

// NewPublicGetAchievementParamsWithContext creates a new PublicGetAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetAchievementParamsWithContext(ctx context.Context) *PublicGetAchievementParams {
	var ()
	return &PublicGetAchievementParams{

		Context: ctx,
	}
}

// NewPublicGetAchievementParamsWithHTTPClient creates a new PublicGetAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetAchievementParamsWithHTTPClient(client *http.Client) *PublicGetAchievementParams {
	var ()
	return &PublicGetAchievementParams{
		HTTPClient: client,
	}
}

/*PublicGetAchievementParams contains all the parameters to send to the API endpoint
for the public get achievement operation typically these are written to a http.Request
*/
type PublicGetAchievementParams struct {

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
	/*Language
	  language, if the selected language not exist in achievement,it use default language

	*/
	Language string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get achievement params
func (o *PublicGetAchievementParams) WithTimeout(timeout time.Duration) *PublicGetAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get achievement params
func (o *PublicGetAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get achievement params
func (o *PublicGetAchievementParams) WithContext(ctx context.Context) *PublicGetAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get achievement params
func (o *PublicGetAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get achievement params
func (o *PublicGetAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get achievement params
func (o *PublicGetAchievementParams) WithHTTPClient(client *http.Client) *PublicGetAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get achievement params
func (o *PublicGetAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get achievement params
func (o *PublicGetAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAchievementCode adds the achievementCode to the public get achievement params
func (o *PublicGetAchievementParams) WithAchievementCode(achievementCode string) *PublicGetAchievementParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the public get achievement params
func (o *PublicGetAchievementParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the public get achievement params
func (o *PublicGetAchievementParams) WithNamespace(namespace string) *PublicGetAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get achievement params
func (o *PublicGetAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLanguage adds the language to the public get achievement params
func (o *PublicGetAchievementParams) WithLanguage(language string) *PublicGetAchievementParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get achievement params
func (o *PublicGetAchievementParams) SetLanguage(language string) {
	o.Language = language
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param language
	qrLanguage := o.Language
	qLanguage := qrLanguage
	if qLanguage != "" {
		if err := r.SetQueryParam("language", qLanguage); err != nil {
			return err
		}
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
