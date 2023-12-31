// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

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

// NewAdminAnonymizeUserAchievementParams creates a new AdminAnonymizeUserAchievementParams object
// with the default values initialized.
func NewAdminAnonymizeUserAchievementParams() *AdminAnonymizeUserAchievementParams {
	var ()
	return &AdminAnonymizeUserAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAnonymizeUserAchievementParamsWithTimeout creates a new AdminAnonymizeUserAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAnonymizeUserAchievementParamsWithTimeout(timeout time.Duration) *AdminAnonymizeUserAchievementParams {
	var ()
	return &AdminAnonymizeUserAchievementParams{

		timeout: timeout,
	}
}

// NewAdminAnonymizeUserAchievementParamsWithContext creates a new AdminAnonymizeUserAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAnonymizeUserAchievementParamsWithContext(ctx context.Context) *AdminAnonymizeUserAchievementParams {
	var ()
	return &AdminAnonymizeUserAchievementParams{

		Context: ctx,
	}
}

// NewAdminAnonymizeUserAchievementParamsWithHTTPClient creates a new AdminAnonymizeUserAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAnonymizeUserAchievementParamsWithHTTPClient(client *http.Client) *AdminAnonymizeUserAchievementParams {
	var ()
	return &AdminAnonymizeUserAchievementParams{
		HTTPClient: client,
	}
}

/*AdminAnonymizeUserAchievementParams contains all the parameters to send to the API endpoint
for the admin anonymize user achievement operation typically these are written to a http.Request
*/
type AdminAnonymizeUserAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) WithTimeout(timeout time.Duration) *AdminAnonymizeUserAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) WithContext(ctx context.Context) *AdminAnonymizeUserAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) WithHTTPClient(client *http.Client) *AdminAnonymizeUserAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) WithNamespace(namespace string) *AdminAnonymizeUserAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) WithUserID(userID string) *AdminAnonymizeUserAchievementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin anonymize user achievement params
func (o *AdminAnonymizeUserAchievementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAnonymizeUserAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
