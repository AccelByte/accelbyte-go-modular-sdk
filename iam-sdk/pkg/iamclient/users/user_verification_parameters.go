// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-modular-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-modular-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewUserVerificationParams creates a new UserVerificationParams object
// with the default values initialized.
func NewUserVerificationParams() *UserVerificationParams {
	var ()
	return &UserVerificationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUserVerificationParamsWithTimeout creates a new UserVerificationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUserVerificationParamsWithTimeout(timeout time.Duration) *UserVerificationParams {
	var ()
	return &UserVerificationParams{

		timeout: timeout,
	}
}

// NewUserVerificationParamsWithContext creates a new UserVerificationParams object
// with the default values initialized, and the ability to set a context for a request
func NewUserVerificationParamsWithContext(ctx context.Context) *UserVerificationParams {
	var ()
	return &UserVerificationParams{

		Context: ctx,
	}
}

// NewUserVerificationParamsWithHTTPClient creates a new UserVerificationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUserVerificationParamsWithHTTPClient(client *http.Client) *UserVerificationParams {
	var ()
	return &UserVerificationParams{
		HTTPClient: client,
	}
}

/*
UserVerificationParams contains all the parameters to send to the API endpoint
for the user verification operation typically these are written to a http.Request
*/
type UserVerificationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserVerificationRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the user verification params
func (o *UserVerificationParams) WithTimeout(timeout time.Duration) *UserVerificationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the user verification params
func (o *UserVerificationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the user verification params
func (o *UserVerificationParams) WithContext(ctx context.Context) *UserVerificationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the user verification params
func (o *UserVerificationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the user verification params
func (o *UserVerificationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the user verification params
func (o *UserVerificationParams) WithHTTPClient(client *http.Client) *UserVerificationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the user verification params
func (o *UserVerificationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the user verification params
func (o *UserVerificationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the user verification params
func (o *UserVerificationParams) WithBody(body *iamclientmodels.ModelUserVerificationRequest) *UserVerificationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the user verification params
func (o *UserVerificationParams) SetBody(body *iamclientmodels.ModelUserVerificationRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the user verification params
func (o *UserVerificationParams) WithNamespace(namespace string) *UserVerificationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the user verification params
func (o *UserVerificationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the user verification params
func (o *UserVerificationParams) WithUserID(userID string) *UserVerificationParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the user verification params
func (o *UserVerificationParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UserVerificationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
