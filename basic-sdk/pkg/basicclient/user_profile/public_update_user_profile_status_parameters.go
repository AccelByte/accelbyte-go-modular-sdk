// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package user_profile

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewPublicUpdateUserProfileStatusParams creates a new PublicUpdateUserProfileStatusParams object
// with the default values initialized.
func NewPublicUpdateUserProfileStatusParams() *PublicUpdateUserProfileStatusParams {
	var ()
	return &PublicUpdateUserProfileStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateUserProfileStatusParamsWithTimeout creates a new PublicUpdateUserProfileStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateUserProfileStatusParamsWithTimeout(timeout time.Duration) *PublicUpdateUserProfileStatusParams {
	var ()
	return &PublicUpdateUserProfileStatusParams{

		timeout: timeout,
	}
}

// NewPublicUpdateUserProfileStatusParamsWithContext creates a new PublicUpdateUserProfileStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateUserProfileStatusParamsWithContext(ctx context.Context) *PublicUpdateUserProfileStatusParams {
	var ()
	return &PublicUpdateUserProfileStatusParams{

		Context: ctx,
	}
}

// NewPublicUpdateUserProfileStatusParamsWithHTTPClient creates a new PublicUpdateUserProfileStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateUserProfileStatusParamsWithHTTPClient(client *http.Client) *PublicUpdateUserProfileStatusParams {
	var ()
	return &PublicUpdateUserProfileStatusParams{
		HTTPClient: client,
	}
}

/*PublicUpdateUserProfileStatusParams contains all the parameters to send to the API endpoint
for the public update user profile status operation typically these are written to a http.Request
*/
type PublicUpdateUserProfileStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserProfileStatusUpdate
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user's id, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) WithTimeout(timeout time.Duration) *PublicUpdateUserProfileStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) WithContext(ctx context.Context) *PublicUpdateUserProfileStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) WithHTTPClient(client *http.Client) *PublicUpdateUserProfileStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) WithBody(body *basicclientmodels.UserProfileStatusUpdate) *PublicUpdateUserProfileStatusParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) SetBody(body *basicclientmodels.UserProfileStatusUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) WithNamespace(namespace string) *PublicUpdateUserProfileStatusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) WithUserID(userID string) *PublicUpdateUserProfileStatusParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update user profile status params
func (o *PublicUpdateUserProfileStatusParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateUserProfileStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
